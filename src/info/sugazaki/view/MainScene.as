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