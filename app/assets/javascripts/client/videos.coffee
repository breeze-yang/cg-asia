document.addEventListener "turbolinks:load", ->
  if $('.pagination').length && $('.video-list').length
    $('.footer-cg').addClass('d-none')
    $(window).scroll ->
      url = $('.pagination .next a').attr('href')
      if url && $(window).scrollTop() > $(document).height() - $(window).height() - 50
        $('.videos-loading').removeClass("d-none")
        $('.pagination').text("") # 避免下拉多次加载同一页数据
        $.getScript(url)
    $(window).scroll()
    
  if $('.video-list').length
    $('.video-list').on('click', '.video-play', ->
      $('.videos-modal-over').removeClass('d-none')
      $('.video-modal').removeClass('d-none')
      video_html = "<video controls autoplay src='#{$(this).attr('video_url')}'>
      </video>"
      $('.video-player-container').html(video_html)
    )

    $('.video-modal').bind('click', (e)->
      if (e.target != this)
        return;

      $('.videos-modal-over').addClass('d-none')
      $('.video-modal').addClass('d-none')
      $('.video-player-container').html('')
    )
    $('.video-close').bind('click', (e)->
      $('.videos-modal-over').addClass('d-none')
      $('.video-modal').addClass('d-none')
      $('.video-player-container').html('')
    )
