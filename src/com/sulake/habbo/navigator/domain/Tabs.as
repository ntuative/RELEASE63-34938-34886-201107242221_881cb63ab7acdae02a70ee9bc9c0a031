package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_348:int = 1;
      
      public static const const_222:int = 2;
      
      public static const const_245:int = 3;
      
      public static const const_344:int = 4;
      
      public static const const_246:int = 5;
      
      public static const const_398:int = 1;
      
      public static const const_869:int = 2;
      
      public static const const_969:int = 3;
      
      public static const const_749:int = 4;
      
      public static const const_308:int = 5;
      
      public static const const_1019:int = 6;
      
      public static const const_776:int = 7;
      
      public static const const_429:int = 8;
      
      public static const const_644:int = 9;
      
      public static const const_2153:int = 10;
      
      public static const const_741:int = 11;
      
      public static const const_650:int = 12;
       
      
      private var var_503:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_503 = new Array();
         this.var_503.push(new Tab(this._navigator,const_348,const_650,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_603));
         this.var_503.push(new Tab(this._navigator,const_222,const_398,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_603));
         this.var_503.push(new Tab(this._navigator,const_344,const_741,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1264));
         this.var_503.push(new Tab(this._navigator,const_245,const_308,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_603));
         this.var_503.push(new Tab(this._navigator,const_246,const_429,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_1415));
         this.setSelectedTab(const_348);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_344;
      }
      
      public function get tabs() : Array
      {
         return this.var_503;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_503)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_503)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_503)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
