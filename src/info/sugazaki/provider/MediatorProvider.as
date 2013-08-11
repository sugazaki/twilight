package info.sugazaki.provider
{
	import com.creativebottle.starlingmvc.beans.BeanProvider;
	import com.creativebottle.starlingmvc.beans.ProtoBean;
	
	import info.sugazaki.mediator.BulletSpriteMediator;
	import info.sugazaki.mediator.MainStageMediator;
	import info.sugazaki.mediator.TankSpriteMediator;
	
	public class MediatorProvider extends BeanProvider
	{
		public function MediatorProvider()
		{
			this.beans = [new MainStageMediator(),new TankSpriteMediator(),new BulletSpriteMediator()];
		}
	}
}