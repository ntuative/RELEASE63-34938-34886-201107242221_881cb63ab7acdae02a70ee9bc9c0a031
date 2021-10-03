package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   
   public class ProgressBar implements IDisposable
   {
      
      private static const const_1557:int = 3;
      
      private static const const_1556:int = 10;
       
      
      private var var_51:HabboQuestEngine;
      
      private var _window:IWindowContainer;
      
      private var var_812:int;
      
      private var var_1253:String;
      
      private var var_2523:Boolean;
      
      private var var_1252:int;
      
      private var var_1254:int;
      
      private var var_2522:int;
      
      private var var_1892:int;
      
      private var var_283:int;
      
      private var var_1529:Boolean;
      
      private var var_813:BitmapData;
      
      private var var_667:Array;
      
      private var var_1893:ColorMatrixFilter;
      
      public function ProgressBar(param1:HabboQuestEngine, param2:IWindowContainer, param3:int, param4:String, param5:Boolean, param6:Point)
      {
         this.var_667 = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0];
         this.var_1893 = new ColorMatrixFilter(this.var_667);
         super();
         this.var_51 = param1;
         this._window = param2;
         this.var_812 = param3;
         this.var_1253 = param4;
         this.var_2523 = param5;
         var _loc7_:IWindowContainer = IWindowContainer(this._window.findChildByName("progress_bar_cont"));
         if(_loc7_ == null)
         {
            _loc7_ = IWindowContainer(this.var_51.getXmlWindow("ProgressBar"));
            this._window.addChild(_loc7_);
            _loc7_.x = param6.x;
            _loc7_.y = param6.y;
            _loc7_.width = this.var_812 + const_1556;
         }
         if(param5)
         {
            new PendingImage(this.var_51,this._window.findChildByName("bar_l"),"ach_progressbar1");
            new PendingImage(this.var_51,this._window.findChildByName("bar_c"),"ach_progressbar2");
            new PendingImage(this.var_51,this._window.findChildByName("bar_r"),"ach_progressbar3");
         }
         new PendingImage(this.var_51,this._window.findChildByName("bar_a_c"),"ach_progressbar4");
         new PendingImage(this.var_51,this._window.findChildByName("bar_a_r"),"ach_progressbar5");
      }
      
      public function refresh(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = param3 != this.var_2522 || param2 != this.var_1254;
         this.var_1254 = param2;
         this.var_1252 = param1;
         this.var_1892 = this.var_283;
         this.var_2522 = param3;
         if(_loc4_)
         {
            this.var_283 = this.getProgressWidth(this.var_1252);
         }
         this.var_1529 = true;
         this.updateView();
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:IWindowContainer = IWindowContainer(this._window.findChildByName("progress_bar_cont"));
         if(_loc2_ != null)
         {
            _loc2_.visible = param1;
         }
      }
      
      public function updateView() : void
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:int = 0;
         if(!this.var_1529)
         {
            return;
         }
         var _loc1_:IBitmapWrapperWindow = IBitmapWrapperWindow(this._window.findChildByName("bar_a_c"));
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this._window.findChildByName("bar_a_r"));
         if(_loc1_.bitmap == null || _loc2_.bitmap == null)
         {
            return;
         }
         if(this.var_2523)
         {
            _loc7_ = IBitmapWrapperWindow(this._window.findChildByName("bar_c"));
            _loc8_ = IBitmapWrapperWindow(this._window.findChildByName("bar_r"));
            if(_loc7_.bitmap == null || _loc8_.bitmap == null)
            {
               return;
            }
            _loc7_.width = this.var_812;
            _loc8_.x = this.var_812 + _loc1_.x;
         }
         if(this.var_813 == null)
         {
            this.var_813 = _loc1_.bitmap.clone();
         }
         var _loc3_:int = this.getProgressWidth(this.var_1252);
         if(this.var_283 < _loc3_)
         {
            _loc9_ = Math.min(Math.abs(this.var_283 - _loc3_),Math.abs(this.var_1892 - _loc3_));
            this.var_283 = Math.min(_loc3_,this.var_283 + Math.max(1,Math.round(Math.sqrt(_loc9_))));
         }
         var _loc4_:* = this.var_283 > 0;
         _loc1_.visible = _loc4_;
         _loc2_.visible = _loc4_;
         if(_loc4_)
         {
            _loc1_.width = this.var_813.width;
            if(this.var_283 < _loc3_)
            {
               this.changeProgressColorFilter();
               _loc1_.bitmap.applyFilter(this.var_813,this.var_813.rect,new Point(0,0),this.var_1893);
            }
            else
            {
               _loc1_.bitmap.copyPixels(this.var_813,this.var_813.rect,new Point(0,0),null,null,true);
            }
            _loc1_.width = this.var_283;
            _loc2_.x = this.var_283 + _loc1_.x;
         }
         this.var_1529 = this.var_283 < _loc3_;
         var _loc5_:ITextWindow = ITextWindow(this._window.findChildByName("progress_txt"));
         var _loc6_:int = !!this.var_1529 ? int(Math.round(this.var_283 / this.var_812 * this.var_1254)) : int(this.var_1252);
         this.var_51.localization.registerParameter(this.var_1253,"progress","" + _loc6_);
         this.var_51.localization.registerParameter(this.var_1253,"limit","" + this.var_1254);
         _loc5_.caption = this.var_51.localization.getKey(this.var_1253,this.var_1253);
         _loc5_.x = const_1557 + _loc1_.x + (this.var_812 - _loc5_.width) / 2;
      }
      
      public function dispose() : void
      {
         this.var_51 = null;
         this._window = null;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_51 == null;
      }
      
      private function getProgressWidth(param1:int) : int
      {
         return Math.max(0,Math.round(this.var_812 * param1 / this.var_1254));
      }
      
      private function changeProgressColorFilter() : void
      {
         var _loc1_:int = this.getProgressWidth(this.var_1252);
         var _loc2_:int = _loc1_ - this.var_1892;
         if(_loc2_ == 0)
         {
            return;
         }
         var _loc3_:Number = (_loc1_ - this.var_283) / _loc2_;
         this.var_667[3] = _loc3_;
         this.var_667[8] = _loc3_;
         this.var_667[0] = 1 - _loc3_;
         this.var_667[6] = 1 - _loc3_;
         this.var_667[12] = 1 - _loc3_;
         this.var_1893.matrix = this.var_667;
      }
   }
}
