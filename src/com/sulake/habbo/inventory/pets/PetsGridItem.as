package com.sulake.habbo.inventory.pets
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.avatar.IAvatarRenderManager;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class PetsGridItem
   {
      
      private static const const_1575:int = 13421772;
      
      private static const const_1574:int = 10275685;
       
      
      private var _petData:PetData;
      
      private var _window:IWindowContainer;
      
      private var var_1549:IWindow;
      
      private var var_2578:IWindow;
      
      private var _isSelected:Boolean;
      
      private var var_1548:PetsView;
      
      private var var_1550:Boolean;
      
      private var var_1625:Boolean;
      
      public function PetsGridItem(param1:PetsView, param2:PetData, param3:IHabboWindowManager, param4:IAssetLibrary, param5:IAvatarRenderManager, param6:Boolean)
      {
         super();
         if(param1 == null || param2 == null || param3 == null || param4 == null || param5 == null)
         {
            return;
         }
         this.var_1548 = param1;
         this._petData = param2;
         this.var_1625 = param6;
         var _loc7_:XmlAsset = param4.getAssetByName("inventory_thumb_xml") as XmlAsset;
         if(_loc7_ == null || _loc7_.content == null)
         {
            return;
         }
         this._window = param3.buildFromXML(_loc7_.content as XML) as IWindowContainer;
         this.var_1549 = this._window.findChildByTag("BG_COLOR");
         this.var_2578 = this._window.findChildByName("outline");
         var _loc8_:BitmapDataAsset = param4.getAssetByName("thumb_selected_outline_png") as BitmapDataAsset;
         var _loc9_:IBitmapWrapperWindow = this._window.findChildByName("outline") as IBitmapWrapperWindow;
         _loc9_.bitmap = _loc8_.content as BitmapData;
         _loc9_.disposesBitmap = false;
         this._window.procedure = this.eventHandler;
         var _loc10_:BitmapData = param1.getPetImage(param2.type,param2.breed,param2.color,3,false);
         var _loc11_:IBitmapWrapperWindow = this._window.findChildByName("bitmap") as IBitmapWrapperWindow;
         var _loc12_:BitmapData = new BitmapData(_loc11_.width,_loc11_.height);
         _loc12_.fillRect(_loc12_.rect,0);
         _loc12_.copyPixels(_loc10_,_loc10_.rect,new Point(_loc12_.width / 2 - _loc10_.width / 2,_loc12_.height / 2 - _loc10_.height / 2));
         _loc11_.bitmap = _loc12_;
         this.setSelected(false);
      }
      
      private function eventHandler(param1:WindowEvent, param2:IWindow) : void
      {
         switch(param1.type)
         {
            case WindowMouseEvent.const_44:
               this.var_1548.setSelectedGridItem(this);
               this.var_1550 = true;
               break;
            case WindowMouseEvent.const_55:
               this.var_1550 = false;
               break;
            case WindowMouseEvent.const_25:
               if(this.var_1550)
               {
                  this.var_1550 = false;
                  this.var_1548.placePetToRoom(this._petData.id,true);
               }
         }
      }
      
      public function setSelected(param1:Boolean) : void
      {
         this._isSelected = param1;
         if(!this._window || !this.var_1549)
         {
            return;
         }
         this.var_1549.color = !!this.var_1625 ? uint(const_1574) : uint(const_1575);
         this.var_2578.visible = param1;
      }
      
      public function dispose() : void
      {
         this.var_1548 = null;
         this._petData = null;
         this.var_1549 = null;
         if(this._window != null)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get pet() : PetData
      {
         return this._petData;
      }
   }
}
