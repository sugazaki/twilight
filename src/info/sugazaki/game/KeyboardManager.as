package info.sugazaki.game
{
	
	import flash.ui.Keyboard;
	import flash.utils.Dictionary;
	
	import starling.display.Stage;
	import starling.events.KeyboardEvent;

	/**
	 * 管理键盘事件 
	 * @author SUGA
	 * 
	 */
	public class KeyboardManager
	{
		public var UP_KEY_DOWN:Boolean = false;
		
		public var DOWN_KEY_DOWN:Boolean = false;
		
		public var LEFT_KEY_DOWN:Boolean = false;
		
		public var RIGHT_KEY_DOWN:Boolean = false;
		
		public var keyDic:Dictionary = new Dictionary();
		
		public function KeyboardManager()
		{
		}
		
		public function attach(stage:Stage):void
		{
			stage.addEventListener(KeyboardEvent.KEY_UP,onKeyUp);
			stage.addEventListener(KeyboardEvent.KEY_DOWN,onKeyDown);
		}
		
		public function onKeyUp(event:KeyboardEvent):void
		{
			switch(event.keyCode){
				case Keyboard.UP:
					UP_KEY_DOWN = false;
					break;
				case Keyboard.DOWN:
					DOWN_KEY_DOWN = false;
					break;
				case Keyboard.LEFT:
					LEFT_KEY_DOWN = false;
					break;
				case Keyboard.RIGHT:
					RIGHT_KEY_DOWN = false;
					break;
				default:
					keyDic[event.keyCode] = false;				
			}
		}
		
		public function onKeyDown(event:KeyboardEvent):void
		{
			switch(event.keyCode){
				case Keyboard.UP:
					UP_KEY_DOWN = true;
					break;
				case Keyboard.DOWN:
					DOWN_KEY_DOWN = true;
					break;
				case Keyboard.LEFT:
					LEFT_KEY_DOWN = true;
					break;
				case Keyboard.RIGHT:
					RIGHT_KEY_DOWN = true;
					break;
				default:
					keyDic[event.keyCode] = true;		
			}
		}
	}
}