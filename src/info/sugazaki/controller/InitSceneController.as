package info.sugazaki.controller
{
	import com.creativebottle.starlingmvc.views.ViewManager;
	
	import flash.geom.Point;
	
	import info.sugazaki.entity.Bullet;
	import info.sugazaki.entity.Tank;
	import info.sugazaki.game.KeyboardManager;
	import info.sugazaki.game.MainLoop;
	import info.sugazaki.model.GameModel;
	import info.sugazaki.util.Vector2D;
	import info.sugazaki.view.BackgroundScene;
	import info.sugazaki.view.BulletSprite;
	import info.sugazaki.view.MainScene;
	import info.sugazaki.view.TankSprite;
	
	import starling.events.Event;
	import starling.events.EventDispatcher;
	import starling.utils.AssetManager;

	/**
	 * 初始化游戏主场景 
	 * @author SUGA
	 * 
	 */
	public class InitSceneController
	{
		[Inject]
		public var viewManager:ViewManager;
		
		[Inject]
		public var assets:AssetManager;
		
		[Inject]
		public var gameModel:GameModel;
		
		[Inject]
		public var keyboardManager:KeyboardManager;
		
		[Inject]
		public var mainLoop:MainLoop;	
		
		[Dispatcher]
		public var dispatcher:EventDispatcher;
		
		public function InitSceneController()
		{
		}
		
		[EventHandler(event="initScene")]
		public function initScene(event:Event):void
		{
			var mainScene:MainScene = new MainScene();
			viewManager.addView(mainScene);
			
			var player:Tank = new Tank();
			player.name = "player";
			player.position = new Vector2D(200,200);
			
			var player2:Tank = new Tank();
			player2.name = "player2";
			player2.position = new Vector2D(200,400);
		
			
			var bullet:Bullet = new Bullet();
			bullet.position = new Vector2D(300,300);
			
			gameModel.addTank(player);
//			gameModel.addTank(player2);
//			gameModel.addBullet(bullet);
			
			//初始化背景
			var backgroud:BackgroundScene = new BackgroundScene(assets.getTexture("background_1"));
			mainScene.background = backgroud;
			
			//初始化一个Tank
			var tank:TankSprite = new TankSprite(player,assets.getTexture("tank_1"));
			//初始化一个Tank
			var tank2:TankSprite = new TankSprite(player2,assets.getTexture("tank_1"));
			mainScene.addTank(tank);
//			mainScene.addTank(tank2);
			
			var bulletSprite:BulletSprite = new BulletSprite(bullet,assets.getTexture("bullet"));
//			mainScene.addBullet(bulletSprite);
			bulletSprite.x = 300;
			bulletSprite.y = 300;
			
			//初始化键盘管理程序
			keyboardManager.attach(mainScene.stage);
			mainLoop.start();
		}
	}
}