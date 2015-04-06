
(function($) {
  $(window).load(function() {

    // Navigation icon for mobile
    $('.nav-icon').click(function() {
      $('.wrapper').toggleClass('open-nav');
    });

    $('.main-nav a').click(function() {
      $('.wrapper').removeClass('open-nav');
    });
    // -------

    // Height to sections
    $('.main > section').css('min-height', $(window).height());
    // --------

    // Mini slide
    $('.mini-slide > div').hide();
    $('.mini-slide > div:eq(0)').show();
    $('.mini-slide > ul li').click(function() {
      var index = $('.mini-slide > ul li').index($(this));
      $('.mini-slide > ul li').removeClass('active');
      $(this).addClass('active');
      changeSlide(index);
    });
    $('.mini-slide select').change(function () {
      var index = $(this).find('option:selected').index();
      changeSlide(index);
    });

    function changeSlide(index) {
      $('.mini-slide > div').hide();
      $('.mini-slide > div:eq(' + index + ')').fadeIn('slow');
    }
    // -------

    // Performs a smooth page scroll to an anchor on the same page.
    $('a[href*=#]:not([href=#])').click(function() {
      if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
        var target = $(this.hash);
        target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
        if (target.length) {
          $('html,body').animate({
            scrollTop: target.offset().top
          }, 1000);
          return false;
        }
      }
    });
  });

  $(window).resize(function() {
    // Height to sections
    $('.main > section').css('min-height', $(window).height());
    // -------
  });
})(jQuery);
