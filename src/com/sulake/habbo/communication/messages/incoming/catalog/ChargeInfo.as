package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2607:int;
      
      private var var_2605:int;
      
      private var var_1204:int;
      
      private var var_1203:int;
      
      private var var_1798:int;
      
      private var var_2606:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2607 = param1.readInteger();
         this.var_2605 = param1.readInteger();
         this.var_1204 = param1.readInteger();
         this.var_1203 = param1.readInteger();
         this.var_1798 = param1.readInteger();
         this.var_2606 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2607;
      }
      
      public function get charges() : int
      {
         return this.var_2605;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1204;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1203;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2606;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1798;
      }
   }
}
