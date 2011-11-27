jQuery ->
  $('a.fancybox').fancybox()

  $('a.youtube_thumbnail').fancybox(
    padding: 0
    autoScale: false
    transitionIn: 'none'
    transitionOut: 'none'
    width: 680
    height: 495
    type: 'swf'
    swf:
      wmode: 'transparent'
      allowfullscreen: true
  )

  $('#video_tag_ids, #photo_tag_ids').tokenInput('/tags', theme: 'facebook')