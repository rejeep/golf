# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#photo_tag_list_ids, #video_tag_list_ids').tokenInput '/tags'
    theme: 'facebook'
    prePopulate: $(this).data('pre')