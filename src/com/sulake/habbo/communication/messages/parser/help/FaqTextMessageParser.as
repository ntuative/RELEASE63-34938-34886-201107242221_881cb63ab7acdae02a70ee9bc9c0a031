package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FaqTextMessageParser implements IMessageParser
   {
       
      
      private var var_2187:int;
      
      private var var_2186:String;
      
      public function FaqTextMessageParser()
      {
         super();
      }
      
      public function get questionId() : int
      {
         return this.var_2187;
      }
      
      public function get answerText() : String
      {
         return this.var_2186;
      }
      
      public function flush() : Boolean
      {
         this.var_2187 = -1;
         this.var_2186 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2187 = param1.readInteger();
         this.var_2186 = param1.readString();
         return true;
      }
   }
}
