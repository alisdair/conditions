# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $(".report_reason input, .report_greens input").removeAttr("required")

  do toggle_fields_for_greens = ->
    if $(".report_greens input:checked").val() == "Summer" or $(".report_greens").is(":hidden")
      $(".report_reason").hide()
    else
      $(".report_reason").show()

  do toggle_fields_for_status = ->
    if $(".report_status input:checked").val() == "Closed"
      $(".report_greens").hide()
    else
      $(".report_greens").show()

  $(".report_status input").on "change", ->
    toggle_fields_for_status()
    toggle_fields_for_greens()
  $(".report_greens input").on "change", toggle_fields_for_greens
