package chars.zelda_tp;

@:access(swf.exporters.animate)
class ZeldaTPBang extends openfl.display.MovieClip
{
	public function new()
	{
		var library = swf.exporters.animate.AnimateLibrary.get("sdthx-lib");
		var symbol = library.symbols.get(2289);
		symbol.__init(library);

		super();
	}
}
