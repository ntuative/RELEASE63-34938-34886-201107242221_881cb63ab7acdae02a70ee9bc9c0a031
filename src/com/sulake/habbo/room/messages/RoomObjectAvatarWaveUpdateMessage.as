package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarWaveUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1824:Boolean = false;
      
      public function RoomObjectAvatarWaveUpdateMessage(param1:Boolean = false)
      {
         super();
         this.var_1824 = param1;
      }
      
      public function get isWaving() : Boolean
      {
         return this.var_1824;
      }
   }
}
