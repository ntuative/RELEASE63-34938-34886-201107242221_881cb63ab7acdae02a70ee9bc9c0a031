package com.sulake.core.window.components
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.WindowContext;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.enum.Direction;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.utils.PropertyDefaults;
   import com.sulake.core.window.utils.PropertyStruct;
   import flash.geom.Rectangle;
   
   public class BubbleController extends FrameController implements IBubbleWindow
   {
      
      private static const const_2121:String = "_POINTER_UP";
      
      private static const const_2122:String = "_POINTER_DOWN";
      
      private static const const_2124:String = "_POINTER_LEFT";
      
      private static const const_2123:String = "_POINTER_RIGHT";
       
      
      private var _direction:String = "down";
      
      private var var_897:int = 0;
      
      public function BubbleController(param1:String, param2:uint, param3:uint, param4:uint, param5:WindowContext, param6:Rectangle, param7:IWindow, param8:Function = null, param9:Array = null, param10:Array = null, param11:uint = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      public function get direction() : String
      {
         return this._direction;
      }
      
      public function set direction(param1:String) : void
      {
         var _loc2_:* = null;
         if(param1 != this._direction)
         {
            _loc2_ = getChildByName(param1);
            if(!_loc2_)
            {
               throw new Error("Invalid pointer direction: \"" + param1 + "\"!");
            }
            getChildByName(this._direction).visible = false;
            _loc2_.visible = true;
            this._direction = param1;
            this.pointerOffset = this.var_897;
         }
      }
      
      public function get pointerOffset() : int
      {
         return this.var_897;
      }
      
      public function set pointerOffset(param1:int) : void
      {
         var _loc2_:IWindow = getChildByName(this._direction);
         if(!_loc2_)
         {
            throw new Error("Invalid pointer direction: \"" + this._direction + "\"!");
         }
         if(this._direction == Direction.UP || this._direction == Direction.DOWN)
         {
            _loc2_.x = width / 2 + param1;
         }
         else
         {
            _loc2_.y = height / 2 + param1;
         }
         this.var_897 = param1;
      }
      
      override public function update(param1:WindowController, param2:WindowEvent) : Boolean
      {
         var _loc3_:Boolean = super.update(param1,param2);
         if(this.var_897 != 0)
         {
            if(param1 == this)
            {
               if(param2.type == WindowEvent.const_40)
               {
                  this.pointerOffset = this.var_897;
               }
            }
         }
         return _loc3_;
      }
      
      override public function get properties() : Array
      {
         var _loc1_:Array = super.properties;
         if(this._direction != Direction.DOWN)
         {
            _loc1_.push(new PropertyStruct(PropertyDefaults.const_830,this._direction,PropertyStruct.const_54,true));
         }
         else
         {
            _loc1_.push(PropertyDefaults.const_1885);
         }
         if(this.var_897 != 0)
         {
            _loc1_.push(new PropertyStruct(PropertyDefaults.const_821,this.var_897,PropertyStruct.const_37,true));
         }
         else
         {
            _loc1_.push(PropertyDefaults.const_2051);
         }
         return _loc1_;
      }
      
      override public function set properties(param1:Array) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in param1)
         {
            switch(_loc2_.key)
            {
               case PropertyDefaults.const_830:
                  this.direction = _loc2_.value as String;
                  break;
               case PropertyDefaults.const_821:
                  this.pointerOffset = _loc2_.value as int;
                  break;
            }
         }
         super.properties = param1;
      }
   }
}