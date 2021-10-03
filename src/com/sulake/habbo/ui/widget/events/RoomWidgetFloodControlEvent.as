package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetFloodControlEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_1001:String = "RWFCE_FLOOD_CONTROL";
       
      
      private var var_2167:int = 0;
      
      public function RoomWidgetFloodControlEvent(param1:int)
      {
         super(const_1001,false,false);
         this.var_2167 = param1;
      }
      
      public function get seconds() : int
      {
         return this.var_2167;
      }
   }
}
