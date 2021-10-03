package com.sulake.habbo.room.object.visualization.data
{
   public class AnimationStateData
   {
       
      
      private var var_2085:int = -1;
      
      private var var_2857:int = 0;
      
      private var var_1695:Boolean = false;
      
      private var var_683:int = 0;
      
      private var _frames:Array;
      
      private var var_1084:Array;
      
      private var var_1083:Array;
      
      private var var_713:int = 0;
      
      public function AnimationStateData()
      {
         this._frames = [];
         this.var_1084 = [];
         this.var_1083 = [];
         super();
      }
      
      public function get animationOver() : Boolean
      {
         return this.var_1695;
      }
      
      public function set animationOver(param1:Boolean) : void
      {
         this.var_1695 = param1;
      }
      
      public function get frameCounter() : int
      {
         return this.var_683;
      }
      
      public function set frameCounter(param1:int) : void
      {
         this.var_683 = param1;
      }
      
      public function get animationId() : int
      {
         return this.var_2085;
      }
      
      public function set animationId(param1:int) : void
      {
         if(param1 != this.var_2085)
         {
            this.var_2085 = param1;
            this.resetAnimationFrames(false);
         }
      }
      
      public function get animationAfterTransitionId() : int
      {
         return this.var_2857;
      }
      
      public function set animationAfterTransitionId(param1:int) : void
      {
         this.var_2857 = param1;
      }
      
      public function dispose() : void
      {
         this.recycleFrames();
         this._frames = null;
         this.var_1084 = null;
         this.var_1083 = null;
      }
      
      public function setLayerCount(param1:int) : void
      {
         this.var_713 = param1;
         this.resetAnimationFrames();
      }
      
      public function resetAnimationFrames(param1:Boolean = true) : void
      {
         var _loc3_:* = null;
         if(param1 || this._frames == null)
         {
            this.recycleFrames();
            this._frames = [];
         }
         this.var_1084 = [];
         this.var_1083 = [];
         this.var_1695 = false;
         this.var_683 = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_713)
         {
            if(param1 || this._frames.length <= _loc2_)
            {
               this._frames[_loc2_] = null;
            }
            else
            {
               _loc3_ = this._frames[_loc2_];
               if(_loc3_ != null)
               {
                  _loc3_.recycle();
                  this._frames[_loc2_] = AnimationFrame.allocate(_loc3_.id,_loc3_.x,_loc3_.y,_loc3_.repeats,0,_loc3_.isLastFrame);
               }
            }
            this.var_1084[_loc2_] = false;
            this.var_1083[_loc2_] = false;
            _loc2_++;
         }
      }
      
      private function recycleFrames() : void
      {
         var _loc1_:* = null;
         if(this._frames != null)
         {
            for each(_loc1_ in this._frames)
            {
               if(_loc1_ != null)
               {
                  _loc1_.recycle();
               }
            }
         }
      }
      
      public function getFrame(param1:int) : AnimationFrame
      {
         if(param1 >= 0 && param1 < this.var_713)
         {
            return this._frames[param1];
         }
         return null;
      }
      
      public function setFrame(param1:int, param2:AnimationFrame) : void
      {
         var _loc3_:* = null;
         if(param1 >= 0 && param1 < this.var_713)
         {
            _loc3_ = this._frames[param1];
            if(_loc3_ != null)
            {
               _loc3_.recycle();
            }
            this._frames[param1] = param2;
         }
      }
      
      public function getAnimationPlayed(param1:int) : Boolean
      {
         if(param1 >= 0 && param1 < this.var_713)
         {
            return this.var_1083[param1];
         }
         return true;
      }
      
      public function setAnimationPlayed(param1:int, param2:Boolean) : void
      {
         if(param1 >= 0 && param1 < this.var_713)
         {
            this.var_1083[param1] = param2;
         }
      }
      
      public function getLastFramePlayed(param1:int) : Boolean
      {
         if(param1 >= 0 && param1 < this.var_713)
         {
            return this.var_1084[param1];
         }
         return true;
      }
      
      public function setLastFramePlayed(param1:int, param2:Boolean) : void
      {
         if(param1 >= 0 && param1 < this.var_713)
         {
            this.var_1084[param1] = param2;
         }
      }
   }
}
