package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2652:int;
      
      private var var_2653:int;
      
      private var var_895:Boolean;
      
      private var var_2654:int;
      
      private var var_2656:int;
      
      private var var_2655:int;
      
      private var var_2651:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2652 = param1.readInteger();
         this.var_2653 = param1.readInteger();
         this.var_895 = param1.readBoolean();
         this.var_2654 = param1.readInteger();
         this.var_2656 = param1.readInteger();
         this.var_2655 = param1.readInteger();
         this.var_2651 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2652;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2653;
      }
      
      public function get online() : Boolean
      {
         return this.var_895;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2654;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2656;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2655;
      }
      
      public function get banCount() : int
      {
         return this.var_2651;
      }
   }
}
