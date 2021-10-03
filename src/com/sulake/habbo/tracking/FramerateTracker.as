package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1755:int;
      
      private var var_2447:int;
      
      private var var_816:int;
      
      private var var_523:Number;
      
      private var var_2448:Boolean;
      
      private var var_2446:int;
      
      private var var_1850:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_523);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2447 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2446 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2448 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_816;
         if(this.var_816 == 1)
         {
            this.var_523 = param1;
            this.var_1755 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_816);
            this.var_523 = this.var_523 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2448 && param3 - this.var_1755 >= this.var_2447)
         {
            this.var_816 = 0;
            if(this.var_1850 < this.var_2446)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_1850;
               this.var_1755 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
