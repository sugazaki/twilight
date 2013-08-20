package info.sugazaki.game
{
	import flash.geom.Rectangle;
	
	import info.sugazaki.entity.Bullet;
	import info.sugazaki.entity.Tank;
	import info.sugazaki.model.GameModel;

	/**
	 * 游戏的主逻辑
	 *  
	 * @author yusong
	 * 
	 */
	public class GameLogic
	{
		private var gameModel:GameModel;
		
		private var gridLength:Number;
		
		private var grids:Vector.<Vector.<Vector.<Object>>> = new Vector.<Vector.<Vector.<Object>>>;

		private var gridWidth:Number;

		private var gridHeight:Number;
		
		public function GameLogic(gameModel:GameModel)
		{
			this.gameModel = gameModel;
		}
		
		/**
		 * 碰撞检测相关代码 
		 * 
		 */
		public function collisionDectect():void
		{
			gridLength = getGridLength();	
			
			var border:Rectangle = gameModel.scenceBorder;
			
			this.spaceDivision();
			
//			for(var i:int=0; i!= width; i++)
//			{
//				for(var j:int =0;j!=height;j++)
//				{
//									
//				
//				
//				
//				}
//			}
			
			
			//边缘检测
			for each(var bullet:Bullet in gameModel.bullets)
			{
				
				if(bullet.position.x<=0||bullet.position.x>=border.width)
				{
					bullet.speed.x *= -1;
					
				}
				if(bullet.position.y>=border.height||bullet.position.y<=0)
				{
					bullet.speed.y *= -1;
				}
			}
		
		}
		
		/**
		 * 获取分割的Grid的长度 
		 * @return 
		 * 
		 */
		private function getGridLength():int
		{
			var gridLength:Number = 0;
			var length:Number = 0;
			
			for each(var tank:Tank in gameModel.tanks)
			{
				length = tank.width > tank.height ? tank.width : tank.height;
				
				if(length > gridLength)
				{
					gridLength = length;				
				}
			}
			
			for each(var bullet:Bullet in gameModel.bullets)
			{
				length = bullet.radius *2;
				
				if(length > gridLength)
				{
					gridLength = length;
				}
			
			}
			
			return gridLength;
		}
		
		/**
		 * 对空间中的物体做分割 
		 * 
		 */
		private function spaceDivision():void
		{
			gridWidth = Math.ceil(gameModel.scenceBorder.width / gridLength);
			gridHeight = Math.ceil(gameModel.scenceBorder.height/gridLength);
			
			for(var i:int = 0;i!=gridWidth; i++)
			{
				grids[i] = new Vector.<Vector.<Object>>;
				
				for(var j:int =0; j!=gridHeight; j++)
				{
					grids[i][j] = new Vector.<Object>;
				}
			}
			
			
			for each(var tank:Tank in gameModel.tanks)
			{
				var p:int = tank.x/gridLength;
				var q:int = tank.y/gridLength;
				grids[p][q].push(tank);
			}
			
			for each(var bullet:Bullet in gameModel.bullets)
			{
				p = tank.x/gridLength;
				q = tank.y/gridLength;
				grids[p][q].push(bullet);
			}
		
		}
		
	}
}