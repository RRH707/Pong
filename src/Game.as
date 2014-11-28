package  
{
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import Ball;
	import flash.events.KeyboardEvent;
	import flash.text.TextField;
	import Player;
	import Main;
	
	/**
	 * ...
	 * @author Rishaad Hausil
	 */
	public class Game extends Sprite
	{	
		//the ball
		private var _Ball:Ball;
		//left player
		private var _player0:Player;
		//down player
		private var _player1:Player;
		//right player
		private var _player2:Player;
		//up player
		private var _player3:Player;
		//engine
		private var _collision:Engine;
		private var _background:BackgroundArt;
		private var _Text:TextField;
		private var _Score:int;
		private var _Score2:int;
		private var _Stage:Stage;
		
	
		
		public function Game(s:Stage) 
		{	 
			
			//Adding the ball and players to the stage.
			_background = new BackgroundArt;
			_Ball = new Ball(s);
			_player0 = new Player(new PlayerArt1, 87, 83, 0, 20, s.stageHeight / 2);
			_player1 = new Player(new PlayerArt2, 37, 39, 90, s.stageWidth / 2, 580);
			_player2 = new Player(new PlayerArt2, 38, 40, 0, 780, s.stageHeight /2 );
			_player3 = new Player(new PlayerArt1, 65, 68, 90, s.stageWidth / 2, 20);
			_collision = new Engine();
			_Text = new TextField;
			_Stage = s;
			
			_Text.text = _Score+ " - " + _Score2;
			_Text.x = 350;
			_Text.y = s.stageHeight / 2;
			_Text.scaleX = 4;
			_Text.scaleY = 4;
			_Text.textColor = 0xFFFFFFFF;
			
			
			addChild(_background);
			addChild(_Text);
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
			_Ball.update(e);
			_collision.onCollision(_Ball, _player0, _player1, _player2, _player3);
			
			if (_Ball.x < 0 ) 
			{	
				_Score2 += 1;
				_Text.text = _Score + " - "  + _Score2;
				_Ball.x = _Stage.stageWidth / 2;
				_Ball.y = _Stage.stageHeight / 2;
			}
			else if (_Ball.x > 800)
			{
				_Score += 1;
				_Text.text = _Score + " - " + _Score2;
				_Ball.x = _Stage.stageWidth / 2;
				_Ball.y = _Stage.stageHeight / 2;
			}
			else if (_Ball.y < 0)
			{
				_Score2 += 1;
				_Text.text = _Score + " - " + _Score2;
				_Ball.x = _Stage.stageWidth / 2;
				_Ball.y = _Stage.stageWidth / 2;
			}
			else if (_Ball.y > 600)
			{
				_Score += 1;
				_Text.text = _Score + " - " + _Score2;
				_Ball.x = _Stage.stageWidth / 2;
				_Ball.y = _Stage.stageHeight / 2;
			}
			else if (_Score == 10 || _Score2 == 10)
			{
				dispatchEvent(new Event("endGame", true));
			}
			
		}
		
		
	}

}