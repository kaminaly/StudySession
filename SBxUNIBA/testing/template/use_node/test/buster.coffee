config = module.exports

config["config template"] =
	#env: "browser"
	#env: "node"
	rootPath: "../"
	libs: [
		#読み込む順番が重要な場合はパスを書く。二度読み込みはされない。
		#"lib/jquery.js"
		#"lib/**/*.js"
	]
	sources: [
		#"src/**/*.coffee"
		"src/**/*.js"
	]
	tests: [
		#"test/**/*_test.coffee"
		#"spec/**/*_spec.coffee"
		"test/**/*_test.js"
		"spec/**/*_spec.js"
	]
	resources: [
		#モックようのデータ
		#{
		#	//testbed は pathに"/"指定で設定できる。
		#	path:
		#		"/"
		#	//file:
		#		//"index.html"
		#	content:
		#		"<p>hoge</p>"
		#	headers:
		#		"Content-Type" : "text/html"
		#}
		#{
		#	//JSON APIのモック
		#	path: "/res.json"
		#	content: JSON.stringify
		#		text: "テキスト"
		#		id: 0
		#	headers:
		#		"Content-Type": "application/json"
		#}
	]
	#//いつか使えるようになる
	#//testbed: "index.html"
	#//
	#extensions: [
	#	require("buster-coffee")
	#]

