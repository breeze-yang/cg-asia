document.addEventListener "turbolinks:load", ->
#  $(".navbar-cg").addClass("home-nav-scroll");
#  $(window).scroll(function () {
#    if ($(".navbar").offset().top > 50) {
#      $(".navbar-cg").removeClass("home-nav-scroll");
#  } else
#  {
#    $(".navbar-cg").addClass("home-nav-scroll");
#  }
#  })
  $(".navbar-cg").addClass("home-nav-scroll");
  $(window).scroll(->
    if ($(".navbar").offset().top > 50)
      $(".navbar-cg").removeClass("home-nav-scroll");
    else
      $(".navbar-cg").addClass("home-nav-scroll");
  )

  $(".navbar-toggler-cg").on 'click', (e) ->
    $(".navbar-cg").removeClass("home-nav-scroll");
    expanded = $(this).attr('aria-expanded');
    if (expanded == "true")
      $(this).html('MENU');
    else
      $(this).html('CLOSE');
