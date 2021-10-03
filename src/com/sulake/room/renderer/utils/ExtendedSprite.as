package com.sulake.room.renderer.utils
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class ExtendedSprite extends Bitmap
   {
       
      
      private var var_1569:int = 128;
      
      private var var_1570:Boolean = false;
      
      private var var_3093:Point;
      
      private var var_2458:String = "";
      
      private var var_2048:String = "";
      
      private var var_2598:Boolean = false;
      
      private var var_2618:Boolean = false;
      
      private var _bitmapData:ExtendedBitmapData = null;
      
      private var var_230:int = 0;
      
      private var _height:int = 0;
      
      private var var_1945:int = -1;
      
      private var var_1946:int = -1;
      
      public function ExtendedSprite()
      {
         super();
         this.var_3093 = new Point();
         cacheAsBitmap = false;
         this.enableAlpha();
      }
      
      public function get alphaActive() : Boolean
      {
         return this.var_1570;
      }
      
      public function get alphaTolerance() : int
      {
         return this.var_1569;
      }
      
      public function set alphaTolerance(param1:int) : void
      {
         this.var_1569 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2458;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2458 = param1;
      }
      
      public function get identifier() : String
      {
         return this.var_2048;
      }
      
      public function set identifier(param1:String) : void
      {
         this.var_2048 = param1;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2618;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2618 = param1;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2598;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2598 = param1;
      }
      
      public function dispose() : void
      {
         if(this._bitmapData != null)
         {
            this._bitmapData.dispose();
            this._bitmapData = null;
         }
      }
      
      override public function set bitmapData(param1:BitmapData) : void
      {
         var _loc2_:* = null;
         if(param1 == bitmapData)
         {
            return;
         }
         if(this._bitmapData != null)
         {
            this._bitmapData.dispose();
            this._bitmapData = null;
         }
         if(param1 != null)
         {
            this.var_230 = param1.width;
            this._height = param1.height;
            _loc2_ = param1 as ExtendedBitmapData;
            if(_loc2_ != null)
            {
               _loc2_.addReference();
               this._bitmapData = _loc2_;
            }
         }
         else
         {
            this.var_230 = 0;
            this._height = 0;
            this.var_1945 = -1;
            this.var_1946 = -1;
         }
         super.bitmapData = param1;
      }
      
      public function needsUpdate(param1:int, param2:int) : Boolean
      {
         if(param1 != this.var_1945 || param2 != this.var_1946)
         {
            this.var_1945 = param1;
            this.var_1946 = param2;
            return true;
         }
         if(this._bitmapData != null && this._bitmapData.disposed)
         {
            return true;
         }
         return false;
      }
      
      public function disableAlpha() : void
      {
         this.var_1570 = false;
      }
      
      public function enableAlpha() : void
      {
         this.disableAlpha();
         this.var_1570 = true;
      }
      
      override public function hitTestPoint(param1:Number, param2:Number, param3:Boolean = false) : Boolean
      {
         return this.hitTest(param1,param2);
      }
      
      public function hitTest(param1:int, param2:int) : Boolean
      {
         if(this.var_1569 > 255 || bitmapData == null)
         {
            return false;
         }
         if(param1 < 0 || param2 < 0 || param1 >= this.var_230 || param2 >= this._height)
         {
            return false;
         }
         return this.hitTestBitmapData(param1,param2);
      }
      
      private function hitTestBitmapData(param1:int, param2:int) : Boolean
      {
         var pixel:uint = 0;
         var x:int = param1;
         var y:int = param2;
         var retVal:Boolean = false;
         try
         {
            if(!this.var_1570 || true)
            {
               retVal = true;
            }
            else
            {
               pixel = bitmapData.getPixel32(x,y);
               pixel >>= 24;
               retVal = pixel > this.var_1569;
            }
         }
         catch(e:Error)
         {
         }
         return retVal;
      }
   }
}
