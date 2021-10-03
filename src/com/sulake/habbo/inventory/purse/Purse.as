package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1992:int = 0;
      
      private var var_1991:int = 0;
      
      private var var_2557:int = 0;
      
      private var var_2560:Boolean = false;
      
      private var var_2558:Boolean = false;
      
      private var var_2559:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1992 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1991 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2557 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2560 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2558 = param1;
      }
      
      public function set clubIsExpiring(param1:Boolean) : void
      {
         this.var_2559 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1992;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1991;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2557;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2560;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2558;
      }
      
      public function get clubIsExpiring() : Boolean
      {
         return this.var_2559;
      }
   }
}
