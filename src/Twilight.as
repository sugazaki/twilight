package
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	import starling.core.Starling;
	import info.sugazaki.GameMain;
	
	[SWF(width="640",height="480",frameRate="60",backgroudColor="#ffffff")]
	public class Twilight extends Sprite
	{
		private var _starling:Starling;
		
		public function Twilight()
		{
			if (stage) start();
			else addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Object):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			start();
		}
		
		private function start():void{
			_starling = new Starling(GameMain,stage);
			_starling.start();
		}
	
	}
}