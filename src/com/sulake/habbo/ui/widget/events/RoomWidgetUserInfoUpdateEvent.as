package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_117:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_179:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_836:int = 2;
      
      public static const const_757:int = 3;
      
      public static const const_2034:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1770:String = "";
      
      private var var_2330:int;
      
      private var var_2484:int = 0;
      
      private var var_2486:int = 0;
      
      private var var_727:String = "";
      
      private var var_48:BitmapData = null;
      
      private var var_241:Array;
      
      private var var_1507:int = 0;
      
      private var var_2517:String = "";
      
      private var var_2507:int = 0;
      
      private var var_2509:int = 0;
      
      private var var_1854:Boolean = false;
      
      private var var_1767:String = "";
      
      private var var_2267:Boolean = false;
      
      private var var_2510:Boolean = false;
      
      private var var_2511:Boolean = true;
      
      private var var_1194:int = 0;
      
      private var var_2508:Boolean = false;
      
      private var var_2516:Boolean = false;
      
      private var var_2513:Boolean = false;
      
      private var var_2512:Boolean = false;
      
      private var var_2518:Boolean = false;
      
      private var var_2514:Boolean = false;
      
      private var var_2515:int = 0;
      
      private var var_1853:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_241 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1770 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1770;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2330 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2330;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2484 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2484;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2486 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2486;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_727 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_727;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_48 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_241 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_241;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1507 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1507;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2517 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2517;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2510 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2510;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1194 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1194;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2508 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2508;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2516 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2516;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2513 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2513;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2512 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2512;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2518 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2518;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2514 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2514;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2515 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2515;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2511 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2511;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1853 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1853;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2507 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2507;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2509 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2509;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1854 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1854;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1767 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1767;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2267 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2267;
      }
   }
}
