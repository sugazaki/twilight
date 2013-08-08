package info.sugazaki.model
{
	import info.sugazaki.entity.Tank;

	public class GameModel
	{
		private var _tanks:Vector.<Tank>;
		
		public function GameModel()
		{
		}
		
		public function addTank(tank:Tank):void{
			tanks.push(tank);
		}

		public function get tanks():Vector.<Tank>
		{
			if(_tanks == null)
			{
				_tanks = new Vector.<Tank>;
			}
			return _tanks;
		}

		public function set tanks(value:Vector.<Tank>):void
		{
			_tanks = value;
		}
		
		public function getTankByName(name:String):Tank
		{
			for each(var tank:Tank in _tanks)
			{
				if(tank.name == name)
				{
					return tank;
				}
			}
			
			return null;
		}

	}
}