import Typed from 'typed.js'

const loadDynamicBannerText = () => {
  new Typed('#colorhome', {
    strings: ["Welcome to Black Market", "TAT Incoporated", "Good Luck!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
