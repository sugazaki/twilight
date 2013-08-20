package info.sugazaki.view
{
	import starling.display.Sprite;

	public class MainScene extends Sprite
	{
		//背景
		private var _background:BackgroundScene;
		//tank
		private var _tanks:Vector.<TankSprite>;
		//子弹
		private var _bullets:Vector.<BulletSprite>;
		
		public function MainScene()
		{
			
		}
		
		public function get bullets():Vector.<BulletSprite>
		{
			if(_bullets==null){
				_bullets = new Vector.<BulletSprite>;
			}
			return _bullets;
		}

		public function set bullets(value:Vector.<BulletSprite>):void
		{
			_bullets = value;
		}

		public function get tanks():Vector.<TankSprite>
		{
			if(_tanks==null){
				_tanks = new Vector.<TankSprite>;
			}
			return _tanks;
		}
		
		public function addTank(tank:TankSprite):void
		{
			tanks.push(tank);
			this.addChild(tank);
		}
		
		public function removeTank(tank:TankSprite):void
		{
			this.tanks.splice(tanks.indexOf(tank),1);
		}
		
		public function addBullet(bullet:BulletSprite):void
		{	
			bullets.push(bullet);
			this.addChild(bullet);
		}
		
		public function removeBullet(bullet:BulletSprite):void
		{
			bullets.splice(bullets.indexOf(bullet),1);
			this.removeChild(bullet);
		}

		public function get background():BackgroundScene
		{
			return _background;
		}

		public function set background(value:BackgroundScene):void
		{
			if(_background){
				this.removeChild(_background);
			}
			_background = value;
			this.addChild(_background);
		}

	}
}