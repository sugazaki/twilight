package info.sugazaki.entity
{
	import flash.geom.Point;

	/**
	 * Tank实体类包含基础属性 
	 * @author SUGA
	 * 
	 */	
	public class Tank
	{
		private var _id:int;
		
		private var _name:String;
		
		private var _hp:int;
		
		private var _attack:int;
		
		private var _speed:int;
		
		private var _position:Point = new Point();
		
		private var _rotation:int;
		
		private var _direction:int;
		
		public function Tank()
		{
		}

		public function get direction():int
		{
			return _direction;
		}

		public function set direction(value:int):void
		{
			_direction = value;
		}

		public function get rotation():int
		{
			return _rotation;
		}

		public function set rotation(value:int):void
		{
			_rotation = value;
		}

		public function get x():Number
		{
			return _position.x;
		}
		
		public function get y():Number
		{
			return _position.y;
		}
		
		public function get position():Point
		{
			return _position;
		}

		public function set position(value:Point):void
		{
			_position = value;
		}

		public function get speed():int
		{
			return _speed;
		}

		public function set speed(value:int):void
		{
			_speed = value;
		}

		public function get attack():int
		{
			return _attack;
		}

		public function set attack(value:int):void
		{
			_attack = value;
		}

		public function get hp():int
		{
			return _hp;
		}

		public function set hp(value:int):void
		{
			_hp = value;
		}

		public function get name():String
		{
			return _name;
		}

		public function set name(value:String):void
		{
			_name = value;
		}

		public function get id():int
		{
			return _id;
		}

		public function set id(value:int):void
		{
			_id = value;
		}

	}
}