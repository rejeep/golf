# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  x = $('#slider_photo_x')
  y = $('#slider_photo_y')
  w = $('#slider_photo_w')
  h = $('#slider_photo_h')

  $('#cropbox img').Jcrop(
    aspectRatio: 3.0
    onSelect: (img) ->
        x.val(img.x)
        y.val(img.y)
        w.val(img.w)
        h.val(img.h)
  )