package ;

@:rtti
@:access(swf.exporters.animate)
class Tear extends openfl.display.MovieClip
{
	public function new()
	{
		var library = swf.exporters.animate.AnimateLibrary.get("sdthx-lib");
		var symbol = library.symbols.get(2062);
		symbol.__init(library);

		super();
	}
}
