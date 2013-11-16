# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $(".report_reason input").removeAttr("required")
  do update_reason = ->
    if $(".report_greens input:checked").val() == "Summer"
      $(".report_reason").hide()
    else
      $(".report_reason").show()

  $(".report_greens input").on "change", update_reason
