package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1728:Number = 12;
       
      
      private var var_3012:int = -1;
      
      private var var_3015:int = -2;
      
      private var var_234:Vector3d = null;
      
      private var var_1399:Number = 0;
      
      private var var_1696:Number = 0;
      
      private var var_2201:Boolean = false;
      
      private var var_211:Vector3d = null;
      
      private var var_2203:Vector3d;
      
      private var var_3008:Boolean = false;
      
      private var var_3009:Boolean = false;
      
      private var var_3013:Boolean = false;
      
      private var var_3011:Boolean = false;
      
      private var var_3010:int = 0;
      
      private var var_3006:int = 0;
      
      private var _scale:int = 0;
      
      private var var_3007:int = 0;
      
      private var var_3014:int = 0;
      
      private var var_1762:int = -1;
      
      private var var_2202:int = 0;
      
      private var var_2204:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_2203 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_211;
      }
      
      public function get targetId() : int
      {
         return this.var_3012;
      }
      
      public function get targetCategory() : int
      {
         return this.var_3015;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_2203;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_3008;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_3009;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_3013;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_3011;
      }
      
      public function get screenWd() : int
      {
         return this.var_3010;
      }
      
      public function get screenHt() : int
      {
         return this.var_3006;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_3007;
      }
      
      public function get roomHt() : int
      {
         return this.var_3014;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1762;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_234 != null && this.var_211 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_3012 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_2203.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_3015 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_3008 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_3009 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_3013 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_3011 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_3010 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_3006 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_2204 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_3007 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_3014 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1762 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_234 == null)
         {
            this.var_234 = new Vector3d();
         }
         if(this.var_234.x != param1.x || this.var_234.y != param1.y || this.var_234.z != param1.z)
         {
            this.var_234.assign(param1);
            this.var_2202 = 0;
            _loc2_ = Vector3d.dif(this.var_234,this.var_211);
            this.var_1399 = _loc2_.length;
            this.var_2201 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_234 = null;
         this.var_211 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_211 != null)
         {
            return;
         }
         this.var_211 = new Vector3d();
         this.var_211.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_211 == null)
         {
            this.var_211 = new Vector3d();
         }
         this.var_211.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_234 != null && this.var_211 != null)
         {
            ++this.var_2202;
            if(this.var_2204)
            {
               this.var_2204 = false;
               this.var_211 = this.var_234;
               this.var_234 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_234,this.var_211);
            if(_loc3_.length > this.var_1399)
            {
               this.var_1399 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_211 = this.var_234;
               this.var_234 = null;
               this.var_1696 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1399);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1399 / const_1728;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_2201)
               {
                  if(_loc7_ < this.var_1696)
                  {
                     _loc7_ = this.var_1696;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_2201 = false;
                  }
               }
               this.var_1696 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_211 = Vector3d.sum(this.var_211,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1762 = -1;
      }
   }
}
