# power-of-two
Power of two math utility for Haxe

- `PowerOfTwo.next(x:Int)` returns next POT value. For example for 16 it will be 32, for 24 it will be also 32
- `PowerOfTwo.check(x:Int)` checks if value is POT (excluding 0)
- `PowerOfTwo.require(x:Int)` returns `x` if POT, else returns nearest next POT
