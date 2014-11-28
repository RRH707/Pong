package 
{
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import Ball;
	import flash.events.KeyboardEvent;
	import Player;
	import Game;
	import Menu;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author Rishaad Hausil
	 */
	public class Main extends Sprite 
	{
		private var _Game:Game;
		private var _Menu:Menu;
		
		public function Main():void 
		{	
			_Menu = new Menu(this.stage);
			
			addChild(_Menu);
			
			//adding event listeners to the main.
			stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
			stage.addEventListener(Event.ENTER_FRAME, update);
			stage.addEventListener(MouseEvent.CLICK, onClick);
			addEventListener("startGame", startGame);
			addEventListener("endGame", endGame);
		}
		
		private function endGame(e:Event):void 
		{
			removeChild(_Game);
			_Game = null;
			
			_Menu = new Menu(this.stage);
			addChild(_Menu);
		}
		
		private function startGame(e:Event):void 
		{
			removeChild(_Menu);
			_Menu = null;
			
			_Game = new Game(this.stage);
			addChild(_Game);
			
		}
		
		private function onKeyUp(e:KeyboardEvent):void 
		{
			if (_Game)
			{
				_Game.onKeyUp(e);
			}
		}
		
		private function onKeyDown(e:KeyboardEvent):void
		{
			if (_Game)
			{
				_Game.onKeyDown(e);
			}
			
		}
		
		private function onClick(e:MouseEvent)
		{
			if (_Menu)
			{
				_Menu.onClick(e);
			}
		}
		
		public function update(e:Event):void
		{
			if (_Game)
			{
				_Game.update(e);
			}
		}
		
	}
	
}