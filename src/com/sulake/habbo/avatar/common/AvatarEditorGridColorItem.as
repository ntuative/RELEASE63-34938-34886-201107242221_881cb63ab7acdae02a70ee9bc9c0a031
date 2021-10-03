package com.sulake.habbo.avatar.common
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IIconWindow;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import com.sulake.habbo.session.HabboClubLevelEnum;
   import com.sulake.habbo.window.enum.HabboIconType;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class AvatarEditorGridColorItem
   {
       
      
      private var var_78:IAvatarEditorCategoryModel;
      
      private var _window:IWindowContainer;
      
      private var var_1067:IPartColor;
      
      private var _isSelected:Boolean = false;
      
      private var var_653:BitmapData;
      
      private var var_979:BitmapData;
      
      private var var_981:BitmapData;
      
      public function AvatarEditorGridColorItem(param1:IWindowContainer, param2:IAvatarEditorCategoryModel, param3:IPartColor)
      {
         super();
         this.var_78 = param2;
         this._window = param1;
         this._window.background = true;
         this.var_1067 = param3;
         var _loc4_:BitmapDataAsset = param2.controller.manager.assets.getAssetByName("editor_clr_40x32_1") as BitmapDataAsset;
         this.var_653 = _loc4_.content as BitmapData;
         var _loc5_:BitmapDataAsset = param2.controller.manager.assets.getAssetByName("editor_clr_40x32_2") as BitmapDataAsset;
         this.var_979 = _loc5_.content as BitmapData;
         var _loc6_:BitmapDataAsset = param2.controller.manager.assets.getAssetByName("editor_clr_40x32_3") as BitmapDataAsset;
         this.var_981 = _loc6_.content as BitmapData;
         this.updateThumbData();
      }
      
      public function dispose() : void
      {
         this.var_78 = null;
         if(this._window != null)
         {
            if(!this._window.disposed)
            {
               this._window.dispose();
            }
         }
         this._window = null;
         this.var_1067 = null;
         this.var_653 = null;
         this.var_979 = null;
         this.var_981 = null;
      }
      
      public function get view() : IWindowContainer
      {
         return this._window;
      }
      
      public function get isSelected() : Boolean
      {
         return this._isSelected;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         this._isSelected = param1;
         this.updateThumbData();
      }
      
      private function updateThumbData() : void
      {
         var _loc5_:* = null;
         if(this._window == null)
         {
            return;
         }
         if(this._window.disposed)
         {
            return;
         }
         var _loc1_:IBitmapWrapperWindow = this._window.findChildByTag("BG_BORDER") as IBitmapWrapperWindow;
         if(_loc1_ != null)
         {
            _loc1_.bitmap = new BitmapData(this.var_653.width,this.var_653.height,true,0);
            _loc1_.bitmap.copyPixels(this.var_653,this.var_653.rect,new Point(0,0));
         }
         var _loc2_:IBitmapWrapperWindow = this._window.findChildByTag("COLOR_IMAGE") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.bitmap = new BitmapData(this.var_979.width,this.var_979.height,true,0);
            _loc5_ = this.var_979.clone();
            _loc5_.colorTransform(_loc5_.rect,this.var_1067.colorTransform);
            _loc2_.bitmap.copyPixels(_loc5_,_loc5_.rect,new Point(0,0));
         }
         var _loc3_:IBitmapWrapperWindow = this._window.findChildByTag("COLOR_CHOSEN") as IBitmapWrapperWindow;
         if(_loc3_ != null)
         {
            if(this._isSelected)
            {
               _loc3_.bitmap = new BitmapData(this.var_981.width,this.var_981.height,true,16777215);
               _loc3_.bitmap.copyPixels(this.var_981,this.var_981.rect,new Point(0,0),null,null,true);
               _loc3_.visible = true;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         var _loc4_:IIconWindow = this._window.findChildByTag("CLUB_ICON") as IIconWindow;
         if(_loc4_)
         {
            if(this.var_1067)
            {
               switch(this.var_1067.clubLevel)
               {
                  case HabboClubLevelEnum.const_53:
                     _loc4_.visible = false;
                     break;
                  case HabboClubLevelEnum.const_35:
                     _loc4_.style = HabboIconType.const_754;
                     _loc4_.visible = true;
                     break;
                  case HabboClubLevelEnum.const_42:
                     _loc4_.style = HabboIconType.const_881;
                     _loc4_.visible = true;
               }
            }
            else
            {
               _loc4_.visible = false;
            }
         }
      }
      
      public function get partColor() : IPartColor
      {
         return this.var_1067;
      }
   }
}
