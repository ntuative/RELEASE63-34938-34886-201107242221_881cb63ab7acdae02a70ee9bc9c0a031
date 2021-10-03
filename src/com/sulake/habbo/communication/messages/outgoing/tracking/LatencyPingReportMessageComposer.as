package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_3040:int;
      
      private var var_3041:int;
      
      private var var_3039:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_3040 = param1;
         this.var_3041 = param2;
         this.var_3039 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_3040,this.var_3041,this.var_3039];
      }
      
      public function dispose() : void
      {
      }
   }
}
