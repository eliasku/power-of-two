package hxutil.math;

@:final
class PowerOfTwo {

	public static function next(x:Int):Int {
		var n:Int = 1;
		while (n <= x) {
			n = n << 1;
		}
		return n;
	}

	public static function check(value:Int):Bool {
		return value != 0 && (value & (value - 1)) == 0;
	}

	public static function require(value:Int):Int {
		return check(value) ? value : next(value);
	}

}