package info.sugazaki.mediator
{
	import info.sugazaki.view.MainScene;

	public class MainStageMediator
	{
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
		
		
		[EventHandler(event="")]
		public function initMainStage(){
		
		}
		
	}
}