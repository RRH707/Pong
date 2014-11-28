package  
{
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.geom.Vector3D;
	/**
	 * ...
	 * @author Rishaad Hausil
	 */
	public class Ball extends Sprite
	{	
		private var ball:BallArt;
		public var _dir:Vector3D;
		private var _speed:int;
		
		public function Ball(s:Stage):void 
		{
			ball = new BallArt;
			_dir = new Vector3D(-15,-5,0);
			
			this.x = s.stageWidth / 2;
			this.y = s.stageHeight / 2;
			addChild(ball);
		}
		
		public function update(e:Event):void
		{
			this.x += _dir.x;
			this.y += _dir.y;
			
		}
		
		
	}

}