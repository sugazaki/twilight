package info.sugazaki.view
{
	
	import info.sugazaki.entity.Tank;
	
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.textures.Texture;
	
	/**
	 * 表示一个Tank 
	 * @author SUGA
	 * 
	 */
	public class TankSprite extends Sprite
	{
		private const SCALE:Number = 0.6;		
		
		private var _tankImage:Image;
		
		private var _tank:Tank;
		
		public function TankSprite(tank:Tank,texture:Texture)
		{
			this._tank = tank;
			this._tankImage = new Image(texture);
			
			this._tankImage.pivotX = this._tankImage.width/2;
			this._tankImage.pivotY = this._tankImage.height/2;
			
			this._tankImage.scaleX = SCALE;
			this._tankImage.scaleY = SCALE;
			
			this.addChild(_tankImage);
		}
		
		public function get tank():Tank
		{
			return _tank;
		}

		public function set tank(value:Tank):void
		{
			_tank = value;
		}

		public function get tankImage():Image
		{
			return _tankImage;
		}

		public function set tankImage(value:Image):void
		{
			_tankImage = value;
		}
		
		public function updatePosition():void
		{
			this.x = tank.x;
			this.y = tank.y;
			this.rotation = Math.PI * (tank.direction * 45)/180;
		}
	}
}