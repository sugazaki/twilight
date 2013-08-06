package info.sugazaki
{
	import com.creativebottle.starlingmvc.StarlingMVC;
	import com.creativebottle.starlingmvc.config.StarlingMVCConfig;
	import com.creativebottle.starlingmvc.views.ViewManager;
	
	import info.sugazaki.event.GameEvent;
	import info.sugazaki.provider.ControllerProvider;
	import info.sugazaki.provider.GameProvider;
	import info.sugazaki.provider.MediatorProvider;
	import info.sugazaki.provider.ModelProvider;
	
	import starling.display.Sprite;
	
	/**
	 * 游戏主场景，继承自starling.display.sprite 
	 * @author SUGA
	 * 
	 */	
	public class GameMain extends Sprite
	{
		private var starlingMVC:StarlingMVC;
		
		public function GameMain()
		{
			//--初始化starlingMVC------------------------------------------------
			var config:StarlingMVCConfig = new StarlingMVCConfig();
			config.eventPackages = ["info.sugazaki.event"];
			config.viewPackages = ["info.sugazaki.view"];
			
			var beans:Array = [new ViewManager(this),new ModelProvider(),new GameProvider(),new MediatorProvider(),new ModelProvider(),new ControllerProvider()];
			starlingMVC = new StarlingMVC(this,config,beans);
			this.dispatchEventWith(GameEvent.Game_INIT,true,this);
		}
	}
}