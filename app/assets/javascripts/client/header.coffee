document.addEventListener "turbolinks:load", ->
  $(".navbar-cg").addClass("home-nav-scroll");
  $(window).scroll(->
    if ($(".navbar").offset().top > 50)
      $(".navbar-cg").removeClass("home-nav-scroll");
    else
      expanded = $('.navbar-toggler-cg').attr('aria-expanded');
      if (expanded == "false")
        $(".navbar-cg").addClass("home-nav-scroll");

    height = $(window).scrollTop();
    if (height > 200)
      $('#back_to_top').fadeIn();
    else
      $('#back_to_top').fadeOut();
  )

  $(".navbar-toggler-cg").on 'click', (e) ->
    $(".navbar-cg").removeClass("home-nav-scroll");
    expanded = $(this).attr('aria-expanded');
    if (expanded == "true")
      $(this).html('MENU');
    else
      $(this).html('CLOSE');

  $("#back_to_top").click((event) ->
    event.preventDefault();
    $("html, body").animate({scrollTop: 0}, "slow");
    return false;
  )

