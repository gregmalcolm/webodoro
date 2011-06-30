(function() {
  var timer;
  window.Timer = (function() {
    function Timer(elapsed_secs) {
      this.elapsed_secs = elapsed_secs != null ? elapsed_secs : 0;
      this.start_time = null;
    }
    Timer.prototype.value = function() {
      return this.elapsed_secs;
    };
    Timer.prototype.text = function() {
      var d;
      d = new Date(this.elapsed_secs * 1000);
      return d.format("MM:ss");
    };
    Timer.prototype.start = function() {
      return this.start_time = new Date();
    };
    Timer.prototype.update = function() {
      return this.elapsed_secs = 1;
    };
    return Timer;
  })();
  timer = new Timer;
  $("#start_button").click(function() {
    return show - message("bing!");
  });
}).call(this);
