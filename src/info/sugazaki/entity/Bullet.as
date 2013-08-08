package info.sugazaki.entity
{
	import flash.geom.Point;

	public class Bullet
	{
		private var _attacker:Object;
		
		private var _position:Point;
		
		private var _speed:Number;
		
		private var _damage:int;
		
		public function Bullet()
		{
		}

		public function get damage():int
		{
			return _damage;
		}

		public function set damage(value:int):void
		{
			_damage = value;
		}

		public function get speed():Number
		{
			return _speed;
		}

		public function set speed(value:Number):void
		{
			_speed = value;
		}

		public function get position():Point
		{
			return _position;
		}

		public function set position(value:Point):void
		{
			_position = value;
		}

		public function get attacker():Object
		{
			return _attacker;
		}

		public function set attacker(value:Object):void
		{
			_attacker = value;
		}

	}
}