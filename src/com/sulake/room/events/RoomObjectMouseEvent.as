package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_164:String = "ROE_MOUSE_CLICK";
      
      public static const const_196:String = "ROE_MOUSE_ENTER";
      
      public static const const_546:String = "ROE_MOUSE_MOVE";
      
      public static const const_200:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2196:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_601:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1897:String = "";
      
      private var var_2949:Boolean;
      
      private var var_2948:Boolean;
      
      private var var_2951:Boolean;
      
      private var var_2946:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1897 = param2;
         this.var_2949 = param5;
         this.var_2948 = param6;
         this.var_2951 = param7;
         this.var_2946 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1897;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2949;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2948;
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
