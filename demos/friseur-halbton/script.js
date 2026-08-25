(() => {
  const root = document.documentElement;
  const menuToggle = document.querySelector('[data-menu-toggle]');
  const nav = document.querySelector('[data-nav]');
  const bookingDialog = document.querySelector('[data-booking-dialog]');
  const bookingOpeners = document.querySelectorAll('[data-open-booking]');
  const bookingCloser = document.querySelector('[data-close-booking]');
  const bookingForm = document.querySelector('[data-booking-form]');
  const formStatus = document.querySelector('[data-form-status]');

  if (menuToggle && nav) {
    menuToggle.addEventListener('click', () => {
      const open = menuToggle.getAttribute('aria-expanded') === 'true';
      menuToggle.setAttribute('aria-expanded', String(!open));
      nav.classList.toggle('is-open', !open);
    });

    nav.querySelectorAll('a').forEach((link) => {
      link.addEventListener('click', () => {
        nav.classList.remove('is-open');
        menuToggle.setAttribute('aria-expanded', 'false');
      });
    });
  }

  const preview = document.querySelector('[data-service-preview]');
  const caption = document.querySelector('[data-service-caption]');
  const serviceRows = document.querySelectorAll('[data-service-image]');

  const activateService = (row) => {
    serviceRows.forEach((item) => {
      const active = item === row;
      item.classList.toggle('is-active', active);
      item.setAttribute('aria-pressed', String(active));
    });

    if (!preview) return;

    const nextSrc = row.dataset.serviceImage;
    const nextCaption = row.dataset.serviceCaption || '';

    preview.style.opacity = '0';
    window.setTimeout(() => {
      preview.src = nextSrc;
      preview.alt = nextCaption;
      if (caption) caption.textContent = nextCaption;
      preview.style.opacity = '1';
    }, 120);
  };

  serviceRows.forEach((row) => {
    row.addEventListener('mouseenter', () => activateService(row));
    row.addEventListener('focus', () => activateService(row));
    row.addEventListener('click', () => activateService(row));
  });

  bookingOpeners.forEach((button) => {
    button.addEventListener('click', () => {
      if (bookingDialog?.showModal) {
        bookingDialog.showModal();
      }
    });
  });

  bookingCloser?.addEventListener('click', () => bookingDialog?.close());

  bookingDialog?.addEventListener('click', (event) => {
    if (event.target === bookingDialog) bookingDialog.close();
  });

  bookingForm?.addEventListener('submit', (event) => {
    event.preventDefault();
    if (formStatus) {
      formStatus.textContent = 'Demo: In der Kundenversion würde die Anfrage jetzt an das Buchungssystem übergeben.';
    }
  });

  const revealItems = document.querySelectorAll('.reveal');
  if ('IntersectionObserver' in window && !window.matchMedia('(prefers-reduced-motion: reduce)').matches) {
    const observer = new IntersectionObserver((entries) => {
      entries.forEach((entry) => {
        if (!entry.isIntersecting) return;
        entry.target.classList.add('is-visible');
        observer.unobserve(entry.target);
      });
    }, { threshold: 0.14, rootMargin: '0px 0px -4% 0px' });

    revealItems.forEach((item) => observer.observe(item));
  } else {
    revealItems.forEach((item) => item.classList.add('is-visible'));
  }

  root.classList.add('js-ready');
})();
