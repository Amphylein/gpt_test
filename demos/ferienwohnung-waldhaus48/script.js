(() => {
  const data = window.WALDHAUS48;
  if (!data) return;

  const navToggle = document.querySelector('[data-nav-toggle]');
  const nav = document.querySelector('[data-nav]');

  navToggle?.addEventListener('click', () => {
    const open = navToggle.getAttribute('aria-expanded') === 'true';
    navToggle.setAttribute('aria-expanded', String(!open));
    nav?.classList.toggle('is-open', !open);
  });

  nav?.querySelectorAll('a').forEach((link) => {
    link.addEventListener('click', () => {
      nav.classList.remove('is-open');
      navToggle?.setAttribute('aria-expanded', 'false');
    });
  });

  const apartmentRoot = document.querySelector('[data-apartments]');
  if (apartmentRoot) {
    apartmentRoot.innerHTML = data.apartments.map((apartment) => `
      <article class="apartment reveal" id="apartment-${apartment.id}">
        <figure class="apartment-media">
          <img src="${apartment.image}" alt="Demo-Fotografie für Apartment ${apartment.name}" loading="lazy">
        </figure>
        <div class="apartment-copy">
          <p class="eyebrow">${apartment.eyebrow}</p>
          <h3>${apartment.name}</h3>
          <p class="apartment-title">${apartment.title}</p>
          <p>${apartment.copy}</p>
          <div class="apartment-meta">
            <span>${apartment.size}</span>
            <span>${apartment.bedrooms}</span>
            <span>${apartment.guests} Gäste</span>
            <span>${apartment.feature}</span>
          </div>
        </div>
      </article>
    `).join('');
  }

  const guideRoot = document.querySelector('[data-guide]');
  if (guideRoot) {
    guideRoot.innerHTML = data.guide.map((item) => `
      <article class="day-row reveal">
        <time>${item.time}</time>
        <div>
          <h3>${item.title}</h3>
          <p>${item.copy}</p>
        </div>
      </article>
    `).join('');
  }

  const faqRoot = document.querySelector('[data-faq]');
  if (faqRoot) {
    faqRoot.innerHTML = data.faq.map((item, index) => `
      <article class="faq-item reveal" data-open="false">
        <button class="faq-button" type="button" aria-expanded="false" aria-controls="faq-answer-${index}">
          <span>${item.q}</span>
          <i aria-hidden="true">+</i>
        </button>
        <div class="faq-answer" id="faq-answer-${index}">
          ${item.a}
        </div>
      </article>
    `).join('');

    faqRoot.querySelectorAll('.faq-button').forEach((button) => {
      button.addEventListener('click', () => {
        const item = button.closest('.faq-item');
        const isOpen = item.dataset.open === 'true';
        item.dataset.open = String(!isOpen);
        button.setAttribute('aria-expanded', String(!isOpen));
      });
    });
  }

  const form = document.querySelector('[data-availability-form]');
  const result = document.querySelector('[data-availability-result]');

  if (form && result) {
    const arrival = form.elements.arrival;
    const departure = form.elements.departure;

    const today = new Date();
    today.setHours(0, 0, 0, 0);
    const tomorrow = new Date(today);
    tomorrow.setDate(today.getDate() + 1);
    const iso = (date) => date.toISOString().slice(0, 10);

    arrival.min = iso(today);
    departure.min = iso(tomorrow);

    arrival.addEventListener('change', () => {
      if (!arrival.value) return;
      const minDeparture = new Date(`${arrival.value}T12:00:00`);
      minDeparture.setDate(minDeparture.getDate() + 1);
      departure.min = iso(minDeparture);
      if (departure.value && departure.value <= arrival.value) departure.value = '';
    });

    form.addEventListener('submit', (event) => {
      event.preventDefault();
      const values = new FormData(form);
      const arrivalValue = values.get('arrival');
      const departureValue = values.get('departure');
      const guests = values.get('guests');

      result.hidden = false;
      result.innerHTML = `
        <strong>Demo-Suche:</strong> ${arrivalValue} bis ${departureValue} · ${guests} Gäste.<br>
        Hier würde die produktive Website jetzt Live-Verfügbarkeit und Preise aus dem Buchungssystem laden.
      `;
    });
  }

  const observe = () => {
    const nodes = document.querySelectorAll('.reveal:not(.is-visible)');
    if (!('IntersectionObserver' in window)) {
      nodes.forEach((node) => node.classList.add('is-visible'));
      return;
    }

    const observer = new IntersectionObserver((entries, obs) => {
      entries.forEach((entry) => {
        if (!entry.isIntersecting) return;
        entry.target.classList.add('is-visible');
        obs.unobserve(entry.target);
      });
    }, { threshold: 0.12, rootMargin: '0px 0px -5% 0px' });

    nodes.forEach((node) => observer.observe(node));
  };

  observe();
})();
