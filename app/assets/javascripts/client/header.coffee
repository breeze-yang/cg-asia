document.addEventListener "turbolinks:load", ->
  console.log('test')
  $(".navbar-toggler-cg").on 'click', (e) ->
    $(".navbar-cg").removeClass("home-nav-scroll");
    expanded = $(this).attr('aria-expanded');
    if (expanded == "true")
      $(this).html('MENU');
    else
      $(this).html('CLOSE');
