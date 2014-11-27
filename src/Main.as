package 
{
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import Ball;
	import flash.events.KeyboardEvent;
	import Player;
	import Game;
	
	/**
	 * ...
	 * @author Rishaad Hausil
	 */
	public class Main extends Sprite 
	{
		private var _Game:Game;
		
		public function Main():void 
		{	//adding the game to the main
			_Game = new Game(this.stage);
			
			addChild(_Game);
			
			//adding event listeners to the main.
			stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
			stage.addEventListener(Event.ENTER_FRAME, update);
		}
		
		private function onKeyUp(e:KeyboardEvent):void 
		{
			_Game.onKeyUp(e);
		}
		
		private function onKeyDown(e:KeyboardEvent):void
		{
			_Game.onKeyDown(e);
		}
		
		public function update(e:Event):void
		{
			_Game.update(e);
		}
		
	}
	
}