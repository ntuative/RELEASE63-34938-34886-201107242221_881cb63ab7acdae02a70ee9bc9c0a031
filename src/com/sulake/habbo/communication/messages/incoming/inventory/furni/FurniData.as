package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2341:int;
      
      private var var_1496:String;
      
      private var _objId:int;
      
      private var var_1856:int;
      
      private var _category:int;
      
      private var var_2278:String;
      
      private var var_2338:Boolean;
      
      private var var_2339:Boolean;
      
      private var var_2340:Boolean;
      
      private var var_2337:Boolean;
      
      private var var_2342:int;
      
      private var var_1491:int;
      
      private var var_2128:String = "";
      
      private var var_1644:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2341 = param1;
         this.var_1496 = param2;
         this._objId = param3;
         this.var_1856 = param4;
         this._category = param5;
         this.var_2278 = param6;
         this.var_2338 = param7;
         this.var_2339 = param8;
         this.var_2340 = param9;
         this.var_2337 = param10;
         this.var_2342 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_2128 = param1;
         this.var_1491 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2341;
      }
      
      public function get itemType() : String
      {
         return this.var_1496;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1856;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2278;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2338;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2339;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2340;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2337;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2342;
      }
      
      public function get slotId() : String
      {
         return this.var_2128;
      }
      
      public function get songId() : int
      {
         return this.var_1644;
      }
      
      public function get extra() : int
      {
         return this.var_1491;
      }
   }
}
