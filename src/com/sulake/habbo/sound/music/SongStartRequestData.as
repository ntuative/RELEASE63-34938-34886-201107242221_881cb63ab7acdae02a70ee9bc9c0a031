package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1644:int;
      
      private var var_2190:Number;
      
      private var var_2998:Number;
      
      private var var_3000:int;
      
      private var var_2999:Number;
      
      private var var_2997:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1644 = param1;
         this.var_2190 = param2;
         this.var_2998 = param3;
         this.var_2999 = param4;
         this.var_2997 = param5;
         this.var_3000 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1644;
      }
      
      public function get startPos() : Number
      {
         if(this.var_2190 < 0)
         {
            return 0;
         }
         return this.var_2190 + (getTimer() - this.var_3000) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2998;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2999;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2997;
      }
   }
}
