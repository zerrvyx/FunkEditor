package;

import flixel.text.FlxText;
import flixel.FlxState;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();

		var sample:FlxText = new FlxText(0, 0, 0, 'im sorry this is not fnf!!!');
		sample.screenCenter();
		add(sample);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
