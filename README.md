# power-of-two

![Lang](https://img.shields.io/badge/language-haxe-orange.svg)](http://haxe.org)
[![Version](https://img.shields.io/badge/version-v0.0.1-green.svg)](https://github.com/eliasku/power-of-two)
[![Dependencies](https://img.shields.io/badge/dependencies-none-green.svg)](https://github.com/eliasku/power-of-two/blob/master/haxelib.json)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](http://opensource.org/licenses/MIT)

[![Build Status]https://travis-ci.org/eliasku/power-of-two.svg?branch=master)](https://travis-ci.org/eliasku/power-of-two)
[![Build Status](https://ci.appveyor.com/api/projects/status/u2tykboeoab0jw6q?svg=true)](https://ci.appveyor.com/project/eliasku/power-of-two)

Power of two math utility for Haxe

- `PowerOfTwo.next(x:Int)` returns next POT value. For example for 16 it will be 32, for 24 it will be also 32
- `PowerOfTwo.check(x:Int)` checks if value is POT (excluding 0)
- `PowerOfTwo.require(x:Int)` returns `x` if POT, else returns the nearest next POT value
