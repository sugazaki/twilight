package info.sugazaki.mediator
{
	import info.sugazaki.entity.Bullet;
	import info.sugazaki.view.BulletSprite;
	import info.sugazaki.view.MainScene;
	
	import starling.events.Event;
	import starling.utils.AssetManager;

	public class MainStageMediator
	{
		[Inject]
		public var assets:AssetManager;
		
		private var view:MainScene;
		
		
		[ViewAdded]
		public function viewAdded(view:MainScene):void
		{
			this.view = view;
		}
		
		[ViewRemoved]
		public function viewRemoved(view:MainScene):void
		{
			this.view = null;
		}
		
		
		public function initMainStage():void{
		
		}
		
		/**
		 * 添加物体到场景中
		 * @param event
		 * @param entity
		 * @return 
		 * 
		 */
		[EventHandler(event="entityAddToScene")]
		public function addEntityToScene(event:Event):void{
			var bulletSprite:BulletSprite = new BulletSprite(event.data as Bullet,assets.getTexture("bullet"));
			this.view.addBullet(bulletSprite);
		}
	}
}