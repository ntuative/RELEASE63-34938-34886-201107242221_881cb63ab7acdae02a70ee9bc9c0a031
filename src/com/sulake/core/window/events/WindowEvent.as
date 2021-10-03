package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_2005:String = "WE_DESTROY";
      
      public static const const_383:String = "WE_DESTROYED";
      
      public static const const_1963:String = "WE_OPEN";
      
      public static const const_1812:String = "WE_OPENED";
      
      public static const const_1930:String = "WE_CLOSE";
      
      public static const const_1883:String = "WE_CLOSED";
      
      public static const const_2019:String = "WE_FOCUS";
      
      public static const const_372:String = "WE_FOCUSED";
      
      public static const const_1821:String = "WE_UNFOCUS";
      
      public static const const_1782:String = "WE_UNFOCUSED";
      
      public static const const_1897:String = "WE_ACTIVATE";
      
      public static const const_657:String = "WE_ACTIVATED";
      
      public static const const_1954:String = "WE_DEACTIVATE";
      
      public static const const_623:String = "WE_DEACTIVATED";
      
      public static const const_335:String = "WE_SELECT";
      
      public static const const_48:String = "WE_SELECTED";
      
      public static const const_633:String = "WE_UNSELECT";
      
      public static const const_455:String = "WE_UNSELECTED";
      
      public static const const_1810:String = "WE_LOCK";
      
      public static const const_1933:String = "WE_LOCKED";
      
      public static const const_1806:String = "WE_UNLOCK";
      
      public static const const_1844:String = "WE_UNLOCKED";
      
      public static const const_800:String = "WE_ENABLE";
      
      public static const const_275:String = "WE_ENABLED";
      
      public static const const_903:String = "WE_DISABLE";
      
      public static const const_286:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_421:String = "WE_RELOCATED";
      
      public static const const_1299:String = "WE_RESIZE";
      
      public static const const_40:String = "WE_RESIZED";
      
      public static const const_1969:String = "WE_MINIMIZE";
      
      public static const const_1959:String = "WE_MINIMIZED";
      
      public static const const_1895:String = "WE_MAXIMIZE";
      
      public static const const_1846:String = "WE_MAXIMIZED";
      
      public static const const_1838:String = "WE_RESTORE";
      
      public static const const_2047:String = "WE_RESTORED";
      
      public static const const_501:String = "WE_CHILD_ADDED";
      
      public static const const_438:String = "WE_CHILD_REMOVED";
      
      public static const const_227:String = "WE_CHILD_RELOCATED";
      
      public static const const_167:String = "WE_CHILD_RESIZED";
      
      public static const const_373:String = "WE_CHILD_ACTIVATED";
      
      public static const const_580:String = "WE_PARENT_ADDED";
      
      public static const const_2008:String = "WE_PARENT_REMOVED";
      
      public static const const_2053:String = "WE_PARENT_RELOCATED";
      
      public static const const_589:String = "WE_PARENT_RESIZED";
      
      public static const const_1261:String = "WE_PARENT_ACTIVATED";
      
      public static const const_153:String = "WE_OK";
      
      public static const const_599:String = "WE_CANCEL";
      
      public static const const_111:String = "WE_CHANGE";
      
      public static const const_585:String = "WE_SCROLL";
      
      public static const UNKNOWN:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_763:IWindow;
      
      protected var var_1160:Boolean;
      
      protected var var_519:Boolean;
      
      protected var var_169:Boolean;
      
      protected var var_762:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_763 = param3;
         _loc5_.var_519 = param4;
         _loc5_.var_169 = false;
         _loc5_.var_762 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_763;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_519;
      }
      
      public function recycle() : void
      {
         if(this.var_169)
         {
            throw new Error("Event already recycled!");
         }
         this.var_763 = null;
         this._window = null;
         this.var_169 = true;
         this.var_1160 = false;
         this.var_762.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1160;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1160 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1160;
      }
      
      public function stopPropagation() : void
      {
         this.var_1160 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1160 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_519 + " window: " + this._window + " }";
      }
   }
}
