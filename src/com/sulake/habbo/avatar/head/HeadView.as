package com.sulake.habbo.avatar.head
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.avatar.common.AvatarEditorGridView;
   import com.sulake.habbo.avatar.common.CategoryBaseView;
   import com.sulake.habbo.avatar.common.IAvatarEditorCategoryModel;
   import com.sulake.habbo.avatar.common.IAvatarEditorCategoryView;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.utils.Dictionary;
   
   public class HeadView extends CategoryBaseView implements IAvatarEditorCategoryView
   {
       
      
      public function HeadView(param1:IAvatarEditorCategoryModel, param2:IHabboWindowManager, param3:IAssetLibrary)
      {
         super(param2,param3,param1);
      }
      
      override public function init() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(!_window)
         {
            _loc1_ = _assetLibrary.getAssetByName("avatareditor_head_base") as XmlAsset;
            if(_loc1_)
            {
               _window = IWindowContainer(_windowManager.buildFromXML(_loc1_.content as XML));
               _window.visible = false;
               _window.procedure = this.windowEventProc;
            }
         }
         if(!var_40)
         {
            var_40 = new Dictionary();
            var_40["null"] = new AvatarEditorGridView(var_78,FigureData.const_219,_windowManager,_assetLibrary);
            var_40["null"] = new AvatarEditorGridView(var_78,FigureData.const_256,_windowManager,_assetLibrary);
            var_40["null"] = new AvatarEditorGridView(var_78,FigureData.const_304,_windowManager,_assetLibrary);
            var_40["null"] = new AvatarEditorGridView(var_78,FigureData.const_307,_windowManager,_assetLibrary);
            var_40["null"] = new AvatarEditorGridView(var_78,FigureData.const_250,_windowManager,_assetLibrary);
         }
         else
         {
            for each(_loc2_ in var_40)
            {
               _loc2_.initFromList();
            }
         }
         _isInitialized = true;
         attachImages();
         if(var_78 && var_170 == "")
         {
            var_78.switchCategory(FigureData.const_219);
         }
      }
      
      public function switchCategory(param1:String) : void
      {
         if(_window == null)
         {
            return;
         }
         if(false)
         {
            return;
         }
         if(var_170 == param1)
         {
            return;
         }
         inactivateTab(var_52);
         switch(param1)
         {
            case FigureData.const_219:
               var_52 = "tab_hair";
               break;
            case FigureData.const_256:
               var_52 = "tab_hat";
               break;
            case FigureData.const_304:
               var_52 = "tab_accessories";
               break;
            case FigureData.const_307:
               var_52 = "tab_eyewear";
               break;
            case FigureData.const_250:
               var_52 = "tab_masks";
               break;
            default:
               throw new Error("[HeadView] Unknown item category: \"" + param1 + "\"");
         }
         var_170 = param1;
         activateTab(var_52);
         if(!_isInitialized)
         {
            this.init();
         }
         updateGridView();
      }
      
      private function windowEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            switch(param2.name)
            {
               case "tab_hair":
                  this.switchCategory(FigureData.const_219);
                  break;
               case "tab_hat":
                  this.switchCategory(FigureData.const_256);
                  break;
               case "tab_accessories":
                  this.switchCategory(FigureData.const_304);
                  break;
               case "tab_eyewear":
                  this.switchCategory(FigureData.const_307);
                  break;
               case "tab_masks":
                  this.switchCategory(FigureData.const_250);
            }
         }
         else if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            switch(param2.name)
            {
               case "tab_hair":
               case "tab_hat":
               case "tab_accessories":
               case "tab_eyewear":
               case "tab_masks":
                  activateTab(param2.name);
            }
         }
         else if(param1.type == WindowMouseEvent.const_25)
         {
            switch(param2.name)
            {
               case "tab_hair":
               case "tab_hat":
               case "tab_accessories":
               case "tab_eyewear":
               case "tab_masks":
                  if(var_52 != param2.name)
                  {
                     inactivateTab(param2.name);
                  }
            }
         }
      }
   }
}
