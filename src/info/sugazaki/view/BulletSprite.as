package info.sugazaki.view
{
	import info.sugazaki.entity.Bullet;
	
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.textures.Texture;

	public class BulletSprite extends Sprite
	{
		private const SCALE_BULLET:Number = 0.3;
		
		private var _bulletImage:Image;		
		
		private var _bullet:Bullet;
		
		public function BulletSprite(bullet:Bullet,texture:Texture)
		{
			this._bullet = bullet;
			this._bulletImage = new Image(texture);
			
			this._bulletImage.pivotX = this._bulletImage.width/2;
			this._bulletImage.pivotY = this._bulletImage.height/2;
			
			this._bulletImage.scaleX = SCALE_BULLET;
			this._bulletImage.scaleY = SCALE_BULLET;
			
			this._bulletImage.color = 0xFFFFFF * Math.random();
		
			this.addChild(_bulletImage);
		}

		public function get bullet():Bullet
		{
			return _bullet;
		}

		public function set bullet(value:Bullet):void
		{
			_bullet = value;
		}

		public function get bulletImage():Image
		{
			return _bulletImage;
		}

		public function set bulletImage(value:Image):void
		{
			_bulletImage = value;
		}

		public function updatePosition():void
		{
			this.x = bullet.position.x;
			this.y = bullet.position.y;
		}
	}
}