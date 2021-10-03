package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_2084:int = 0;
      
      private var var_1582:Dictionary;
      
      private var var_1992:int = 0;
      
      private var var_1991:int = 0;
      
      private var var_2558:Boolean = false;
      
      private var var_2678:int = 0;
      
      private var var_2677:int = 0;
      
      private var var_2559:Boolean = false;
      
      public function Purse()
      {
         this.var_1582 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2084;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2084 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1992;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1992 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1991;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1991 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1992 > 0 || this.var_1991 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2558;
      }
      
      public function get isExpiring() : Boolean
      {
         return this.var_2559;
      }
      
      public function set isExpiring(param1:Boolean) : void
      {
         this.var_2559 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2558 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2678;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2678 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2677;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2677 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1582;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1582 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1582[param1];
      }
   }
}
