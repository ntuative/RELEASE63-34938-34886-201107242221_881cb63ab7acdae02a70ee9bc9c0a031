package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetCommandsMessageParser implements IMessageParser
   {
       
      
      private var var_1749:int;
      
      private var var_1630:Array;
      
      private var var_1258:Array;
      
      public function PetCommandsMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1749;
      }
      
      public function get allCommands() : Array
      {
         return this.var_1630;
      }
      
      public function get enabledCommands() : Array
      {
         return this.var_1258;
      }
      
      public function flush() : Boolean
      {
         this.var_1749 = -1;
         this.var_1630 = null;
         this.var_1258 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1749 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1630 = new Array();
         while(_loc2_-- > 0)
         {
            this.var_1630.push(param1.readInteger());
         }
         var _loc3_:int = param1.readInteger();
         this.var_1258 = new Array();
         while(_loc3_-- > 0)
         {
            this.var_1258.push(param1.readInteger());
         }
         return true;
      }
   }
}
