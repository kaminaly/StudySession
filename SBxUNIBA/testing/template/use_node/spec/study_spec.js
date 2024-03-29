// Generated by CoffeeScript 1.3.3
(function() {
  var buster;

  buster = this.buster || {};

  if (typeof module === "object" && typeof require === "function") {
    buster = require("buster");
  }

  buster.spec.expose();

  describe("Study RSpec like testing", function() {
    beforeAll(function() {});
    before(function() {
      this.foo = Study.foo();
      this.hoge1 = Study.hoge();
      return this.hoge2 = Study.hoge();
    });
    afterAll(function() {});
    after(function() {});
    it("foo() is bar", function() {
      return expect(Study.foo()).toEqual("bar");
    });
    it("hoge() return same Object", function() {
      return expect(Study.hoge()).toBe(Study.hoge());
    });
    describe("サブディスクライブ:", function() {
      it("foo は bar", function() {
        return expect(this.foo).toEqual("bar");
      });
      return it("hoge1 と hoge2 は同じオブジェクト", function() {
        return expect(this.hoge1).toBe(this.hoge2);
      });
    });
    return it("// //で始まるテストは無視", function() {
      return expect(true).toBe(false);
    });
  });

}).call(this);
