(function() {
	// node & browser ハイブリット
	var buster = this.buster || {};
	if (typeof module == "object" && typeof require == "function") {
		buster = require("buster");
	}

	buster.testCase("Study xUnit like testing", {
		setUp:function() {
			//buster.log("setUp");
			this.foo = Study.foo();
			this.hoge = Study.hoge();
		},
		tearDown:function() {
			//buster.log("tearDown");
		},
		"foo() is bar": function() {
			assert.equals(Study.foo(), "bar");
		},
		"hoge() is not false": function() {
			assert(Study.hoge());
		},
		"サブテスト": {
			"foo は bar": function() {
				assert.equals(this.foo, "bar");
			},
			"hoge は false ではない": function() {
				assert(this.hoge);
			}
		},
		"// //で始まるテストは無視": function () {
        assert(false);
    }
	});

}).call(this);
