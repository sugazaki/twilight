package info.sugazaki.entity
{
	import flash.geom.Point;
	
	import info.sugazaki.util.Vector2D;

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
		
		private var _direction:int;
		
		private var _position:Vector2D = new Vector2D();
		
		private var _speed:Vector2D = new Vector2D();
		
		private var _type:String;
		
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

		public function get speed():Vector2D
		{
			return _speed;
		}

		public function set speed(value:Vector2D):void
		{
			_speed = value;
		}

		public function get position():Vector2D
		{
			return _position;
		}

		public function set position(value:Vector2D):void
		{
			_position = value;
		}

		public function get type():String
		{
			return _type;
		}

		public function set type(value:String):void
		{
			_type = value;
		}

		public function get x():Number
		{
			return _position.x;
		}
		
		public function get y():Number
		{
			return _position.y;
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