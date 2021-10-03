package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_1013:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1751:String = "inventory_effects";
      
      public static const const_1369:String = "inventory_badges";
      
      public static const const_1878:String = "inventory_clothes";
      
      public static const const_2016:String = "inventory_furniture";
       
      
      private var var_2293:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_1013);
         this.var_2293 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2293;
      }
   }
}
