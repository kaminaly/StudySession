buster = @.buster || {}
if typeof module == "object" && typeof require == "function"
	buster = require "buster"


buster.testCase "テスト勉強会 Math",

	"abs()": ->
		assert.equals Math.abs(1), 1
		assert.equals Math.abs(-1), 1
		assert.equals Math.abs(1.1), 1.1
		assert.equals Math.abs(-1.1), 1.1

	"acos()": ->
		assert.equals Math.acos(Math.cos(2.5)), 2.5
		assert.equals Math.acos(Math.cos(0)), 0
		#assert.equals Math.acos(Math.cos(-2.78)), -2.78

	"asin()": ->
		assert.equals Math.asin(Math.sin(1.0)), 1.0
		assert.equals Math.asin(Math.sin(0)), 0
		#assert.equals Math.asin(Math.sin(-2.78)), -2.78

	"atan()": ->
		assert.equals Math.atan(Math.tan(1.5)), 1.5
		assert.equals Math.atan(Math.tan(0)), 0
		assert.near Math.atan(Math.tan(-2.78)), Math.PI-2.78, 0.000000001

	"atan2()": ->
		assert.equals Math.atan2(Math.sin(0), Math.cos(0)), 0
		assert.equals Math.atan2(Math.sin(Math.PI), Math.cos(Math.PI)), Math.PI
		assert.equals Math.atan2(Math.sin(Math.PI * 0.5), Math.cos(Math.PI * 0.5)), Math.PI * 0.5

	"ceil()": ->
		assert.equals Math.ceil(0.5), 1
		assert.equals Math.ceil(-0.5), 0

	"cos()": ->
		assert.equals Math.cos(0), 1
		assert.near Math.cos(Math.PI * 0.5), 0, 0.0000000001
		assert.near Math.cos(Math.PI), -1, 0.0000000001

	"//E": ->
		buster.log Math.E
		buster.log Math.log(2)

	"exp()": ->
		assert.near Math.exp(2), Math.E * Math.E, 0.0000000001
		assert.near Math.exp(4), Math.E * Math.E * Math.E * Math.E, 0.0000000001

	"floor()": ->
		assert.equals Math.floor(1.5), 1
		assert.equals Math.floor(-1.5), -2

	"//LN10, LN2, log(), LOG10E, LOG2E": ->
		

	"max()": ->
		assert.equals Math.max(0, 1), 1
		assert.equals Math.max(0.0001, 0.0002), 0.0002

	"min()": ->
		assert.equals Math.min(0, 1), 0
		assert.equals Math.min(0.0001, 0.0002), 0.0001

	"PI": ->
		assert.near Math.PI, 3.141592, 0.000001

	"pow()": ->
		pow = (num, num2)->
			ans = 1
			for i in [1..num2]
				ans *= num
			ans

		assert.equals Math.pow(2, 10), pow(2, 10)
		assert.equals Math.pow(34, 5), pow(34, 5)

	"random()": ->
		assert.greater Math.random(), -0.00000000000000000000000000001
		assert.isTrue Math.random() >= 0
		assert.less Math.random(), 1

	"round()": ->
		assert.equals Math.round(0.5), 1
		assert.equals Math.round(0.4), 0
		assert.equals Math.round(1.5), (1.5 + 0.5) >> 0
		assert.equals Math.round(1.4), (1.4 + 0.5) >> 0

	"sin()": ->
		assert.equals Math.sin(0), 0
		assert.near Math.sin(Math.PI * 0.5), 1, 0.0000000001
		assert.near Math.sin(Math.PI), 0, 0.0000000001

	"sqrt()": ->
		assert.near Math.sqrt(2), 1.41421356, 0.00000001

	"SQRT1_2": ->
		assert.equals Math.SQRT1_2, Math.sqrt(0.5)

	"SQRT2": ->
		assert.near Math.SQRT2, 1.41421356, 0.00000001
		assert.equals Math.SQRT2, Math.sqrt(2)

	"//tan()": ->

