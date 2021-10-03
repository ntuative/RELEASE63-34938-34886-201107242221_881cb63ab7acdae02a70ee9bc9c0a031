package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCreatedMessageParser implements IMessageParser
   {
       
      
      private var var_419:int;
      
      private var var_2143:String;
      
      public function FlatCreatedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_419 = param1.readInteger();
         this.var_2143 = param1.readString();
         Logger.log("FLAT CREATED: " + this.var_419 + ", " + this.var_2143);
         return true;
      }
      
      public function get flatId() : int
      {
         return this.var_419;
      }
      
      public function get flatName() : String
      {
         return this.var_2143;
      }
   }
}
