package ;

import hxutil.math.PowerOfTwo;
import utest.Assert;

class PowerOfTwoTest {

	public function new() {}

	public function testCheck() {
		// smoke tests
		Assert.isTrue(PowerOfTwo.check(0x1));
		Assert.isTrue(PowerOfTwo.check(0x2));
		Assert.isTrue(PowerOfTwo.check(0x4));
		Assert.isTrue(PowerOfTwo.check(0x8));
		Assert.isTrue(PowerOfTwo.check(0x10));
		Assert.isTrue(PowerOfTwo.check(0x100));

		Assert.isFalse(PowerOfTwo.check(0xFF));
		Assert.isFalse(PowerOfTwo.check(0xF));
		Assert.isFalse(PowerOfTwo.check(0x3));
	}

	public function testRequire() {
		Assert.equals(0x100, PowerOfTwo.require(0xFF));
	}

	public function testNext() {
		Assert.equals(16, PowerOfTwo.next(10));
		Assert.equals(512, PowerOfTwo.next(256));
	}
}
