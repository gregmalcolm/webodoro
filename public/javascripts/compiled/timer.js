(function() {
  window.Timer = (function() {
    function Timer(elapsed_secs) {
      this.elapsed_secs = elapsed_secs != null ? elapsed_secs : 0;
    }
    Timer.prototype.value = function() {
      return this.elapsed_secs;
    };
    Timer.prototype.text = function() {
      var d;
      d = new Date(this.elapsed_secs * 1000);
      return d.format("MM:ss");
    };
    return Timer;
  })();
}).call(this);
