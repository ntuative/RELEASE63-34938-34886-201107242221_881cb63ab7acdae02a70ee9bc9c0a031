package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.inventory.achievements.AchievementData;
   import com.sulake.habbo.communication.messages.outgoing.inventory.achievements.GetAchievementsComposer;
   import com.sulake.habbo.communication.messages.outgoing.tracking.EventLogMessageComposer;
   import com.sulake.habbo.session.BadgeInfo;
   import com.sulake.habbo.session.events.BadgeImageReadyEvent;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class AchievementController implements IDisposable, IUpdateReceiver
   {
      
      private static const const_693:int = 3;
      
      private static const const_1514:int = 8;
      
      private static const const_1508:int = 5;
      
      private static const const_1513:int = 6;
      
      private static const const_1509:int = 3;
      
      private static const const_1515:int = 2;
      
      private static const const_1066:int = 6;
      
      private static const const_1510:int = 180;
      
      private static const const_1507:int = 246;
      
      private static const const_1505:int = 45;
      
      private static const const_1504:Point = new Point(115,93);
      
      private static const const_1506:Point = new Point(72,1);
      
      private static const const_1067:int = 40;
      
      private static const const_1516:int = 20;
      
      private static const const_1511:int = 3;
      
      private static const const_1512:int = 10;
       
      
      private var var_51:HabboQuestEngine;
      
      private var _window:IFrameWindow;
      
      private var var_446:IWindowContainer;
      
      private var var_788:IWindowContainer;
      
      private var var_447:IWindowContainer;
      
      private var var_1484:IWindowContainer;
      
      private var var_972:IWindowContainer;
      
      private var var_1206:IWindowContainer;
      
      private var var_119:AchievementCategories;
      
      private var _category:AchievementCategory;
      
      private var var_73:AchievementData;
      
      private var var_531:Timer;
      
      private var var_790:Dictionary;
      
      private var var_646:ProgressBar;
      
      private var var_787:ProgressBar;
      
      private var var_1205:Matrix;
      
      private var var_1800:ColorMatrixFilter;
      
      private var var_1483:AchievementData;
      
      private var var_791:Timer;
      
      private var var_645:Dictionary;
      
      private var var_789:AchievementLevelUp;
      
      public function AchievementController(param1:HabboQuestEngine)
      {
         this.var_790 = new Dictionary();
         this.var_645 = new Dictionary();
         super();
         this.var_51 = param1;
         this.var_531 = new Timer(100,1);
         this.var_531.addEventListener(TimerEvent.TIMER,this.doBadgeRefresh);
         this.var_791 = new Timer(2000,1);
         this.var_791.addEventListener(TimerEvent.TIMER,this.switchIntoPendingLevel);
         this.var_789 = new AchievementLevelUp(this.var_51);
         this.var_1205 = new Matrix();
         this.var_1800 = this.createGrayscaleFilter();
         this.var_645[16] = 1;
         this.var_645[28] = 6;
         this.var_645[38] = 4;
         this.var_645[39] = 3;
         this.var_645[40] = 1;
      }
      
      public static function moveAllChildrenToColumn(param1:IWindowContainer, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         while(_loc4_ < param1.numChildren)
         {
            _loc5_ = param1.getChildAt(_loc4_);
            if(_loc5_ != null && _loc5_.visible && _loc5_.height > 0)
            {
               _loc5_.y = param2;
               param2 += _loc5_.height + param3;
            }
            _loc4_++;
         }
      }
      
      public static function getLowestPoint(param1:IWindowContainer) : int
      {
         var _loc4_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.numChildren)
         {
            _loc4_ = param1.getChildAt(_loc3_);
            if(_loc4_.visible)
            {
               _loc2_ = Math.max(_loc2_,_loc4_.y + _loc4_.height);
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function dispose() : void
      {
         this.var_51 = null;
         this.var_790 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_531)
         {
            this.var_531.removeEventListener(TimerEvent.TIMER,this.doBadgeRefresh);
            this.var_531.reset();
            this.var_531 = null;
         }
         if(this.var_791)
         {
            this.var_791.removeEventListener(TimerEvent.TIMER,this.switchIntoPendingLevel);
            this.var_791.reset();
            this.var_791 = null;
         }
         if(this.var_646)
         {
            this.var_646.dispose();
            this.var_646 = null;
         }
         if(this.var_787)
         {
            this.var_787.dispose();
            this.var_787 = null;
         }
         if(this.var_789)
         {
            this.var_789.dispose();
            this.var_789 = null;
         }
         this.var_446 = null;
         this.var_447 = null;
         this.var_447 = null;
         this.var_972 = null;
         this.var_1484 = null;
         this.var_1206 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_51 == null;
      }
      
      public function isVisible() : Boolean
      {
         return this._window && this._window.visible;
      }
      
      public function close() : void
      {
         if(this._window)
         {
            this._window.visible = false;
         }
      }
      
      public function onRoomExit() : void
      {
         this.close();
      }
      
      public function onToolbarClick() : void
      {
         if(this.isVisible())
         {
            this.close();
         }
         else
         {
            this.show();
         }
      }
      
      public function show() : void
      {
         if(this.var_119 == null)
         {
            this.var_51.send(new GetAchievementsComposer());
         }
         else
         {
            this.refresh();
            this._window.visible = true;
            this._window.activate();
         }
      }
      
      public function onAchievements(param1:Array, param2:String) : void
      {
         if(this.var_119 == null)
         {
            this.var_119 = new AchievementCategories(param1);
         }
         this.refresh();
         this._window.visible = true;
         this._window.activate();
         var _loc3_:AchievementCategory = this.var_119.getCategoryByCode(param2);
         if(_loc3_ != null)
         {
            this.pickCategory(_loc3_);
         }
      }
      
      public function onAchievement(param1:AchievementData) : void
      {
         var _loc2_:Boolean = false;
         if(this.var_119 != null)
         {
            _loc2_ = this.var_73 && this.var_73.type == param1.type;
            if(_loc2_ && param1.level > this.var_73.level)
            {
               this.var_73.setMaxProgress();
               this.var_1483 = param1;
               this.var_791.start();
            }
            else
            {
               this.var_119.update(param1);
               if(_loc2_)
               {
                  this.var_73 = param1;
               }
            }
            if(this._window && this._window.visible)
            {
               this.refresh();
            }
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshCategoryList();
         this.refreshCategoryListFooter();
         this.refreshAchievementsHeader();
         this.refreshAchievementsFooter();
         this.refreshAchievementList();
         this.refreshAchievementDetails();
         moveAllChildrenToColumn(this._window.content,0,4);
         this._window.height = getLowestPoint(this._window.content) + const_1505;
      }
      
      private function refreshCategoryList() : void
      {
         var _loc3_:Boolean = false;
         if(this._category != null)
         {
            this.var_446.visible = false;
            return;
         }
         this.var_446.visible = true;
         var _loc1_:Array = this.var_119.categoryList;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ < _loc1_.length)
            {
               this.refreshCategoryEntry(_loc2_,_loc1_[_loc2_]);
            }
            else
            {
               _loc3_ = this.refreshCategoryEntry(_loc2_,null);
               if(_loc3_)
               {
                  break;
               }
            }
            _loc2_++;
         }
         this.var_446.height = getLowestPoint(this.var_446);
      }
      
      private function refreshCategoryListFooter() : void
      {
         if(this._category != null)
         {
            this.var_1206.visible = false;
            return;
         }
         this.var_1206.visible = true;
         this.var_787.refresh(this.var_119.getProgress(),this.var_119.getMaxProgress(),0);
      }
      
      private function refreshAchievementList() : void
      {
         var _loc3_:Boolean = false;
         if(this._category == null)
         {
            this.var_788.visible = false;
            return;
         }
         this.var_788.visible = true;
         Logger.log(this._category.code + " has " + this._category.achievements.length + " achievemenets");
         var _loc1_:Array = this._category.achievements;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ < _loc1_.length)
            {
               this.refreshAchievementEntry(_loc2_,_loc1_[_loc2_]);
            }
            else
            {
               _loc3_ = this.refreshAchievementEntry(_loc2_,null);
               if(_loc3_)
               {
                  break;
               }
            }
            _loc2_++;
         }
         this.var_788.height = getLowestPoint(this.var_788);
      }
      
      private function refreshAchievementsHeader() : void
      {
         if(this._category == null)
         {
            this.var_972.visible = false;
            return;
         }
         this.var_972.visible = true;
         this.var_972.findChildByName("category_name_txt").caption = this.var_51.getAchievementCategoryName(this._category.code);
         this.var_51.localization.registerParameter("achievements.details.categoryprogress","progress","" + this._category.getProgress());
         this.var_51.localization.registerParameter("achievements.details.categoryprogress","limit","" + this._category.getMaxProgress());
         this.var_51.setupAchievementCategoryImage(this.var_972,this._category,false);
      }
      
      private function refreshAchievementsFooter() : void
      {
         if(this._category == null)
         {
            this.var_1484.visible = false;
            return;
         }
         this.var_1484.visible = true;
      }
      
      private function refreshAchievementDetails() : void
      {
         if(this.var_73 == null)
         {
            this.var_447.visible = false;
            return;
         }
         this.var_447.visible = true;
         var _loc1_:String = this.getAchievedBadgeId(this.var_73);
         this.var_447.findChildByName("achievement_name_txt").caption = this.var_51.localization.getBadgeName(_loc1_);
         var _loc2_:String = this.var_51.localization.getBadgeDesc(_loc1_);
         this.var_447.findChildByName("achievement_desc_txt").caption = _loc2_ == null ? "" : _loc2_;
         this.var_51.localization.registerParameter("achievements.details.level","level","" + (!!this.var_73.finalLevel ? this.var_73.level : this.var_73.level - 1));
         this.var_51.localization.registerParameter("achievements.details.level","limit","" + this.var_73.levelCount);
         this.var_51.refreshReward(!this.var_73.finalLevel,this.var_447,this.var_73.levelRewardPointType,this.var_73.levelRewardPoints);
         this.refreshBadgeImageLarge(this.var_447,this.var_73);
         this.var_646.refresh(this.var_73.currentPoints,this.var_73.scoreLimit,this.var_73.type * 10000 + this.var_73.level);
         this.var_646.visible = !this.var_73.finalLevel;
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IFrameWindow(this.var_51.getXmlWindow("Achievements"));
         this._window.findChildByTag("close").procedure = this.onWindowClose;
         this._window.findChildByName("back_button").procedure = this.onBack;
         this._window.center();
         this._window.y = const_1516;
         this.var_446 = IWindowContainer(this._window.findChildByName("categories_cont"));
         this.var_972 = IWindowContainer(this._window.findChildByName("achievements_header_cont"));
         this.var_788 = IWindowContainer(this._window.findChildByName("achievements_cont"));
         this.var_447 = IWindowContainer(this._window.findChildByName("achievement_cont"));
         this.var_1484 = IWindowContainer(this._window.findChildByName("achievements_footer_cont"));
         this.var_1206 = IWindowContainer(this._window.findChildByName("categories_footer_cont"));
         this.var_646 = new ProgressBar(this.var_51,this.var_447,const_1510,"achievements.details.progress",true,const_1504);
         this.var_787 = new ProgressBar(this.var_51,this.var_1206,const_1507,"achievements.categories.totalprogress",true,const_1506);
      }
      
      private function refreshCategoryEntry(param1:int, param2:AchievementCategory) : Boolean
      {
         var _loc3_:IWindowContainer = IWindowContainer(this.var_446.getChildByName("" + param1));
         var _loc4_:int = Math.floor(param1 / const_693);
         var _loc5_:* = _loc4_ < const_1509;
         if(_loc3_ == null)
         {
            if(param2 == null && !_loc5_)
            {
               return true;
            }
            _loc3_ = IWindowContainer(this.var_51.getXmlWindow("AchievementCategory"));
            _loc3_.name = "" + param1;
            this.var_446.addChild(_loc3_);
            new PendingImage(this.var_51,IBitmapWrapperWindow(_loc3_.findChildByName("category_bg_act")),"achievement_bkg_active1");
            new PendingImage(this.var_51,IBitmapWrapperWindow(_loc3_.findChildByName("category_bg_act_hover")),"achievement_bkg_active2");
            new PendingImage(this.var_51,IBitmapWrapperWindow(_loc3_.findChildByName("category_bg_inact")),"achievement_category_bkg_empty_3");
            _loc3_.findChildByName("category_region").procedure = this.onSelectCategory;
            _loc3_.x = (_loc3_.width + const_1514) * (param1 % const_693);
            _loc3_.y = (_loc3_.height + const_1508) * Math.floor(param1 / const_693) + const_1513;
         }
         _loc3_.findChildByName("category_region").id = param1;
         _loc3_.findChildByName("category_region").visible = param2 != null;
         _loc3_.findChildByName("category_bg_inact").visible = param2 == null;
         _loc3_.findChildByName("category_bg_act").visible = param2 != null;
         _loc3_.findChildByName("category_bg_act_hover").visible = false;
         _loc3_.findChildByName("header_txt").visible = param2 != null;
         _loc3_.findChildByName("completion_txt").visible = param2 != null;
         _loc3_.findChildByName("category_pic_bitmap").visible = param2 != null;
         if(param2)
         {
            _loc3_.findChildByName("header_txt").caption = this.var_51.getAchievementCategoryName(param2.code);
            _loc3_.findChildByName("completion_txt").caption = param2.getProgress() + "/" + param2.getMaxProgress();
            this.var_51.setupAchievementCategoryImage(_loc3_,param2,true);
            _loc3_.visible = true;
         }
         else if(_loc5_)
         {
            _loc3_.visible = true;
         }
         else
         {
            _loc3_.visible = false;
         }
         return false;
      }
      
      private function refreshAchievementEntry(param1:int, param2:AchievementData) : Boolean
      {
         var _loc9_:* = null;
         var _loc3_:IWindowContainer = IWindowContainer(this.var_788.getChildByName("" + param1));
         var _loc4_:int = Math.floor(param1 / const_1066);
         var _loc5_:* = _loc4_ < const_1515;
         if(_loc3_ == null)
         {
            if(param2 == null && !_loc5_)
            {
               return true;
            }
            _loc3_ = IWindowContainer(this.var_51.getXmlWindow("Achievement"));
            _loc3_.name = "" + param1;
            this.var_788.addChild(_loc3_);
            _loc9_ = _loc3_.findChildByName("achievement_pic_bitmap") as IBitmapWrapperWindow;
            _loc9_.bitmap = new BitmapData(_loc9_.width,_loc9_.height,true,16777215);
            new PendingImage(this.var_51,_loc3_.findChildByName("bg_selected_bitmap"),"achievement_active");
            new PendingImage(this.var_51,_loc3_.findChildByName("bg_unselected_bitmap"),"achievement_inactive");
            _loc3_.x = _loc3_.width * (param1 % const_1066);
            _loc3_.y = _loc3_.height * _loc4_ + const_1511;
            _loc3_.findChildByName("bg_region").procedure = this.onSelectAchievement;
         }
         var _loc6_:IWindow = _loc3_.findChildByName("bg_region");
         _loc6_.id = param1;
         _loc6_.visible = param2 != null;
         var _loc7_:IWindow = _loc3_.findChildByName("bg_unselected_bitmap");
         var _loc8_:IWindow = _loc3_.findChildByName("bg_selected_bitmap");
         this.refreshBadgeImage(_loc3_,param2);
         if(param2)
         {
            _loc7_.visible = param2 != this.var_73;
            _loc8_.visible = param2 == this.var_73;
            _loc3_.visible = true;
         }
         else if(_loc5_)
         {
            _loc8_.visible = false;
            _loc7_.visible = true;
            _loc3_.visible = true;
         }
         else
         {
            _loc3_.visible = false;
         }
         return false;
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.close();
         }
      }
      
      private function onSelectCategory(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:int = param2.id;
         Logger.log("Category index: " + _loc3_);
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.pickCategory(this.var_119.categoryList[_loc3_]);
         }
         else if(param1.type == WindowMouseEvent.const_25)
         {
            this.refreshMouseOver(-999);
         }
         else if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            this.refreshMouseOver(_loc3_);
         }
      }
      
      private function pickCategory(param1:AchievementCategory) : void
      {
         this._category = param1;
         this.var_73 = this._category.achievements[0];
         Logger.log("Category: " + this._category.code);
         this.refresh();
         this.var_51.send(new EventLogMessageComposer("Achievements",this._category.code,"Category selected"));
      }
      
      private function refreshMouseOver(param1:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_446.numChildren)
         {
            _loc3_ = _loc2_ == param1;
            _loc4_ = IWindowContainer(this.var_446.getChildAt(_loc2_));
            _loc4_.findChildByName("category_bg_act").visible = !_loc3_ && _loc2_ < this.var_119.categoryList.length;
            _loc4_.findChildByName("category_bg_act_hover").visible = _loc3_;
            _loc5_ = _loc4_.findChildByName("hover_container");
            _loc5_.x = !!_loc3_ ? 0 : 1;
            _loc5_.y = !!_loc3_ ? 0 : 1;
            _loc2_++;
         }
      }
      
      private function onSelectAchievement(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:int = param2.id;
         this.var_73 = this._category.achievements[_loc3_];
         this.refresh();
         this.var_51.send(new EventLogMessageComposer("Achievements","" + this.var_73.type,"Achievement selected"));
      }
      
      private function onBack(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._category = null;
         this.var_73 = null;
         this.refresh();
      }
      
      private function refreshBadgeImage(param1:IWindowContainer, param2:AchievementData) : void
      {
         var _loc9_:* = null;
         var _loc3_:IBitmapWrapperWindow = param1.findChildByName("achievement_pic_bitmap") as IBitmapWrapperWindow;
         if(param2 == null)
         {
            _loc3_.visible = false;
            return;
         }
         var _loc4_:String = this.getAchievedBadgeId(param2);
         var _loc5_:BitmapData = this.var_790[_loc4_];
         var _loc6_:Boolean = false;
         if(_loc5_ == null)
         {
            _loc9_ = this.var_51.sessionDataManager.getBadgeImageWithInfo(_loc4_);
            _loc5_ = _loc9_.image;
            _loc6_ = _loc9_.placeHolder;
            this.var_790[_loc4_] = _loc5_;
         }
         var _loc7_:int = const_1067 - _loc5_.height + this.getPositionFix(param2.type);
         var _loc8_:Point = new Point((_loc3_.width - _loc5_.width) / 2,!!_loc6_ ? Number(const_1512) : Number(_loc7_));
         _loc3_.bitmap.fillRect(_loc3_.bitmap.rect,16777215);
         if(param2.firstLevelAchieved)
         {
            _loc3_.bitmap.copyPixels(_loc5_,_loc5_.rect,_loc8_,null,null,true);
         }
         else
         {
            _loc3_.bitmap.applyFilter(_loc5_,_loc5_.rect,_loc8_,this.var_1800);
         }
         _loc3_.visible = false;
         _loc3_.visible = true;
      }
      
      private function refreshBadgeImageLarge(param1:IWindowContainer, param2:AchievementData) : void
      {
         var _loc3_:IBitmapWrapperWindow = param1.findChildByName("achievement_pic_bitmap") as IBitmapWrapperWindow;
         var _loc4_:String = this.getAchievedBadgeId(param2);
         var _loc5_:BitmapData = this.var_790[_loc4_];
         if(_loc5_ == null)
         {
            _loc5_ = this.var_51.sessionDataManager.getBadgeImage(_loc4_);
            this.var_790[_loc4_] = _loc5_;
         }
         if(_loc3_.bitmap == null)
         {
            _loc3_.bitmap = new BitmapData(_loc3_.width,_loc3_.height,true,16777215);
         }
         var _loc6_:int = 2 * (const_1067 - _loc5_.height + this.getPositionFix(param2.type));
         this.var_1205.identity();
         this.var_1205.scale(2,2);
         this.var_1205.translate((_loc3_.width - _loc5_.width * 2) / 2,_loc6_);
         _loc3_.bitmap.fillRect(_loc3_.bitmap.rect,16777215);
         _loc3_.bitmap.draw(_loc5_,this.var_1205);
         if(!param2.firstLevelAchieved)
         {
            _loc3_.bitmap.applyFilter(_loc3_.bitmap,_loc3_.bitmap.rect,new Point(0,0),this.var_1800);
         }
         _loc3_.visible = false;
         _loc3_.visible = true;
      }
      
      private function doBadgeRefresh(param1:TimerEvent) : void
      {
         this.var_531.reset();
         this.refresh();
      }
      
      private function switchIntoPendingLevel(param1:TimerEvent) : void
      {
         this.var_73 = this.var_1483;
         this.var_119.update(this.var_1483);
         this.var_1483 = null;
         this.refresh();
      }
      
      public function onBadgeImageReady(param1:BadgeImageReadyEvent) : void
      {
         if(this._window == null)
         {
            return;
         }
         this.var_790[param1.badgeId] = param1.badgeImage;
         if(!this.var_531.running)
         {
            this.var_531.start();
         }
      }
      
      private function createGrayscaleFilter() : ColorMatrixFilter
      {
         var _loc1_:* = 0.3333333333333333;
         var _loc2_:Number = 1 - _loc1_ * 2;
         var _loc3_:Array = [_loc2_,_loc1_,_loc1_,0,0,_loc1_,_loc2_,_loc1_,0,0,_loc1_,_loc1_,_loc2_,0,0,0,0,0,1,0];
         return new ColorMatrixFilter(_loc3_);
      }
      
      public function update(param1:uint) : void
      {
         if(this.var_646 != null)
         {
            this.var_646.updateView();
         }
         if(this.var_787 != null)
         {
            this.var_787.updateView();
         }
         if(this.var_789 != null)
         {
            this.var_789.update(param1);
         }
      }
      
      private function getAchievedBadgeId(param1:AchievementData) : String
      {
         return !!param1.finalLevel ? param1.badgeId : this.var_51.localization.getPreviousLevelBadgeId(param1.badgeId);
      }
      
      private function getPositionFix(param1:int) : int
      {
         return !!this.var_645[param1] ? int(this.var_645[param1]) : 0;
      }
      
      public function get levelUpDialog() : AchievementLevelUp
      {
         return this.var_789;
      }
   }
}
