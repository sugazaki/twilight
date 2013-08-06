package info.sugazaki.provider
{
	import com.creativebottle.starlingmvc.beans.BeanProvider;
	
	import info.sugazaki.model.GameModel;
	
	public class ModelProvider extends BeanProvider
	{
		public function ModelProvider()
		{
			this.beans = [new GameModel()];
		}
	}
}