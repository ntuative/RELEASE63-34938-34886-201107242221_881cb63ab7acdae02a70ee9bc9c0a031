package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_750:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_651:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_750);
         this.var_651 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_651;
      }
   }
}
