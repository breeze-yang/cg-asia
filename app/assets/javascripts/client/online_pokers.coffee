document.addEventListener "turbolinks:load", ->
  if $('.pagination').length && $('.online_poker-list').length
    $('.footer-cg').addClass('d-none')
    $(window).scroll ->
      url = $('.pagination .next a').attr('href')
      console.log(url)
      if url && $(window).scrollTop() > $(document).height() - $(window).height() - 50
        $('.cg-loading').removeClass("d-none")
        $('.pagination').text("") # 避免下拉多次加载同一页数据
        $.getScript(url)
    $(window).scroll()