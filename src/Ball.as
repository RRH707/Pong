package  
{
	import flash.display.Sprite;
	import flash.display.Stage;
	/**
	 * ...
	 * @author Rishaad Hausil
	 */
	public class Ball extends Sprite
	{	
		private var ball:BallArt;
		
		public function Ball(s:Stage):void 
		{
			ball = new BallArt;
			
			ball.x = s.stageWidth / 2;
			ball.y = s.stageHeight / 2;
			addChild(ball);
		}
		
	}

}