package info.sugazaki.entity
{
	import flash.geom.Point;
	
	import info.sugazaki.util.Vector2D;

	public class Bullet
	{
		private var _attacker:Object;
		
		private var _position:Vector2D;
		
		private var _damage:int;
		
		private var _type:String;
		
		private var _speed:Vector2D = new Vector2D();
		
		public function Bullet()
		{
		}

		public function get position():Vector2D
		{
			return _position;
		}

		public function set position(value:Vector2D):void
		{
			_position = value;
		}

		public function get speed():Vector2D
		{
			return _speed;
		}

		public function set speed(value:Vector2D):void
		{
			_speed = value;
		}

		public function get type():String
		{
			return _type;
		}

		public function set type(value:String):void
		{
			_type = value;
		}

		public function get damage():int
		{
			return _damage;
		}

		public function set damage(value:int):void
		{
			_damage = value;
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