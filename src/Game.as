package  
{
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import Ball;
	import flash.events.KeyboardEvent;
	import Player;
	import Main;
	
	/**
	 * ...
	 * @author Rishaad Hausil
	 */
	public class Game extends Sprite
	{	
		private var _Ball:Ball;
		private var _player0:Player;
		private var _player1:Player;
		private var _player2:Player;
		private var _player3:Player;
		
		public function Game(s:Stage) 
		{	 
			
			//Adding the ball and players to the stage.
			_Ball = new Ball(s);
			_player0 = new Player(new PlayerArt1, 87, 83, 0, 0, 220);
			_player1 = new Player(new PlayerArt1, 65, 68, 90, 500, 550);
			_player2 = new Player(new PlayerArt2, 38, 40, 0, 755, 220);
			_player3 = new Player(new PlayerArt2, 37, 39, 90, 550, 0);
			
			
			addChild(_Ball);
			addChild(_player0);
			addChild(_player1);
			addChild(_player2);
			addChild(_player3);
		}
		
		//adding the keyboard functions of the players to the game
		public function onKeyUp(e:KeyboardEvent):void 
		{	
			_player0.onKeyUp(e);
			_player1.onKeyUp(e);
			_player2.onKeyUp(e);
			_player3.onKeyUp(e);
		}
		
		public function onKeyDown(e:KeyboardEvent):void
		{
			_player0.onKeyDown(e);
			_player1.onKeyDown(e);
			_player2.onKeyDown(e);
			_player3.onKeyDown(e);
		}
		
		//making a function for the players to update
		public function update(e:Event):void
		{
			_player0.update(e);
			_player1.update(e);
			_player2.update(e);
			_player3.update(e);
		}
		
		
	}

}