window.HALBTON_DATA = {
  meta: {
    demo: true,
    brand: "HALBTON",
    descriptor: "Hair & Colour Studio",
    city: "Freudenstadt",
    region: "Nordschwarzwald",
    bookingUrl: "#booking",
    phone: "+49 000 000000",
    email: "hello@halbton-demo.de",
    note: "Demo-Website – Marke, Personen und Inhalte sind fiktiv."
  },

  services: [
    {
      id: "cut",
      number: "01",
      title: "Schnitt & Styling",
      price: "ab 54 €",
      short: "Form, Fall und Alltag zuerst – nicht nur der Moment direkt nach dem Föhnen.",
      image: "public/assets/images/03-cut.jpg"
    },
    {
      id: "colour",
      number: "02",
      title: "Farbe & Balayage",
      price: "ab 96 €",
      short: "Ton, Kontrast und Pflege werden auf Ausgangsbasis und Tragegewohnheiten abgestimmt.",
      image: "public/assets/images/02-colour.jpg"
    },
    {
      id: "care",
      number: "03",
      title: "Pflege & Gloss",
      price: "ab 29 €",
      short: "Glanz, Pigmentausgleich und Strukturpflege als eigenständiger Termin oder Ergänzung.",
      image: "public/assets/images/05-wash.jpg"
    },
    {
      id: "finish",
      number: "04",
      title: "Styling & Brows",
      price: "ab 24 €",
      short: "Für Termine, Events oder einfach dann, wenn das Finish genauer sitzen soll.",
      image: "public/assets/images/06-finish.jpg"
    }
  ],

  team: [
    {
      name: "Mara",
      role: "Colour / Balayage",
      focus: "weiche Übergänge · Blondkorrekturen · Gloss",
      demo: true
    },
    {
      name: "Noah",
      role: "Cut / Texture",
      focus: "Kurzhaar · Bewegung · natürliche Falllinien",
      demo: true
    },
    {
      name: "Leonie",
      role: "Styling / Brows",
      focus: "Finish · Event Styling · Brow Shape",
      demo: true
    }
  ],

  prices: [
    { service: "Waschen · Schneiden · Styling", value: "ab 54 €" },
    { service: "Maschinenschnitt / Kontur", value: "ab 32 €" },
    { service: "Ansatzfarbe", value: "ab 68 €" },
    { service: "Gloss / Toner", value: "ab 42 €" },
    { service: "Balayage / Foilwork", value: "ab 145 €" },
    { service: "Intensivpflege", value: "ab 29 €" },
    { service: "Event Styling", value: "ab 59 €" },
    { service: "Brow Shape", value: "ab 24 €" }
  ],

  hours: [
    ["Montag", "geschlossen"],
    ["Dienstag", "09:00 – 18:00"],
    ["Mittwoch", "09:00 – 18:00"],
    ["Donnerstag", "10:00 – 20:00"],
    ["Freitag", "09:00 – 18:00"],
    ["Samstag", "09:00 – 14:00"],
    ["Sonntag", "geschlossen"]
  ],

  booking: {
    title: "Termin anfragen",
    note: "Demo-Interaktion. In einer Kundenversion wird hier Fresha, Phorest oder das vorhandene Buchungssystem angebunden.",
    options: [
      "Schnitt & Styling",
      "Farbe & Balayage",
      "Pflege & Gloss",
      "Styling & Brows",
      "Beratung Farbe"
    ]
  }
};
