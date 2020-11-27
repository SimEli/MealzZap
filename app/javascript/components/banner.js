import Typed from 'typed.js';


const loadDynamicBannerText = () => {
  if (document.querySelector('#banner-typed-text')){
  new Typed('#banner-typed-text', {
    strings: ["Welcome to MealzZap !"],
    typeSpeed: 70,
    loop: true
  });
}
}
export { loadDynamicBannerText };
