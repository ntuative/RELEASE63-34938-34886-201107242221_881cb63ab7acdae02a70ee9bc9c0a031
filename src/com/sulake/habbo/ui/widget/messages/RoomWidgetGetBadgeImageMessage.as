package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_955:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_2003:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_955);
         this.var_2003 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_2003;
      }
   }
}
