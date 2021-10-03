package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1541:int = 3;
      
      private static const const_1581:int = 2;
      
      private static const const_1579:int = 1;
      
      private static const const_1580:int = 15;
       
      
      private var var_355:Array;
      
      private var var_1273:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_355 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1581)
         {
            this.var_355 = new Array();
            this.var_355.push(const_1579);
            this.var_1273 = const_1580;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1273 > 0)
         {
            --this.var_1273;
         }
         if(this.var_1273 == 0)
         {
            if(this.var_355.length > 0)
            {
               super.setAnimation(this.var_355.shift());
            }
         }
         return super.updateAnimation(param1);
      }
      
      override protected function usesAnimationResetting() : Boolean
      {
         return true;
      }
   }
}
