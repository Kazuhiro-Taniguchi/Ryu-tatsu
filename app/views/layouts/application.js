/*
  Spectral by HTML5 UP
  html5up.net | @ajlkn
  Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/
    // Menu.
    function($) {
      $('#nav').on('click', function(){
          $('#menu').css('display: block;');
      });
      $('#menu')
        .append('<a href="#menu" class="close"></a>')
        .appendTo($body)
        .panel({
          delay: 500,
          hideOnClick: true,
          hideOnSwipe: true,
          resetScroll: true,
          resetForms: true,
          side: 'right',
          target: $body,
          visibleClass: 'is-menu-visible'
        });
      }
