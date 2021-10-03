package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_877:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_2458:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_877);
         this.var_2458 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2458;
      }
   }
}
