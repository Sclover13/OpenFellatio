package chars.rikku;

@:access(swf.exporters.animate)
class RikkuBang2 extends openfl.display.MovieClip
{
	public function new()
	{
		var library = swf.exporters.animate.AnimateLibrary.get("sdthx-lib");
		var symbol = library.symbols.get(2326);
		symbol.__init(library);

		super();
	}
}
