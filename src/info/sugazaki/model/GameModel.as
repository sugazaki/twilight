package info.sugazaki.model
{
	import flash.geom.Rectangle;
	
	import info.sugazaki.entity.Bullet;
	import info.sugazaki.entity.Tank;

	public class GameModel
	{
		private var _tanks:Vector.<Tank>;
		
		private var _bullets:Vector.<Bullet>;
		
		private var _scenceBorder:Rectangle;
		
		public function GameModel()
		{
		}
		
		public function get scenceBorder():Rectangle
		{
			return _scenceBorder;
		}

		public function set scenceBorder(value:Rectangle):void
		{
			_scenceBorder = value;
		}

		public function addBullet(bullet:Bullet):void
		{
			bullets.push(bullet);
		}
		
		
		public function addTank(tank:Tank):void
		{
			tanks.push(tank);
		}

		public function get bullets():Vector.<Bullet>
		{
			if(_bullets == null)
			{
				_bullets = new Vector.<Bullet>();
			}
			return _bullets;
		}

		public function set bullets(value:Vector.<Bullet>):void
		{
			_bullets = value;
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