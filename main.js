// Smooth Scroll for Anchor Links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
  anchor.addEventListener('click', function (e) {
    const target = document.querySelector(this.getAttribute('href'));
    if (target) {
      e.preventDefault();
      target.scrollIntoView({
        behavior: 'smooth',
        block: 'start'
      });
    }
  });
});

// Mobile Menu Toggle (optional if you add hamburger menu later)
const menuBtn = document.getElementById('menuBtn');
const navMenu = document.getElementById('navMenu');
const menuIcon = document.getElementById('menuIcon');

menuBtn.addEventListener('click', () => {
  navMenu.classList.toggle('active');
  navMenu.classList.toggle('hidden');
  menuIcon.classList.toggle('open');
});

// Close menu on link click (mobile)
navMenu.querySelectorAll('a').forEach(link => {
  link.addEventListener('click', () => {
    navMenu.classList.remove('active');
    navMenu.classList.add('hidden');
    menuIcon.classList.remove('open');
  });
});

// Optional: Scroll Reveal Animation (uncomment if using ScrollReveal.js)

ScrollReveal().reveal('.reveal', {
  distance: '40px',
  duration: 800,
  easing: 'ease-in-out',
  origin: 'bottom',
  reset: false,
  interval: 200
});
// Optional: Google Analytics Event Tracking for WhatsApp Booking
document.querySelectorAll('a[href*="wa.link"]').forEach(link => {

// Optional: WhatsApp booking click tracking (console log)
const bookButtons = document.querySelectorAll('a[href*="wa.link"]');
bookButtons.forEach(btn => {
  btn.addEventListener('click', () => {
    console.log("User clicked WhatsApp booking link");
    // You can integrate Google Analytics event tracking here if needed
  });
});
  link.addEventListener('click', () => {
    console.log("WhatsApp booking link clicked");
    // You can integrate Google Analytics event tracking here if needed
  });
});
