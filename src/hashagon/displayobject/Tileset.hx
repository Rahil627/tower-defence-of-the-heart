package hashagon.displayobject;

class Tileset{
	public function new(tilesetname:String, w:Int, h:Int){
		tiles = [];

		tilesetdata = hxd.Res.load("graphics/" + tilesetname + ".png").toTile();
		tiles = tilesetdata.gridFlatten(w);
		
		name = tilesetname;
		width = w; height = h;
		numtiles = tiles.length;
	}

	public function pivot(v:Int){
		//if you call this you prob just want to center shrug emoji
		for(t in tiles){
			t.center();
		}
	}

	public var name:String;
	public var width:Int;
	public var height:Int;
	public var numtiles:Int;

	public var tilesetdata:h2d.Tile;
	public var tiles:Array<h2d.Tile>;

	public var halign:Int;
	public var valign:Int;
}