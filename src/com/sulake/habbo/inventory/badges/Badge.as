package com.sulake.habbo.inventory.badges
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class Badge implements IThumbListDrawableItem
   {
      
      private static const const_1575:int = 13421772;
      
      private static const const_1574:int = 10275685;
       
      
      private var _type:String;
      
      private var var_2072:Boolean;
      
      private var _isSelected:Boolean;
      
      private var var_48:BitmapData;
      
      private var _window:IWindowContainer;
      
      private var var_1549:IWindow;
      
      private var var_2578:IWindow;
      
      private var var_1625:Boolean;
      
      public function Badge(param1:String, param2:IWindowContainer, param3:Boolean)
      {
         this.var_48 = new BitmapData(1,1,false,4278255360);
         super();
         this._type = param1;
         this._window = param2;
         this.var_1549 = this._window.findChildByTag("BG_COLOR");
         this.var_2578 = this._window.findChildByName("outline");
         this.var_1625 = param3;
         this.isSelected = false;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get isInUse() : Boolean
      {
         return this.var_2072;
      }
      
      public function get isSelected() : Boolean
      {
         return this._isSelected;
      }
      
      public function get iconImage() : BitmapData
      {
         return this.var_48;
      }
      
      public function get window() : IWindowContainer
      {
         return this._window;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         this.var_2072 = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         this._isSelected = param1;
         if(this.var_1549 == null)
         {
            return;
         }
         this.var_1549.color = !!this.var_1625 ? uint(const_1574) : uint(const_1575);
         this.var_2578.visible = param1;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         this.var_48 = param1;
         if(this.var_48 == null)
         {
            return;
         }
         if(this._window == null)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = this._window.findChildByName("bitmap") as IBitmapWrapperWindow;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:BitmapData = !!_loc2_.bitmap ? _loc2_.bitmap : new BitmapData(_loc2_.width,_loc2_.height);
         _loc3_.fillRect(_loc3_.rect,0);
         _loc3_.copyPixels(param1,param1.rect,new Point(_loc3_.width / 2 - param1.width / 2,_loc3_.height / 2 - param1.height / 2));
         _loc2_.bitmap = _loc3_;
      }
      
      public function set isUnseen(param1:Boolean) : void
      {
         if(this.var_1625 != param1)
         {
            this.var_1625 = param1;
            this.isSelected = this._isSelected;
         }
      }
   }
}
