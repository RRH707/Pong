package  
{
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.display.SimpleButton;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.display.StageDisplayState;
	/**
	 * ...
	 * @author Rishaad Hausil
	 */
	public class Menu extends Sprite
	{
		public var _startScreen:StartScreenArt;
		public var _startButton:SimpleButton;
		public var _fullscreenButton:SimpleButton;
		public var _stage:Stage;
		
		public function Menu(s:Stage) 
		{
			_startScreen = new StartScreenArt;
			_startButton = new StartArt;
			_fullscreenButton = new FullScreenArt;
			_stage = s;
			
			_startButton.x = s.stageWidth / 2;
			_startButton.y = s.stageHeight / 2;
			_fullscreenButton.x = s.stageWidth / 2;
			_fullscreenButton.y = s.stageHeight / 2 + 100;
			
			addChild(_startScreen);
			addChild(_startButton);
			addChild(_fullscreenButton);
			
		}
		
		public function onClick(e:MouseEvent):void
		{
			if (e.target == _startButton)
			{
				dispatchEvent(new Event("startGame", true))
			}
			else if (e.target == _fullscreenButton)
			{
				_stage.displayState = StageDisplayState.FULL_SCREEN;
			}
		}
		
		
		
	}

}