package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1440:IHabboTracking;
      
      private var var_2127:Boolean = false;
      
      private var var_2694:int = 0;
      
      private var var_2000:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1440 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1440 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2127 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2694 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_2127)
         {
            return;
         }
         ++this.var_2000;
         if(this.var_2000 <= this.var_2694)
         {
            this.var_1440.trackGoogle("toolbar",param1);
         }
      }
   }
}
