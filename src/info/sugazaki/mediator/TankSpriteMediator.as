package info.sugazaki.mediator
{
	import com.creativebottle.starlingmvc.StarlingMVC;
	import com.creativebottle.starlingmvc.config.StarlingMVCConfig;
	import com.creativebottle.starlingmvc.events.EventMap;
	import com.creativebottle.starlingmvc.events.StarlingMVCEvent;
	
	import info.sugazaki.view.TankSprite;
	
	import starling.animation.Juggler;
	import starling.events.EnterFrameEvent;

	public class TankSpriteMediator
	{
		[Juggler]
		public var juggler:Juggler;
		
		private var tankSprites:Vector.<TankSprite> = new Vector.<TankSprite>;
		
		private var eventMap:EventMap = new EventMap();

		[ViewAdded]
		public function viewAdded(view:TankSprite):void{
			if(tankSprites.length == 0){
				eventMap.addMap(view.stage,EnterFrameEvent.ENTER_FRAME,onEnterFrame);
			}
			
			tankSprites.push(view);
		}
		
		[ViewRemoved]
		public function viewRemoved(view:TankSprite):void{
			tankSprites.splice(tankSprites.indexOf(view),1);
			
			if(tankSprites.length == 0){
				eventMap.removeAllMappedEvents();
			}
		}
		
		public function onEnterFrame(event:EnterFrameEvent):void{
			for each(var tankSprite:TankSprite in tankSprites)
			{
			
				tankSprite.updatePosition();
			}
		}
		
	}
}