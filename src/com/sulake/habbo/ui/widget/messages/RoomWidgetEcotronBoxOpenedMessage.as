package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetEcotronBoxOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_2031:String = "RWEBOM_ECOTRONBOX_OPENED";
       
      
      private var var_1496:String;
      
      private var var_1856:int;
      
      public function RoomWidgetEcotronBoxOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         this.var_1496 = param2;
         this.var_1856 = param3;
      }
      
      public function get itemType() : String
      {
         return this.var_1496;
      }
      
      public function get classId() : int
      {
         return this.var_1856;
      }
   }
}
