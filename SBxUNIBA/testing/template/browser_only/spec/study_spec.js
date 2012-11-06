(function() {
	// node & browser ハイブリット
	var buster = this.buster || {};
	if (typeof module == "object" && typeof require == "function") {
		buster = require("buster");
	}
	
	buster.spec.expose();
	describe("Study RSpec like testing", function() {

		beforeAll(function () {
			//buster.log("beforeAll");
		});

		//beforeEach === before
		before(function () {
			//buster.log("before");
			this.foo = Study.foo();
			this.hoge1 = Study.hoge();
			this.hoge2 = Study.hoge();
    });

		afterAll(function () {
			//buster.log("afterAll");
		});

		//afterEach === aft
		after(function () {
			//buster.log("after");
		});		

		it("foo() is bar", function() {
			expect(Study.foo()).toEqual("bar");
		});
		it("hoge() return same Object", function() {
			expect(Study.hoge()).toBe(Study.hoge());
		});

		describe("サブディスクライブ:", function() {
			it("foo は bar", function() {
				expect(this.foo).toEqual("bar");
			});
			it("hoge1 と hoge2 は同じオブジェクト", function() {
				expect(this.hoge1).toBe(this.hoge2);
			});
		});

		it("// //で始まるテストは無視", function() {
			expect(true).toBe(false);
		});
	});

}).call(this);
