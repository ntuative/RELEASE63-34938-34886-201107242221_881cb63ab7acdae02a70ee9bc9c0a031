package com.sulake.habbo.friendbar.view
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.IAvatarRenderManager;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.friendbar.HabboFriendBar;
   import com.sulake.habbo.friendbar.data.FriendRequest;
   import com.sulake.habbo.friendbar.data.IFriendEntity;
   import com.sulake.habbo.friendbar.data.IHabboFriendBarData;
   import com.sulake.habbo.friendbar.events.FindFriendsNotificationEvent;
   import com.sulake.habbo.friendbar.events.FriendBarUpdateEvent;
   import com.sulake.habbo.friendbar.events.FriendRequestUpdateEvent;
   import com.sulake.habbo.friendbar.events.NewMessageEvent;
   import com.sulake.habbo.friendbar.events.NotificationEvent;
   import com.sulake.habbo.friendbar.iid.IIDHabboFriendBarData;
   import com.sulake.habbo.friendbar.view.tabs.AddFriendsTab;
   import com.sulake.habbo.friendbar.view.tabs.FriendEntityTab;
   import com.sulake.habbo.friendbar.view.tabs.FriendRequestTab;
   import com.sulake.habbo.friendbar.view.tabs.FriendRequestsTab;
   import com.sulake.habbo.friendbar.view.tabs.ITab;
   import com.sulake.habbo.friendbar.view.tabs.Tab;
   import com.sulake.habbo.friendbar.view.tabs.tokens.Token;
   import com.sulake.habbo.friendbar.view.utils.FriendListIcon;
   import com.sulake.habbo.friendbar.view.utils.Icon;
   import com.sulake.habbo.friendbar.view.utils.MessengerIcon;
   import com.sulake.habbo.friendbar.view.utils.StreamIcon;
   import com.sulake.habbo.friendbar.view.utils.TextCropper;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboAlertDialogFlag;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import com.sulake.iid.IIDAvatarRenderManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import flash.display.BitmapData;
   import flash.events.Event;
   import iid.IIDHabboWindowManager;
   
   public class HabboFriendBarView extends AbstractView implements IHabboFriendBarView, IAvatarImageListener
   {
      
      private static const const_1660:int = 127;
      
      private static const const_484:int = 1;
      
      private static const const_1659:int = 2;
      
      private static const const_719:int = 3;
      
      private static const const_1143:int = 3;
      
      private static const const_1647:Boolean = false;
      
      private static const const_720:int = 3;
      
      private static const const_1650:String = "arrow";
      
      private static const const_1651:String = "left";
      
      private static const const_1657:String = "right";
      
      private static const const_1662:String = "bar_xml";
      
      private static const const_1648:String = "toggle_xml";
      
      private static const const_76:String = "container";
      
      private static const const_1145:String = "wrapper";
      
      private static const const_1649:String = "border";
      
      private static const const_721:String = "list";
      
      private static const const_469:String = "header";
      
      private static const const_317:String = "canvas";
      
      private static const ICON:String = "icon";
      
      private static const const_1042:String = "pieces";
      
      private static const const_1653:String = "button_left";
      
      private static const BUTTON_RIGHT_SINGLE:String = "button_right";
      
      private static const const_1661:String = "button_left_page";
      
      private static const const_1655:String = "button_right_page";
      
      private static const const_1654:String = "button_left_end";
      
      private static const const_1656:String = "button_right_end";
      
      private static const const_1431:String = "button_close";
      
      private static const const_1652:String = "button_open";
      
      private static const const_1658:String = "link_friendlist";
      
      private static const const_1142:String = "messenger";
      
      private static const const_1144:String = "friendlist";
      
      private static const const_718:String = "stream";
      
      private static const const_2119:String = "stream_new_label";
       
      
      private var var_46:IHabboFriendBarData;
      
      private var var_45:IWindowContainer;
      
      private var var_231:IWindowContainer;
      
      private var var_76:Vector.<ITab>;
      
      private var var_1352:ITab;
      
      private var var_1092:int = -1;
      
      private var _startIndex:int = 0;
      
      private var var_1652:TextCropper;
      
      private var var_589:FriendListIcon;
      
      private var var_407:MessengerIcon;
      
      private var var_887:StreamIcon;
      
      private var var_1653:Boolean = true;
      
      public function HabboFriendBarView(param1:HabboFriendBar, param2:uint, param3:IAssetLibrary)
      {
         super(param1,param2,param3);
         this.var_1652 = new TextCropper();
         this.var_76 = new Vector.<ITab>();
         queueInterface(new IIDAvatarRenderManager(),this.onAvatarRendererAvailable);
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerAvailable);
         queueInterface(new IIDHabboFriendBarData(),this.onFriendBarDataAvailable);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationAvailable);
      }
      
      public function setMessengerIconNotify(param1:Boolean) : void
      {
         if(this.var_407)
         {
            this.var_407.notify(param1);
         }
      }
      
      public function setFriendListIconNotify(param1:Boolean) : void
      {
         if(this.var_589)
         {
            this.var_589.notify(param1);
         }
      }
      
      public function setStreamIconNotify(param1:Boolean) : void
      {
         if(this.var_887)
         {
            this.var_887.notify(param1);
         }
      }
      
      public function refreshEventStream() : void
      {
         this.var_46.refreshOfflineStream();
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_407)
            {
               this.var_407.dispose();
               this.var_407 = null;
            }
            if(this.var_589)
            {
               this.var_589.dispose();
               this.var_589 = null;
            }
            if(this.var_887)
            {
               this.var_887.dispose();
               this.var_887 = null;
            }
            if(this.var_231)
            {
               this.var_231.dispose();
               this.var_231 = null;
            }
            if(this.var_45)
            {
               this.var_45.dispose();
               this.var_45 = null;
            }
            while(this.var_76.length > 0)
            {
               ITab(this.var_76.pop()).dispose();
            }
            if(this.var_46)
            {
               if(!this.var_46.disposed)
               {
                  if(this.var_46.events)
                  {
                     this.var_46.events.removeEventListener(FriendBarUpdateEvent.const_775,this.onRefreshView);
                     this.var_46.events.removeEventListener(FindFriendsNotificationEvent.TYPE,this.onFindFriendsNotification);
                     this.var_46.events.removeEventListener(FriendRequestUpdateEvent.const_990,this.onFriendRequestUpdate);
                     this.var_46.events.removeEventListener(NewMessageEvent.const_758,this.onNewInstantMessage);
                     this.var_46.events.removeEventListener(NotificationEvent.const_817,this.onFriendNotification);
                  }
                  this.var_46.release(new IIDHabboFriendBarData());
                  this.var_46 = null;
               }
            }
            if(_windowManager)
            {
               if(true)
               {
                  _windowManager.getWindowContext(const_484).getDesktopWindow().removeEventListener(WindowEvent.const_40,this.onDesktopResized);
               }
            }
            this.var_1652.dispose();
            this.var_1652 = null;
            super.dispose();
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         if(this.var_45)
         {
            this.var_45.visible = param1;
            this.var_45.activate();
         }
         if(this.var_231)
         {
            this.var_231.visible = !param1;
            if(this.var_45)
            {
               this.var_231.x = this.var_45.x;
               this.var_231.y = this.var_45.y;
               this.var_231.activate();
            }
         }
      }
      
      public function get visible() : Boolean
      {
         return this.var_45 && this.var_45.visible;
      }
      
      public function populate() : void
      {
         var _loc5_:int = 0;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:int = 0;
         var _loc16_:* = null;
         var _loc1_:int = this.var_1092;
         this.deSelect(false);
         var _loc2_:IWindowContainer = this.var_45.findChildByName(const_76) as IWindowContainer;
         var _loc3_:IItemListWindow = _loc2_.findChildByName(const_721) as IItemListWindow;
         _loc3_.autoArrangeItems = false;
         var _loc4_:int = _loc3_.numListItems;
         _loc5_ = _loc4_;
         while(_loc5_ > 0)
         {
            _loc3_.removeListItemAt(_loc5_ - 1);
            _loc5_--;
         }
         while(this.var_76.length > 0)
         {
            this.var_76.pop().recycle();
         }
         var _loc6_:int = this.var_46.numFriends;
         var _loc7_:int = this.var_46.numFriendRequests;
         var _loc8_:int = this.maxNumOfTabsVisible;
         var _loc9_:int = _loc6_ + (!!this.var_1653 ? 1 : 0) + (_loc7_ > 0 ? 1 : 0);
         var _loc10_:int = Math.min(_loc8_,_loc9_);
         if(this._startIndex + _loc10_ > _loc9_)
         {
            this._startIndex = Math.max(0,this._startIndex - (this._startIndex + _loc10_ - _loc9_));
         }
         var _loc11_:int = this._startIndex;
         if(_loc7_ > 0)
         {
            if(this._startIndex == 0)
            {
               if(this.var_76.length < _loc8_)
               {
                  if(_loc7_ == 1)
                  {
                     _loc12_ = this.var_46.getFriendRequestAt(0);
                     _loc14_ = FriendRequestTab.allocate(_loc12_);
                     this.var_76.push(_loc14_);
                     _loc3_.addListItem(_loc14_.window);
                  }
                  else if(_loc7_ > 1)
                  {
                     _loc14_ = FriendRequestsTab.allocate(this.var_46.getFriendRequestList());
                     this.var_76.push(_loc14_);
                     _loc3_.addListItem(_loc14_.window);
                  }
               }
            }
            else
            {
               _loc11_--;
            }
         }
         _loc5_ = _loc11_;
         while(_loc5_ < _loc6_ + _loc11_)
         {
            if(_loc5_ >= _loc6_)
            {
               break;
            }
            if(this.var_76.length >= _loc8_)
            {
               break;
            }
            _loc13_ = this.var_46.getFriendAt(_loc5_);
            _loc14_ = FriendEntityTab.allocate(_loc13_);
            this.var_76.push(_loc14_);
            _loc3_.addListItem(_loc14_.window);
            _loc5_++;
         }
         if(this.var_1653)
         {
            if(this.var_76.length < _loc8_)
            {
               _loc15_ = 1;
               if(this.var_76.length + _loc15_ < const_720)
               {
                  _loc15_ = Math.min(_loc8_ - this.var_76.length,const_720 - this.var_76.length);
               }
               _loc9_ = _loc6_ + _loc15_ + (_loc7_ > 0 ? 1 : 0);
               while(_loc15_-- > 0)
               {
                  _loc16_ = AddFriendsTab.allocate();
                  _loc3_.addListItem(_loc16_.window);
                  this.var_76.push(_loc16_);
               }
            }
         }
         _loc3_.autoArrangeItems = true;
         if(_loc1_ > -1)
         {
            this.selectFriendEntity(_loc1_);
         }
         _loc2_.visible = this.var_76.length > 0;
         this.toggleArrowButtons(this.var_76.length < _loc9_,this._startIndex != 0,this._startIndex + this.var_76.length < _loc9_);
      }
      
      private function getFriendEntityTabByID(param1:int) : FriendEntityTab
      {
         var _loc2_:* = null;
         var _loc3_:int = this.var_76.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = this.var_76[_loc4_] as FriendEntityTab;
            if(_loc2_)
            {
               if(_loc2_.friend.id == param1)
               {
                  return _loc2_;
               }
            }
            _loc4_++;
         }
         return null;
      }
      
      private function onFriendBarDataAvailable(param1:IID, param2:IUnknown) : void
      {
         this.var_46 = param2 as IHabboFriendBarData;
         this.var_46.events.addEventListener(FriendBarUpdateEvent.const_775,this.onRefreshView);
         this.var_46.events.addEventListener(FindFriendsNotificationEvent.TYPE,this.onFindFriendsNotification);
         this.var_46.events.addEventListener(FriendRequestUpdateEvent.const_990,this.onFriendRequestUpdate);
         this.var_46.events.addEventListener(NewMessageEvent.const_758,this.onNewInstantMessage);
         this.var_46.events.addEventListener(NotificationEvent.const_817,this.onFriendNotification);
      }
      
      private function onWindowManagerAvailable(param1:IID, param2:IUnknown) : void
      {
         _windowManager = param2 as IHabboWindowManager;
      }
      
      private function onLocalizationAvailable(param1:IID, param2:IHabboLocalizationManager) : void
      {
         var_317 = param2 as IHabboLocalizationManager;
      }
      
      private function isUserInterfaceReady() : Boolean
      {
         return this.var_45 && !this.var_45.disposed;
      }
      
      private function buildUserInterface() : void
      {
         var _loc2_:* = null;
         Tab.var_361 = this.var_46;
         Tab.var_507 = this;
         Tab.ASSETS = assets;
         Tab.WINDOWING = _windowManager;
         Tab.var_2249 = var_317;
         Tab.var_2244 = this.var_1652;
         Token.WINDOWING = _windowManager;
         Token.ASSETS = assets;
         var _loc1_:IAsset = assets.getAssetByName(const_1662);
         this.var_45 = _windowManager.buildFromXML(_loc1_.content as XML,const_484) as IWindowContainer;
         this.var_45.x = const_719;
         this.var_45.y = this.var_45.parent.height - (this.var_45.height + const_1659);
         this.var_45.width = this.var_45.parent.width - (const_719 + const_1143);
         this.var_45.setParamFlag(WindowParam.const_247,true);
         this.var_45.procedure = this.barWindowEventProc;
         if(const_1647)
         {
            _loc1_ = assets.getAssetByName(const_1648);
            this.var_231 = _windowManager.buildFromXML(_loc1_.content as XML,const_484) as IWindowContainer;
            this.var_231.x = this.var_45.x;
            this.var_231.y = this.var_45.y;
            this.var_231.setParamFlag(WindowParam.const_247,true);
            this.var_231.visible = false;
            this.var_231.procedure = this.toggleWindowEventProc;
         }
         _loc2_ = IWindowContainer(this.var_45.findChildByName(const_1144));
         _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onIconMouseEvent);
         _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onIconMouseEvent);
         _loc2_.addEventListener(WindowMouseEvent.const_25,this.onIconMouseEvent);
         this.var_589 = new FriendListIcon(assets,_loc2_.getChildByName(ICON) as IBitmapWrapperWindow);
         _loc2_ = IWindowContainer(this.var_45.findChildByName(const_1142));
         _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onIconMouseEvent);
         _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onIconMouseEvent);
         _loc2_.addEventListener(WindowMouseEvent.const_25,this.onIconMouseEvent);
         this.var_407 = new MessengerIcon(assets,_loc2_.getChildByName(ICON) as IBitmapWrapperWindow);
         this.var_407.enable(false);
         this.visible = true;
         _windowManager.getWindowContext(const_484).getDesktopWindow().addEventListener(WindowEvent.const_40,this.onDesktopResized);
         this.var_45.findChildByName(const_718).visible = var_944.getBoolean("friendbar.stream.enabled",false) == true;
         _loc2_ = IWindowContainer(this.var_45.findChildByName(const_718));
         _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onIconMouseEvent);
         _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onIconMouseEvent);
         _loc2_.addEventListener(WindowMouseEvent.const_25,this.onIconMouseEvent);
         this.var_887 = new StreamIcon(assets,_loc2_.getChildByName(ICON) as IBitmapWrapperWindow);
      }
      
      private function onAvatarRendererAvailable(param1:IID, param2:IUnknown) : void
      {
         var_614 = param2 as IAvatarRenderManager;
      }
      
      public function getAvatarFaceBitmap(param1:String) : BitmapData
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(var_614)
         {
            _loc3_ = var_614.createAvatarImage(param1,AvatarScaleType.const_61,null,this);
            if(_loc3_)
            {
               _loc2_ = _loc3_.getCroppedImage(AvatarSetType.const_56);
               _loc3_.dispose();
            }
         }
         return _loc2_;
      }
      
      public function avatarImageReady(param1:String) : void
      {
         var _loc2_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc3_:IItemListWindow = this.var_45.findChildByName(const_721) as IItemListWindow;
         var _loc4_:int = this.var_46.numFriends;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc2_ = this.var_46.getFriendAt(_loc5_);
            if(_loc2_.figure == param1)
            {
               _loc8_ = this.getAvatarFaceBitmap(param1);
               if(_loc8_)
               {
                  _loc9_ = _loc3_.getListItemByID(_loc2_.id) as IWindowContainer;
                  if(_loc9_)
                  {
                     _loc10_ = _loc9_.getChildByName(const_1042) as IItemListWindow;
                     if(_loc10_)
                     {
                        _loc11_ = IWindowContainer(_loc10_.getListItemByName(const_469));
                        if(_loc11_)
                        {
                           _loc12_ = _loc11_.findChildByName(const_317) as IBitmapWrapperWindow;
                           _loc12_.bitmap = _loc8_;
                           _loc12_.width = _loc8_.width;
                           _loc12_.height = _loc8_.height;
                        }
                     }
                  }
               }
               return;
            }
            _loc5_++;
         }
         var _loc6_:Array = this.var_46.getFriendRequestList();
         for each(_loc7_ in _loc6_)
         {
            if(_loc7_.figure == param1)
            {
               for each(_loc13_ in this.var_76)
               {
                  if(_loc13_ is FriendRequestTab)
                  {
                     FriendRequestTab(_loc13_).avatarImageReady(_loc7_,this.getAvatarFaceBitmap(param1));
                     return;
                  }
                  if(_loc13_ is FriendRequestsTab)
                  {
                     FriendRequestsTab(_loc13_).avatarImageReady(_loc7_,this.getAvatarFaceBitmap(param1));
                     return;
                  }
               }
            }
         }
      }
      
      public function faceBookImageReady(param1:BitmapData) : void
      {
      }
      
      private function isFriendSelected(param1:IFriendEntity) : Boolean
      {
         return this.var_1092 == param1.id;
      }
      
      public function selectTab(param1:ITab, param2:Boolean) : void
      {
         if(!param1.selected)
         {
            if(this.var_1352)
            {
               this.deSelect(true);
            }
            param1.select(param2);
            this.var_1352 = param1;
            if(param1 is FriendEntityTab)
            {
               this.var_1092 = FriendEntityTab(param1).friend.id;
            }
         }
      }
      
      public function selectFriendEntity(param1:int) : void
      {
         if(this.var_1092 == param1)
         {
            return;
         }
         var _loc2_:FriendEntityTab = this.getFriendEntityTabByID(param1);
         if(_loc2_)
         {
            this.selectTab(_loc2_,false);
            this.var_1092 = param1;
         }
      }
      
      public function deSelect(param1:Boolean) : void
      {
         if(this.var_1352)
         {
            this.var_1352.deselect(param1);
            this.var_1352 = null;
            this.var_1092 = -1;
         }
      }
      
      private function onRefreshView(param1:Event) : void
      {
         if(!this.isUserInterfaceReady())
         {
            this.buildUserInterface();
         }
         this.resizeAndPopulate(true);
      }
      
      private function onFindFriendsNotification(param1:FindFriendsNotificationEvent) : void
      {
         var event:FindFriendsNotificationEvent = param1;
         var title:String = !!event.success ? "${friendbar.find.success.title}" : "${friendbar.find.error.title}";
         var text:String = !!event.success ? "${friendbar.find.success.text}" : "${friendbar.find.error.text}";
         _windowManager.notify(title,text,function(param1:IAlertDialog, param2:WindowEvent):void
         {
            param1.dispose();
         },HabboAlertDialogFlag.const_575);
      }
      
      private function onFriendRequestUpdate(param1:FriendRequestUpdateEvent) : void
      {
         if(this.var_589)
         {
            this.var_589.notify(this.var_46.numFriendRequests > 0);
         }
         this.populate();
      }
      
      private function onNewInstantMessage(param1:NewMessageEvent) : void
      {
         if(this.var_407)
         {
            if(param1.notify)
            {
               this.var_407.notify(true);
            }
            else
            {
               this.var_407.enable(true);
            }
         }
      }
      
      private function onFriendNotification(param1:NotificationEvent) : void
      {
         var _loc2_:FriendEntityTab = this.getFriendEntityTabByID(param1.friendId);
         if(!_loc2_)
         {
            return;
         }
         _loc2_.addNotificationToken(param1.notification,true);
      }
      
      private function barWindowEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.type == WindowMouseEvent.const_44)
         {
            _loc3_ = this._startIndex;
            _loc4_ = this.var_46.numFriends + (!!this.var_1653 ? 1 : 0) + (this.var_46.numFriendRequests > 0 ? 1 : 0);
            switch(param2.name)
            {
               case const_1653:
                  _loc3_ = Math.max(0,this._startIndex - 1);
                  break;
               case const_1661:
                  _loc3_ = Math.max(0,this._startIndex - this.maxNumOfTabsVisible);
                  break;
               case const_1654:
                  _loc3_ = 0;
                  break;
               case BUTTON_RIGHT_SINGLE:
                  _loc3_ = Math.max(0,Math.min(_loc4_ - this.maxNumOfTabsVisible,this._startIndex + 1));
                  break;
               case const_1655:
                  _loc3_ = Math.max(0,Math.min(_loc4_ - this.maxNumOfTabsVisible,this._startIndex + this.maxNumOfTabsVisible));
                  break;
               case const_1656:
                  _loc3_ = Math.max(0,_loc4_ - this.maxNumOfTabsVisible);
                  break;
               case const_1431:
                  this.visible = false;
                  break;
               case const_1649:
                  this.deSelect(true);
                  break;
               case const_1658:
                  this.var_46.toggleFriendList();
            }
            if(_loc3_ != this._startIndex)
            {
               this.deSelect(true);
               this._startIndex = _loc3_;
               this.resizeAndPopulate(true);
            }
         }
         if(param1.type == WindowEvent.const_623)
         {
            this.deSelect(true);
         }
      }
      
      private function onIconMouseEvent(param1:WindowMouseEvent) : void
      {
         var _loc2_:* = null;
         switch(param1.window.name)
         {
            case const_1144:
               _loc2_ = this.var_589;
               break;
            case const_1142:
               _loc2_ = this.var_407;
               break;
            case const_718:
               _loc2_ = this.var_887;
         }
         if(_loc2_ == null)
         {
            return;
         }
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(_loc2_ is FriendListIcon)
               {
                  this.var_46.toggleFriendList();
                  _loc2_.notify(false);
               }
               else if(_loc2_ is MessengerIcon)
               {
                  this.var_46.toggleMessenger();
                  _loc2_.notify(false);
               }
               else if(_loc2_ is StreamIcon)
               {
                  this.var_46.toggleOfflineStream();
                  _loc2_.notify(false);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               _loc2_.hover(true);
               break;
            case WindowMouseEvent.const_25:
               _loc2_.hover(false);
         }
      }
      
      private function toggleWindowEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         if(this.var_231.visible)
         {
            if(param1.type == WindowMouseEvent.const_44)
            {
               switch(param2.name)
               {
                  case const_1652:
                     this.visible = true;
               }
            }
         }
      }
      
      private function toggleArrowButtons(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:IWindowContainer = this.var_45.findChildByName(const_1145) as IWindowContainer;
         _loc5_ = [];
         _loc6_.groupChildrenWithTag(const_1650,_loc5_);
         for each(_loc4_ in _loc5_)
         {
            _loc4_.visible = param1;
         }
         _loc5_ = [];
         _loc6_.groupChildrenWithTag(const_1651,_loc5_);
         for each(_loc4_ in _loc5_)
         {
            if(param2)
            {
               _loc4_.enable();
            }
            else
            {
               _loc4_.disable();
            }
         }
         _loc5_ = [];
         _loc6_.groupChildrenWithTag(const_1657,_loc5_);
         for each(_loc4_ in _loc5_)
         {
            if(param3)
            {
               _loc4_.enable();
            }
            else
            {
               _loc4_.disable();
            }
         }
      }
      
      private function resizeAndPopulate(param1:Boolean = false) : void
      {
         var _loc2_:int = 0;
         if(!disposed)
         {
            if(this.var_45)
            {
               this.var_45.width = this.var_45.parent.width - (const_719 + const_1143);
               if(!param1)
               {
                  _loc2_ = this.maxNumOfTabsVisible;
                  if(_loc2_ < this.var_76.length)
                  {
                     param1 = true;
                  }
                  else if(_loc2_ > this.var_76.length)
                  {
                     if(this.var_76.length < const_720)
                     {
                        param1 = true;
                     }
                     else if(this.var_76.length < this.var_46.numFriends + (!!this.var_1653 ? 1 : 0))
                     {
                        param1 = true;
                     }
                     else if(this.numFriendEntityTabsVisible < this.var_46.numFriends)
                     {
                        param1 = true;
                     }
                  }
               }
               if(param1)
               {
                  this.populate();
               }
            }
         }
      }
      
      private function get numFriendEntityTabsVisible() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.var_76.length;
         while(_loc2_-- > 0)
         {
            if(this.var_76[_loc2_] is FriendEntityTab)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      private function get maxNumOfTabsVisible() : int
      {
         var _loc1_:IWindowContainer = this.var_45.findChildByName(const_76) as IWindowContainer;
         var _loc2_:IWindowContainer = _loc1_.getChildByName(const_1145) as IWindowContainer;
         var _loc3_:IItemListWindow = _loc2_.findChildByName(const_721) as IItemListWindow;
         var _loc4_:int = _loc2_.width - _loc3_.width;
         return (_loc1_.width - _loc4_) / (const_1660 + _loc3_.spacing);
      }
      
      private function onDesktopResized(param1:WindowEvent) : void
      {
         this.resizeAndPopulate(false);
      }
   }
}
