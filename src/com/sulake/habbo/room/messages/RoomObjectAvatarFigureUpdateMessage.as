package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_727:String;
      
      private var var_2404:String;
      
      private var var_1096:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_727 = param1;
         this.var_1096 = param2;
         this.var_2404 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_727;
      }
      
      public function get race() : String
      {
         return this.var_2404;
      }
      
      public function get gender() : String
      {
         return this.var_1096;
      }
   }
}
