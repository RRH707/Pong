package  
{
	/**
	 * ...
	 * @author Rishaad Hausil
	 */
	public class Engine 
	{
		
		public function onCollision(_Ball:Ball, _Player0:Player, _Player1:Player, _Player2:Player, _Player3:Player):void
		{
			//left player
			if(_Player0.hitTestPoint(_Ball.x - _Ball.width / 2, _Ball.y, true))
			{	
				_Ball._dir.x = _Ball._dir.x * -1;
				
				while (_Player0.hitTestPoint(_Ball.x - _Ball.width / 2, _Ball.y, true))
				{
					_Ball.x += 1;
				}
			}
			
			//down player
			if (_Player1.hitTestPoint(_Ball.x, _Ball.y + _Ball.height / 2, true))
			{
				_Ball._dir.y = _Ball._dir.y * -1;
				
				while (_Player1.hitTestPoint(_Ball.x, _Ball.y + _Ball.height / 2, true))
				{
					_Ball.y += -1;
				}
			}
			
			//right player
			if (_Player2.hitTestPoint(_Ball.x + _Ball.width / 2, _Ball.y, true))
			{
				_Ball._dir.x = _Ball._dir.x * -1;
				
				while (_Player2.hitTestPoint(_Ball.x + _Ball.width / 2, _Ball.y, true))
				{
					_Ball.x += -1;
				}
			}
			
			//up player
			if (_Player3.hitTestPoint(_Ball.x, _Ball.y - _Ball.height / 2, true))
			{
				_Ball._dir.y = _Ball._dir.y * -1;
				
				while (_Player3.hitTestPoint(_Ball.x, _Ball.y  - _Ball.height / 2, true))
				{
					_Ball.y += 1;
				}
			}
		}
		
	}

}