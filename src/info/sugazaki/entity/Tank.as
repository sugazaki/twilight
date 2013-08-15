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
		
		private var _direction:Number;
		
		private var _steeringForce:Vector2D = new Vector2D();
		
		private var _position:Vector2D = new Vector2D();
		
		private var _velocity:Vector2D = new Vector2D();
		
		private var _maxSpeed:Number = 5;
		
		private var _maxForce:Number = 2;
		
		private var _type:String;
		
		public function Tank()
		{
		}

		public function get steeringForce():Vector2D
		{
			return _steeringForce;
		}

		public function set steeringForce(value:Vector2D):void
		{
			_steeringForce = value;
		}

		public function get maxForce():Number
		{
			return _maxForce;
		}

		public function set maxForce(value:Number):void
		{
			_maxForce = value;
		}

		public function get maxSpeed():Number
		{
			return _maxSpeed;
		}

		public function set maxSpeed(value:Number):void
		{
			_maxSpeed = value;
		}

		public function get direction():Number
		{			
			return this.velocity.angle;
		}

		public function get velocity():Vector2D
		{
			return _velocity;
		}

		public function set velocity(value:Vector2D):void
		{
			_velocity = value;
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
		
		public function updatePosition():void
		{
			this.steeringForce = steeringForce.truncate(this.maxForce);
			this.velocity = velocity.add(this.steeringForce);
			this.position = position.add(this.velocity);
			this.steeringForce = new Vector2D();
			
		}

	}
}