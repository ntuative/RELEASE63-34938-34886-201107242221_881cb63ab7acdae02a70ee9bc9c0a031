package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.MouseCursorType;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.Dictionary;
   
   public class MouseCursorControl
   {
      
      private static var _type:uint = MouseCursorType.const_31;
      
      private static var var_162:Stage;
      
      private static var var_350:Boolean = true;
      
      private static var _disposed:Boolean = false;
      
      private static var var_882:Boolean = true;
      
      private static var var_141:DisplayObject;
      
      private static var var_1637:Dictionary = new Dictionary();
       
      
      public function MouseCursorControl(param1:DisplayObject)
      {
         super();
         var_162 = param1.stage;
      }
      
      public static function dispose() : void
      {
         if(!_disposed)
         {
            if(var_141)
            {
               var_162.removeChild(var_141);
               var_162.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
               var_162.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
               var_162.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
               var_162.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
            }
            _disposed = true;
         }
      }
      
      public static function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public static function get type() : uint
      {
         return _type;
      }
      
      public static function set type(param1:uint) : void
      {
         if(_type != param1)
         {
            _type = param1;
            var_882 = true;
         }
      }
      
      public static function get visible() : Boolean
      {
         return var_350;
      }
      
      public static function set visible(param1:Boolean) : void
      {
         var_350 = param1;
         if(var_350)
         {
            if(var_141)
            {
               var_141.visible = true;
            }
            else
            {
               Mouse.show();
            }
         }
         else if(var_141)
         {
            var_141.visible = false;
         }
         else
         {
            Mouse.hide();
         }
      }
      
      public static function change() : void
      {
         var _loc1_:* = null;
         if(var_882)
         {
            _loc1_ = var_1637[_type];
            if(_loc1_)
            {
               if(var_141)
               {
                  var_162.removeChild(var_141);
               }
               else
               {
                  var_162.addEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_162.addEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_162.addEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_162.addEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  Mouse.hide();
               }
               var_141 = _loc1_;
               var_162.addChild(var_141);
            }
            else
            {
               if(var_141)
               {
                  var_162.removeChild(var_141);
                  var_162.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_162.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_162.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_162.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  var_141 = null;
                  Mouse.show();
               }
               switch(_type)
               {
                  case MouseCursorType.const_31:
                  case MouseCursorType.ARROW:
                     Mouse.cursor = MouseCursor.ARROW;
                     break;
                  case MouseCursorType.const_347:
                     Mouse.cursor = MouseCursor.BUTTON;
                     break;
                  case MouseCursorType.const_866:
                  case MouseCursorType.const_280:
                  case MouseCursorType.const_1843:
                  case MouseCursorType.const_1775:
                     Mouse.cursor = MouseCursor.HAND;
                     break;
                  case MouseCursorType.NONE:
                     Mouse.cursor = MouseCursor.ARROW;
                     Mouse.hide();
               }
            }
            var_882 = false;
         }
      }
      
      public static function defineCustomCursorType(param1:uint, param2:DisplayObject) : void
      {
         var_1637[param1] = param2;
      }
      
      private static function onStageMouseMove(param1:MouseEvent) : void
      {
         if(var_141)
         {
            var_141.x = param1.stageX - 2;
            var_141.y = param1.stageY;
            if(_type == MouseCursorType.const_31)
            {
               var_350 = false;
               Mouse.show();
            }
            else
            {
               var_350 = true;
               Mouse.hide();
            }
         }
      }
      
      private static function onStageMouseLeave(param1:Event) : void
      {
         if(var_141 && _type != MouseCursorType.const_31)
         {
            Mouse.hide();
            var_350 = false;
         }
      }
   }
}
