package info.sugazaki.game
{
	import info.sugazaki.entity.Tank;
	import info.sugazaki.model.GameModel;
	import info.sugazaki.util.DirectionEnum;
	
	import starling.animation.IAnimatable;
	import starling.animation.Juggler;

	/**
	 * 游戏主循环 
	 * @author SUGA
	 * 
	 */
	public class MainLoop implements IAnimatable
	{
		[Juggler]
		public var juggler:Juggler;
		
		[Inject]
		public var keyboard:KeyboardManager;
		
		[Inject]
		public var gameModel:GameModel;
		
		private var totalTime:Number = 0;
		
		private var LOGIC_FRAME:Number = 0.02;
		
		public function MainLoop()
		{
			
		}
		
		/**
		 * 开始游戏逻辑 
		 * 
		 */
		public function start():void
		{
			juggler.add(this);
		}
		
		/**
		 * 停止游戏逻辑 
		 * 
		 */		
		public function stop():void
		{
			juggler.remove(this);
		}
		
		public function advanceTime(time:Number):void
		{
			totalTime += time;
			
			if(totalTime >= LOGIC_FRAME){
				execute();
				totalTime = totalTime % LOGIC_FRAME;				
			}
		}
		
		public function execute():void
		{
			var player:Tank = gameModel.getTankByName("player");
			
			//MOVE
			move(player);
			
			//SHOOT
			
		}
		
		public function shoot(player:Tank):void
		{
		
		}
		
		public function move(player:Tank):void
		{
			if(keyboard.UP_KEY_DOWN)
			{
				player.position.y -= player.speed;
				player.direction = DirectionEnum.UP;
			}else if(keyboard.DOWN_KEY_DOWN)
			{
				player.position.y += player.speed;
				player.direction = DirectionEnum.DOWN;
			}else if(keyboard.LEFT_KEY_DOWN)
			{
				player.position.x -= player.speed;
				player.direction = DirectionEnum.LEFT;
			}else if(keyboard.RIGHT_KEY_DOWN)
			{
				player.position.x += player.speed;
				player.direction = DirectionEnum.RIGHT;
			}
		}
		
	}
}