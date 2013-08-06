package info.sugazaki.provider
{
	import com.creativebottle.starlingmvc.beans.BeanProvider;
	
	import info.sugazaki.game.KeyboardManager;
	import info.sugazaki.game.MainLoop;
	
	import starling.core.Starling;
	import starling.utils.AssetManager;
	
	public class GameProvider extends BeanProvider
	{
		public function GameProvider()
		{
			this.beans = [new MainLoop(),new AssetManager(),new KeyboardManager(),Starling.juggler];
		}
		
	}
}