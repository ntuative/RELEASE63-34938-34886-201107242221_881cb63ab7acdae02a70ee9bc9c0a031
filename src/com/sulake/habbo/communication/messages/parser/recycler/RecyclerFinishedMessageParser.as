package com.sulake.habbo.communication.messages.parser.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RecyclerFinishedMessageParser implements IMessageParser
   {
       
      
      private var _recyclerFinishedStatus:int = -1;
      
      private var var_2157:int = 0;
      
      public function RecyclerFinishedMessageParser()
      {
         super();
      }
      
      public function get recyclerFinishedStatus() : int
      {
         return this._recyclerFinishedStatus;
      }
      
      public function get prizeId() : int
      {
         return this.var_2157;
      }
      
      public function flush() : Boolean
      {
         this._recyclerFinishedStatus = -1;
         this.var_2157 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._recyclerFinishedStatus = param1.readInteger();
         this.var_2157 = param1.readInteger();
         return true;
      }
   }
}
