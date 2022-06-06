package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
	static final initialState:Class<FlxState> = PlayState;
	static final framerate:Int = 60;
	// I HATE FLIXEL JUMPSCARE!!2!1!
	static final skipSplash:Bool = true;

	public function new()
	{
		super();

		addChild(new FlxGame(0, 0, initialState, framerate, framerate, skipSplash));

		// some shit to make things cooler
		FlxG.autoPause = false;
		FlxG.mouse.useSystemCursor = true;

		// we want to automatically clear the cache when we switch of state
		FlxG.signals.preStateCreate.add(function(state:FlxState)
		{
			Paths.clearCache();
		});
	}
}
