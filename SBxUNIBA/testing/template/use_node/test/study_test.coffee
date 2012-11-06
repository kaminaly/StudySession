# node & browser ハイブリット
buster = @buster || {}
if typeof module == "object" && typeof require == "function"
	buster = require "buster"

buster.testCase "Study xUnit like testing"
	setUp: ->
		#buster.log "setUp"
		@foo = Study.foo()
		@hoge = Study.hoge()
	
	tearDown: ->
		#buster.log "tearDown"
	
	"foo() is bar": ->
		assert.equals Study.foo(), "bar"

	"hoge() is not false": ->
			assert Study.hoge()

	"サブテスト":
		"foo は bar": ->
				assert.equals @foo, "bar"

		"hoge は false ではない": ->
				assert @hoge

	"// //で始まるテストは無視": ->
		assert false

