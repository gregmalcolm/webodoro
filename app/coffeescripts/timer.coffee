class window.Timer
  constructor: (@elapsed_secs = 0) ->

  value: ->
    @elapsed_secs

  text: ->
    d = new Date(@elapsed_secs * 1000)
    d.format("MM:ss") 

  
