import Typed from 'typed.js'

const loadDynamicBannerText = () => {
  new Typed('#colorhome', {
    strings: ["Welcome to Black Market", "Learn to code"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
