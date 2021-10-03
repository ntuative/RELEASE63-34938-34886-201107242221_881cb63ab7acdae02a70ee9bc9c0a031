package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1081:int = 20;
      
      private static const const_722:int = 10;
      
      private static const const_1540:int = 31;
      
      private static const const_1541:int = 32;
      
      private static const const_723:int = 30;
       
      
      private var var_355:Array;
      
      private var var_884:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_355 = new Array();
         super();
         super.setAnimation(const_723);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_884)
            {
               this.var_884 = true;
               this.var_355 = new Array();
               this.var_355.push(const_1540);
               this.var_355.push(const_1541);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_722)
         {
            if(this.var_884)
            {
               this.var_884 = false;
               this.var_355 = new Array();
               if(direction == 2)
               {
                  this.var_355.push(const_1081 + 5 - param1);
                  this.var_355.push(const_722 + 5 - param1);
               }
               else
               {
                  this.var_355.push(const_1081 + param1);
                  this.var_355.push(const_722 + param1);
               }
               this.var_355.push(const_723);
               return;
            }
            super.setAnimation(const_723);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
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
