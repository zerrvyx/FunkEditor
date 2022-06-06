package;

import flixel.FlxState;
import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
	static var initialState:Class<FlxState> = PlayState;
	static var framerate:Int = 60;
	// I HATE FLIXEL JUMPSCARE!!2!1!
	static var skipSplash:Bool = true;

	public function new()
	{
		super();
		addChild(new FlxGame(0, 0, initialState, framerate, framerate, skipSplash));
	}
}
