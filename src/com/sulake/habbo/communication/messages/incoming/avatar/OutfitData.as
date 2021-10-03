package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2128:int;
      
      private var var_2398:String;
      
      private var var_1096:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2128 = param1.readInteger();
         this.var_2398 = param1.readString();
         this.var_1096 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_2128;
      }
      
      public function get figureString() : String
      {
         return this.var_2398;
      }
      
      public function get gender() : String
      {
         return this.var_1096;
      }
   }
}
