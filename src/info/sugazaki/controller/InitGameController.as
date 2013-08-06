package info.sugazaki.controller
{
	import info.sugazaki.GameMain;
	import info.sugazaki.event.GameEvent;
	import info.sugazaki.util.EmbeddedAssets;
	import info.sugazaki.view.MainScene;
	
	import starling.events.Event;
	import starling.events.EventDispatcher;
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	import starling.utils.AssetManager;

	/**
	 * 游戏初始化类 
	 * @author SUGA
	 * 
	 */	
	public class InitGameController
	{
		[Inject]
		public var assets:AssetManager;
		
		[Dispatcher]
		public var dispatcher:EventDispatcher;
		
		[EventHandler(event="initGame")]
		public function doInit(event:Event):void{
			
			//初始化素材
			assets.enqueue(EmbeddedAssets);
			
			assets.loadQueue(onProgress);
		}
		
		private function onProgress(ratio:Number):void{
			if(ratio==1.0)
			{
				dispatcher.dispatchEventWith(GameEvent.Game_INIT_SCENE);
			}
		}
	}
}