package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class InitCryptoMessageComposer implements IMessageComposer
   {
       
      
      private var var_206:Array;
      
      public function InitCryptoMessageComposer(param1:int)
      {
         super();
         this.var_206 = new Array();
         this.var_206.push(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return this.var_206;
      }
   }
}
