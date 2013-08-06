package info.sugazaki.view
{
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.textures.Texture;
	import starling.utils.AssetManager;
	
	/**
	 * 场景背景类 
	 * @author SUGA
	 * 
	 */
	public class BackgroundScene extends Sprite
	{
		private var background:Image;
		
		public function BackgroundScene(texture:Texture)
		{
			background = new Image(texture);
			this.addChild(background);
		}
	}
}