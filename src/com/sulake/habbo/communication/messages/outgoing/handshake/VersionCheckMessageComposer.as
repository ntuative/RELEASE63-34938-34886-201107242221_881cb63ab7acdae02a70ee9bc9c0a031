package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2764:int;
      
      private var var_1562:String;
      
      private var var_2765:String;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         this.var_2764 = param1;
         this.var_1562 = param2;
         this.var_2765 = param3;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2764,this.var_1562,this.var_2765];
      }
   }
}
