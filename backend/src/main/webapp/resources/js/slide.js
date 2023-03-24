const swiper = new Swiper('.swiper-container', {
  autoplay: {
    delay: 2000,
    disableOnInteraction: false,
  },   
  loop: true,       
  spaceBetween: 20, 
  slidesPerView: 5, 
  slidesPerGroup: 1, 
  navigation: { 
    prevEl: '.swiper-prev', 
    nextEl: '.swiper-next' 
  }
})

$('.swiper-container').hover(
  function () {
  swiper.autoplay.stop();
}, function(){
  swiper.autoplay.start();
});