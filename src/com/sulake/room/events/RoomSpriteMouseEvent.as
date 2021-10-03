package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1897:String = "";
      
      private var var_2011:String = "";
      
      private var var_2840:String = "";
      
      private var var_2950:Number = 0;
      
      private var var_2947:Number = 0;
      
      private var var_2804:Number = 0;
      
      private var var_2803:Number = 0;
      
      private var var_2948:Boolean = false;
      
      private var var_2949:Boolean = false;
      
      private var var_2951:Boolean = false;
      
      private var var_2946:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1897 = param2;
         this.var_2011 = param3;
         this.var_2840 = param4;
         this.var_2950 = param5;
         this.var_2947 = param6;
         this.var_2804 = param7;
         this.var_2803 = param8;
         this.var_2948 = param9;
         this.var_2949 = param10;
         this.var_2951 = param11;
         this.var_2946 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1897;
      }
      
      public function get canvasId() : String
      {
         return this.var_2011;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2840;
      }
      
      public function get screenX() : Number
      {
         return this.var_2950;
      }
      
      public function get screenY() : Number
      {
         return this.var_2947;
      }
      
      public function get localX() : Number
      {
         return this.var_2804;
      }
      
      public function get localY() : Number
      {
         return this.var_2803;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2948;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2949;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2951;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2946;
      }
   }
}
