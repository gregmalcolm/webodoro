class window.Timer
  constructor: (@elapsed_secs = 0) ->
    @start_time = null

  value: ->
    @elapsed_secs

  text: ->
    d = new Date(@elapsed_secs * 1000)
    d.format("MM:ss")

  start: ->
    @start_time = new Date()

  update: ->
    @elapsed_secs = 1;

timer = new Timer

$("#start_button").click -> show-message "bing!"
  #$(this).oneTime(1000, -> 
  #  timer.update()
  #  $("#start_button").value = "00:01"
  #)
