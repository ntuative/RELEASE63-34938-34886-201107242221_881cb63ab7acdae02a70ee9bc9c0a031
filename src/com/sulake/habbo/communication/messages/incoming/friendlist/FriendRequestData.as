package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1326:int;
      
      private var var_2368:String;
      
      private var var_2369:int;
      
      private var var_2398:String;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1326 = param1.readInteger();
         this.var_2368 = param1.readString();
         this.var_2398 = param1.readString();
         this.var_2369 = this.var_1326;
      }
      
      public function get requestId() : int
      {
         return this.var_1326;
      }
      
      public function get requesterName() : String
      {
         return this.var_2368;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2369;
      }
      
      public function get figureString() : String
      {
         return this.var_2398;
      }
   }
}
