# node & browser ハイブリット
buster = @buster || {}
if typeof module == "object" && typeof require == "function"
	buster = require "buster"
	
buster.spec.expose()
describe "Study RSpec like testing", ->

	beforeAll ->
		#buster.log "beforeAll"

	#beforeEach === before
	before ->
		#buster.log "before"
		@foo = Study.foo()
		@hoge1 = Study.hoge()
		@hoge2 = Study.hoge()

	afterAll ->
		#buster.log "afterAll"

	#afterEach === aft
	after ->
		#buster.log "after"

	it "foo() is bar", ->
		expect(Study.foo()).toEqual("bar")

	it "hoge() return same Object", ->
		expect(Study.hoge()).toBe(Study.hoge())

	describe "サブディスクライブ:", ->
		it "foo は bar", ->
			expect(this.foo).toEqual("bar")
			
		it "hoge1 と hoge2 は同じオブジェクト", ->
			expect(this.hoge1).toBe(this.hoge2)

	it "// //で始まるテストは無視", ->
		expect(true).toBe(false)

