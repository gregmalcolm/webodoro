(function() {
  describe("Timer", function() {
    var subject;
    subject = null;
    context("starting from 0 secs", function() {
      beforeEach(function() {
        return subject = new Timer;
      });
      it("starts with value 0 secs", function() {
        return expect(subject.value()).toBe(0);
      });
      return it("displays the value as 00:00", function() {
        return expect(subject.text()).toBe('00:00');
      });
    });
    return context("starting from 10 mins", function() {
      beforeEach(function() {
        return subject = new Timer(10 * 60);
      });
      it("starts with value 600 secs", function() {
        return expect(subject.value()).toBe(600);
      });
      return it("displays the value as 10:00", function() {
        return expect(subject.text()).toBe('10:00');
      });
    });
  });
}).call(this);
