package info.sugazaki.mediator
{
	import com.creativebottle.starlingmvc.events.EventMap;
	
	import info.sugazaki.view.BulletSprite;
	
	import starling.animation.Juggler;
	import starling.events.EnterFrameEvent;

	public class BulletSpriteMediator
	{
		[Juggler]
		public var juggler:Juggler;
		
		private var bulletSprites:Vector.<BulletSprite> = new Vector.<BulletSprite>;
		
		private var eventMap:EventMap = new EventMap();

		[ViewAdded]
		public function viewAdded(view:BulletSprite):void{
			if(bulletSprites.length == 0){
				eventMap.addMap(view.stage,EnterFrameEvent.ENTER_FRAME,onEnterFrame);
			}
			
			bulletSprites.push(view);
		}
		
		[ViewRemoved]
		public function viewRemoved(view:BulletSprite):void{
			bulletSprites.splice(bulletSprites.indexOf(view),1);
			
			if(bulletSprites.length == 0){
				eventMap.removeAllMappedEvents();
			}
		}
		
		public function onEnterFrame(event:EnterFrameEvent):void{
			for each(var bulletSprite:BulletSprite in bulletSprites)
			{
				bulletSprite.updatePosition();
			}
		}
	}
}