package  
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	/**
	 * ...
	 * @author Rishaad Hausil
	 */
	public class Player extends Sprite
	{
		private var _Player:MovieClip;
		private var _upKey:int; 
		private var _downKey:int;
		private var _dir:int = 0;
		private var _speed:int = 5;
		private var _horizontal:Boolean;
		
		
		public function Player(art:MovieClip, upKey:int, downKey:int, rot:Number, spawnX:int, spawnY:int) 
		{
			_Player = art;
			_upKey = upKey;
			_downKey = downKey;
			_Player.rotation = rot;
			
			
			this.x = spawnX;
			this.y = spawnY;
			
			addChild(_Player);
			
			if (rot != 0)
			{
				_horizontal = true;
			}
		}
		
		public function onKeyDown(e:KeyboardEvent):void
		{
			if (e.keyCode == _upKey)
			{
				_dir = -_speed;
			}
			else if (e.keyCode == _downKey)
			{
				_dir = _speed;
			}
		}
		
		public function onKeyUp(e:KeyboardEvent):void
		{
			if (e.keyCode == _upKey)
			{
				_dir = 0;
			}
			else if (e.keyCode == _downKey)
			{
				_dir = 0;
			}
		}
		
		public function update(e:Event):void
		{
			if (_horizontal == true)
			{
				this.x += _dir;
			}
			else
			{
				this.y += _dir;
			}
			
		}
		
	}

}