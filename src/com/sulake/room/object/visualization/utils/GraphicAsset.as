package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_2410:String;
      
      private var var_2411:String;
      
      private var var_459:BitmapDataAsset;
      
      private var var_1607:Boolean;
      
      private var var_1606:Boolean;
      
      private var var_2412:Boolean;
      
      private var _offsetX:int;
      
      private var var_1229:int;
      
      private var var_230:int;
      
      private var _height:int;
      
      private var var_929:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_2410 = param1;
         this.var_2411 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_459 = _loc9_;
            this.var_929 = false;
         }
         else
         {
            this.var_459 = null;
            this.var_929 = true;
         }
         this.var_1607 = param4;
         this.var_1606 = param5;
         this._offsetX = param6;
         this.var_1229 = param7;
         this.var_2412 = param8;
      }
      
      public function dispose() : void
      {
         this.var_459 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_929 && this.var_459 != null)
         {
            _loc1_ = this.var_459.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_230 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_929 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1606;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1607;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_230;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_2410;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2411;
      }
      
      public function get asset() : IAsset
      {
         return this.var_459;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2412;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1607)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1606)
         {
            return this.var_1229;
         }
         return -(this.height + this.var_1229);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1229;
      }
   }
}
