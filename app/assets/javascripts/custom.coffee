$(document).ready ->

  $('.flash').show ->
    flash = $(@)
    setTimeout ->
      flash.slideToggle()
    , 2000