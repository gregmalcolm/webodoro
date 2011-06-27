(function() {
  describe('coffeescript integration', function() {
    it('works', function() {
      return expect(1).toBe(1);
    });
    return context('with spec helper', function() {
      return it('also works', function() {
        return expect(2).toBe(2);
      });
    });
  });
}).call(this);
