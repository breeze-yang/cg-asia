document.addEventListener "turbolinks:load", ->
  if $('.video-list').length
    $('.video-list .video-play').bind('click', ->
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
#    $('.video-modal video').bind('click', ->
#      alert('video')
#    )
#    $(document).mousedown( (e)->
#      console.log(e.target)
#      console.log($(e.target).parent(".video-modal"))
#      if($(e.target).parent(".video-modal").length==0)
#        alert('test')
#
#    )