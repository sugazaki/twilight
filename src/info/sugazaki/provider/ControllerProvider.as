package info.sugazaki.provider
{
	import com.creativebottle.starlingmvc.beans.BeanProvider;
	
	import info.sugazaki.controller.InitGameController;
	import info.sugazaki.controller.InitSceneController;

	public class ControllerProvider extends BeanProvider
	{
		public function ControllerProvider()
		{
			this.beans = [new InitGameController(),new InitSceneController()]
		}
	}
}