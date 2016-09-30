package hxutil.math;

@:final
class PowerOfTwo {

	public static function next(x:Int):Int {
		x |= x >> 1;
		x |= x >> 2;
		x |= x >> 4;
		x |= x >> 8;
		x |= x >> 16;
		return x + 1;
	}

	public static function check(x:Int):Bool {
		return x != 0 && (x & (x - 1)) == 0;
	}

	public static function require(x:Int):Int {
		if(x == 0) {
			return 1;
		}
		--x;
		x |= x >> 1;
		x |= x >> 2;
		x |= x >> 4;
		x |= x >> 8;
		x |= x >> 16;
		return x + 1;
	}

}