package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1904:int;
      
      private var var_2554:int;
      
      private var var_1449:int;
      
      private var var_2318:int;
      
      private var var_142:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1904 = param1.readInteger();
         this.var_2554 = param1.readInteger();
         this.var_1449 = param1.readInteger();
         this.var_2318 = param1.readInteger();
         this.var_142 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1904);
      }
      
      public function get callId() : int
      {
         return this.var_1904;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2554;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1449;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2318;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_142;
      }
   }
}
