package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2503:Number = 0.0;
      
      private var var_2504:Number = 0.0;
      
      private var var_2544:Number = 0.0;
      
      private var var_2545:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2503 = param1;
         this.var_2504 = param2;
         this.var_2544 = param3;
         this.var_2545 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2503;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2504;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2544;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2545;
      }
   }
}
