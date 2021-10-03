package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1846:int;
      
      private var var_2043:int;
      
      private var var_2042:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2043 = param1.readInteger();
         this.var_1846 = param1.readInteger();
         this.var_2042 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1846 = 0;
         this.var_2043 = 0;
         this.var_2042 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1846;
      }
      
      public function get messageId() : int
      {
         return this.var_2043;
      }
      
      public function get timestamp() : String
      {
         return this.var_2042;
      }
   }
}
