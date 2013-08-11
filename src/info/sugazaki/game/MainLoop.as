package info.sugazaki.game
{
	import flash.ui.Keyboard;
	
	import info.sugazaki.entity.Bullet;
	import info.sugazaki.entity.Tank;
	import info.sugazaki.event.GameEvent;
	import info.sugazaki.model.GameModel;
	import info.sugazaki.util.DirectionEnum;
	import info.sugazaki.util.Vector2D;
	
	import starling.animation.IAnimatable;
	import starling.animation.Juggler;
	import starling.events.EventDispatcher;

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
		
		[Dispatcher]
		public var dispatcher:EventDispatcher;
		
		[Inject]
		public var gameModel:GameModel;
		
		private var totalTime:Number = 0;
		
		private var LOGIC_FRAME:Number = 0.02;
		
		private var SPEED:Number = 5;
		
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
			shoot(player);
			
			//更新所以物件的位置
			updatePosition();
			
			
			//游戏逻辑
			
			
		}
		
		/**
		 * 更新游戏物体的位置 
		 * 
		 */
		private function updatePosition():void
		{
			for each(var bullet:Bullet in gameModel.bullets)
			{
				bullet.position = bullet.position.add(bullet.speed);
			}
			
			for each(var tank:Tank in gameModel.tanks)
			{
				tank.position = tank.position.add(tank.speed);
			}
			
		}
		
		/**
		 * 玩家发射子弹 
		 * @param player
		 * 
		 */
		public function shoot(player:Tank):void
		{
			if(keyboard.keyDic[Keyboard.SPACE]){
				var bullet:Bullet = new Bullet();
				bullet.position = player.position.clone();
				bullet.speed = new Vector2D();
				bullet.speed.length = 10;
				bullet.speed.angle = (player.direction *45 - 90)/180 * Math.PI;
				
				//向数据层添加数据
				gameModel.addBullet(bullet);
				dispatcher.dispatchEventWith(GameEvent.ENTITY_ADD_TO_SCENE,false,bullet);
			}
		}
		
		/**
		 * 玩家移动 
		 * @param player
		 * 
		 */
		public function move(player:Tank):void
		{
			if(keyboard.UP_KEY_DOWN)
			{
				player.speed = new Vector2D(0,-1*SPEED); 
				player.direction = DirectionEnum.UP;
			}else if(keyboard.DOWN_KEY_DOWN)
			{
				player.speed = new Vector2D(0,SPEED); 
				player.direction = DirectionEnum.DOWN;
			}else if(keyboard.LEFT_KEY_DOWN)
			{
				player.speed = new Vector2D(-1*SPEED,0); 
				player.direction = DirectionEnum.LEFT;
			}else if(keyboard.RIGHT_KEY_DOWN)
			{
				player.speed = new Vector2D(SPEED,0); 
				player.direction = DirectionEnum.RIGHT;
			}else
			{
				player.speed = new Vector2D();
			}
			
		}
		
	}
}