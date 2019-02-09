;(function ($, d, w) {
    
    var app = {
        
        hpNews: function () {
            
            this.slider = function () {
                $('.hp-news .news-slider').slick({
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    autoplay: true,
                    autoplaySpeed: 4000,
                    dots: true,
                    arrows: false,
                    fade: true,
                    dotsClass: 'news-dots'
                });
            }
            this.slider();
        },
        
        init: function () {
            
            //this.hpNews();
        }
    }
    
    $(document).ready(function () {
        app.init();
    });
    
})(jQuery, document, window);