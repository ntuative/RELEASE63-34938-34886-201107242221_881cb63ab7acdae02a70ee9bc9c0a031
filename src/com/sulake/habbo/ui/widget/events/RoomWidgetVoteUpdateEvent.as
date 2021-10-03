package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_162:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_165:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1331:String;
      
      private var var_1576:Array;
      
      private var var_1251:Array;
      
      private var var_1982:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1331 = param2;
         this.var_1576 = param3;
         this.var_1251 = param4;
         if(this.var_1251 == null)
         {
            this.var_1251 = [];
         }
         this.var_1982 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1331;
      }
      
      public function get choices() : Array
      {
         return this.var_1576.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1251.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1982;
      }
   }
}
