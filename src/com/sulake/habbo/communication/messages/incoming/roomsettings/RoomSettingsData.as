package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_500:int = 0;
      
      public static const const_229:int = 1;
      
      public static const const_135:int = 2;
      
      public static const const_991:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1840:String;
      
      private var var_2300:int;
      
      private var var_1691:int;
      
      private var var_2796:int;
      
      private var var_2812:int;
      
      private var var_939:Array;
      
      private var var_2795:Array;
      
      private var var_2813:int;
      
      private var var_2301:Boolean;
      
      private var var_2793:Boolean;
      
      private var var_2791:Boolean;
      
      private var var_2792:Boolean;
      
      private var var_2790:int;
      
      private var var_2794:int;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2301;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2301 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2793;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2793 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2791;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2791 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2792;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2792 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2790;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2790 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2794;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2794 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1840;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1840 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2300;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2300 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1691;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1691 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2796;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2796 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2812;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2812 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_939;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_939 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2795;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2795 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2813;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2813 = param1;
      }
   }
}
