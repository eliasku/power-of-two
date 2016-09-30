package ;

import hxmake.haxelib.HaxelibExt;
import hxmake.test.TestTask;
import hxmake.idea.IdeaPlugin;
import hxmake.haxelib.HaxelibPlugin;

using hxmake.haxelib.HaxelibPlugin;

class PowerOfTwoMake extends hxmake.Module {

	function new() {
		config.classPath = ["src"];
		config.testPath = ["test"];
		config.devDependencies = [
			"utest" => "haxelib"
		];

		apply(HaxelibPlugin);
		apply(IdeaPlugin);

		library(
			function(ext:HaxelibExt) {
				ext.config.description = "Power of two math utility for Haxe";
				ext.config.contributors = ["eliasku"];
				ext.config.url = "https://github.com/eliasku/power-of-two";
				ext.config.license = "None";
				ext.config.version = "1.0.0";
				ext.config.releasenote = "Initial release";
				ext.config.tags = ["utility", "math"];

				ext.pack.includes = ["src", "haxelib.json", "README.md"];
			}
		);

		var tt = new TestTask();
		tt.targets = ["neko", "swf", "js", "node", "cpp", "java", "cs", "php"];
		tt.libraries = ["power-of-two"];
		task("test", tt);
	}
}