package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetGetUserLocationMessage extends RoomWidgetMessage
   {
      
      public static const const_755:String = "RWGOI_MESSAGE_GET_USER_LOCATION";
       
      
      private var _userId:int;
      
      private var var_1717:int;
      
      public function RoomWidgetGetUserLocationMessage(param1:int, param2:int)
      {
         super(const_755);
         this._userId = param1;
         this.var_1717 = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userType() : int
      {
         return this.var_1717;
      }
   }
}
