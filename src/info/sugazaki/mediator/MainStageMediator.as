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
		 * 添加Bullet到场景中
		 * @param event
		 * @return 
		 * 
		 */
		[EventHandler(event="bulletAddToScene")]
		public function addEntityToScene(event:Event):void
		{
			var bulletSprite:BulletSprite = new BulletSprite(event.data as Bullet,assets.getTexture("bullet"));
			this.view.addBullet(bulletSprite);
		}
		
		/**
		 * 移除Bullet 
		 * @param event
		 * 
		 */
		[EventHandler(event="bulletRemoveFromScene")]
		public function removeEntityToScent(event:Event):void
		{
			var bulletSprite:BulletSprite = this.getBulletSprite(event.data as Bullet);
			if(bulletSprite != null)
			{
				this.view.removeBullet(bulletSprite);
			}
		}
		
		
		/**
		 * 根据Bullet查找BulletSprite 
		 * @param bullet
		 * @return 
		 * 
		 */
		private function getBulletSprite(bullet:Bullet):BulletSprite
		{
			for each(var bulletSprite:BulletSprite in this.view.bullets)
			{
				if(bulletSprite.bullet == bullet)
				{
					return bulletSprite;	
				}
			}
			
			return null;
		}
		
	}
}