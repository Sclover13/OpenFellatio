package compat;

import haxe.extern.EitherType;
import haxe.Constraints.Function;

private typedef RegExpImpl = #if js js.lib.RegExp #elseif flash flash.utils.RegExp #else EReg #end;

@:forward(lastIndex)
abstract RegExp(RegExpImpl) {
	public inline function new(pattern, options = "") {
		this = new RegExpImpl(pattern, options);
	}

	public inline function exec(s:String) /*infer the type from `return`*/ {
#if js || flash
		return this.exec(s);
#else
		return this.match(s);
#end
    }

    public inline function test(s:String):Bool {
#if js || flash
		return this.test(s);
#else
		return this.match(s);
#end
	}

	public inline function match(s:String):Array<String> {
		#if flash
		return (cast s).match(this);
		#else
		var match = (cast s).match(this);
		return if (match == null) [] else match;
		#end
	}

	public inline function search(s:String):Int {
		return (cast s).search(this);
	}

	// TODO: have separate function for String and Function values of `by`?
	public inline function replace(s:String, by:EitherType<String,Function>):String {
		return (cast s).replace(this, by);
	}

	public inline function split(s:String):Array<String> {
		return (cast s).split(this);
	}
}
