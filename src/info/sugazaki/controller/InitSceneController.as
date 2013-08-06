package info.sugazaki.controller
{
	import com.creativebottle.starlingmvc.views.ViewManager;
	
	import flash.geom.Point;
	
	import info.sugazaki.bean.Tank;
	import info.sugazaki.game.KeyboardManager;
	import info.sugazaki.game.MainLoop;
	import info.sugazaki.model.GameModel;
	import info.sugazaki.view.BackgroundScene;
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
		
		[Dispatcher]
		public var dispatcher:EventDispatcher;
		
		[Inject]
		public var mainLoop:MainLoop;
		
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
			player.position = new Point(200,200);
			player.speed = 5;
			
			var player2:Tank = new Tank();
			player2.name = "player2";
			player2.position = new Point(200,400);
			player2.speed = 5;
			gameModel.addTank(player);
			gameModel.addTank(player2);
			
			//初始化背景
			var backgroud:BackgroundScene = new BackgroundScene(assets.getTexture("background_1"));
			mainScene.background = backgroud;
			
			//初始化一个Tank
			var tank:TankSprite = new TankSprite(player,assets.getTexture("tank_1"));
			//初始化一个Tank
			var tank2:TankSprite = new TankSprite(player2,assets.getTexture("tank_1"));
			mainScene.addTank(tank);
			mainScene.addTank(tank2);
			
			keyboardManager.attach(mainScene.stage);
			mainLoop.start();
		}
	}
}