package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1331:String;
      
      private var var_1576:Array;
      
      private var var_1251:Array;
      
      private var var_1982:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1331;
      }
      
      public function get choices() : Array
      {
         return this.var_1576.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1251.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1982;
      }
      
      public function flush() : Boolean
      {
         this.var_1331 = "";
         this.var_1576 = [];
         this.var_1251 = [];
         this.var_1982 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1331 = param1.readString();
         this.var_1576 = [];
         this.var_1251 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1576.push(param1.readString());
            this.var_1251.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1982 = param1.readInteger();
         return true;
      }
   }
}
