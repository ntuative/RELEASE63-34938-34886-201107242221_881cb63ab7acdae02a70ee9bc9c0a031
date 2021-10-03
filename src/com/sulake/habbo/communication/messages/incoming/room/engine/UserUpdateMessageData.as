package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_187:Number = 0;
      
      private var var_188:Number = 0;
      
      private var var_2540:Number = 0;
      
      private var var_2542:Number = 0;
      
      private var var_2539:Number = 0;
      
      private var var_2541:Number = 0;
      
      private var var_468:int = 0;
      
      private var var_2543:int = 0;
      
      private var var_365:Array;
      
      private var var_2538:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_365 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_187 = param3;
         this.var_188 = param4;
         this.var_2540 = param5;
         this.var_468 = param6;
         this.var_2543 = param7;
         this.var_2542 = param8;
         this.var_2539 = param9;
         this.var_2541 = param10;
         this.var_2538 = param11;
         this.var_365 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_187;
      }
      
      public function get z() : Number
      {
         return this.var_188;
      }
      
      public function get localZ() : Number
      {
         return this.var_2540;
      }
      
      public function get targetX() : Number
      {
         return this.var_2542;
      }
      
      public function get targetY() : Number
      {
         return this.var_2539;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2541;
      }
      
      public function get dir() : int
      {
         return this.var_468;
      }
      
      public function get dirHead() : int
      {
         return this.var_2543;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2538;
      }
      
      public function get actions() : Array
      {
         return this.var_365.slice();
      }
   }
}
