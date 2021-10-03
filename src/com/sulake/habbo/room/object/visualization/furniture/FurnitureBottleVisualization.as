package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1081:int = 20;
      
      private static const const_722:int = 9;
      
      private static const const_1541:int = -1;
       
      
      private var var_355:Array;
      
      private var var_884:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_355 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_884)
            {
               this.var_884 = true;
               this.var_355 = new Array();
               this.var_355.push(const_1541);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_884)
            {
               this.var_884 = false;
               this.var_355 = new Array();
               this.var_355.push(const_1081);
               this.var_355.push(const_722 + param1);
               this.var_355.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(0))
         {
            if(this.var_355.length > 0)
            {
               super.setAnimation(this.var_355.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
