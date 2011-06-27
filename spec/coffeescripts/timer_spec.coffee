describe "Timer", ->
  subject = null
  
  context "starting from 0 secs", ->
    beforeEach -> subject = new Timer

    it "starts with value 0 secs", ->
      expect(subject.value()).toBe(0)

    it "displays the value as 00:00", ->
      expect(subject.text()).toBe('00:00')

  context "starting from 10 mins", ->
    beforeEach -> subject = new Timer(10 * 60)

    it "starts with value 600 secs", ->
      expect(subject.value()).toBe(600)

    it "displays the value as 10:00", ->
      expect(subject.text()).toBe('10:00')
