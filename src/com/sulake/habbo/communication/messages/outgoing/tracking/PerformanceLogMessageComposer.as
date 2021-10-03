package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2869:int = 0;
      
      private var var_1457:String = "";
      
      private var var_1757:String = "";
      
      private var var_2362:String = "";
      
      private var var_2873:String = "";
      
      private var var_2097:int = 0;
      
      private var var_2874:int = 0;
      
      private var var_2871:int = 0;
      
      private var var_1456:int = 0;
      
      private var var_2872:int = 0;
      
      private var var_1454:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2869 = param1;
         this.var_1457 = param2;
         this.var_1757 = param3;
         this.var_2362 = param4;
         this.var_2873 = param5;
         if(param6)
         {
            this.var_2097 = 1;
         }
         else
         {
            this.var_2097 = 0;
         }
         this.var_2874 = param7;
         this.var_2871 = param8;
         this.var_1456 = param9;
         this.var_2872 = param10;
         this.var_1454 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2869,this.var_1457,this.var_1757,this.var_2362,this.var_2873,this.var_2097,this.var_2874,this.var_2871,this.var_1456,this.var_2872,this.var_1454];
      }
   }
}
