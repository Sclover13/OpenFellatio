package chars.rei;

@:access(swf.exporters.animate)
class ReiHairClip extends obj.CostumeElement
{
	public function new()
	{
		var library = swf.exporters.animate.AnimateLibrary.get("sdthx-lib");
		var symbol = library.symbols.get(2102);
		symbol.__init(library);

		super();
	}
}