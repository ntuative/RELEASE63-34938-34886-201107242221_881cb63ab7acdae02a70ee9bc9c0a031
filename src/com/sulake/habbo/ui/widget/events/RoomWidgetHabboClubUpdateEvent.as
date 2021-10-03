package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_295:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2742:int = 0;
      
      private var var_2743:int = 0;
      
      private var var_2740:int = 0;
      
      private var var_2741:Boolean = false;
      
      private var var_1790:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_295,param6,param7);
         this.var_2742 = param1;
         this.var_2743 = param2;
         this.var_2740 = param3;
         this.var_2741 = param4;
         this.var_1790 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2742;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2743;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2740;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2741;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1790;
      }
   }
}
