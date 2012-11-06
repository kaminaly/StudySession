// Generated by CoffeeScript 1.3.3
(function() {
  var buster;

  buster = this.buster || {};

  if (typeof module === "object" && typeof require === "function") {
    buster = require("buster");
  }

  buster.testCase("Study xUnit like testing", {
    setUp: function() {
      this.foo = Study.foo();
      return this.hoge = Study.hoge();
    },
    tearDown: function() {},
    "foo() is bar": function() {
      return assert.equals(Study.foo(), "bar");
    },
    "hoge() is not false": function() {
      return assert(Study.hoge());
    },
    "サブテスト": {
      "foo は bar": function() {
        return assert.equals(this.foo, "bar");
      },
      "hoge は false ではない": function() {
        return assert(this.hoge);
      }
    },
    "// //で始まるテストは無視": function() {
      return assert(false);
    }
  });

}).call(this);