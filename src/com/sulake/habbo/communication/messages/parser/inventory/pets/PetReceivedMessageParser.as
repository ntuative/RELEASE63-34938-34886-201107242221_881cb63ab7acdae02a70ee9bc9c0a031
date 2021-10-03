package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_2179:Boolean;
      
      private var var_1128:PetData;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2179 = param1.readBoolean();
         this.var_1128 = new PetData(param1);
         Logger.log("Got PetReceived: " + this.var_2179 + ", " + this.var_1128.id + ", " + this.var_1128.name + ", " + this.var_1128.type + ", " + this.var_1128.breed + ", " + this.pet.color);
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return this.var_2179;
      }
      
      public function get pet() : PetData
      {
         return this.var_1128;
      }
   }
}
