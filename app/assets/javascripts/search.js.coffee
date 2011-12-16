jQuery ->
  $('#player').autocomplete
    source: $('#search').attr('action')
    select: (event, data) ->
      if id = data.item.id
        window.location = "/users/#{id}"
