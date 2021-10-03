package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_1009:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2297:int;
      
      private var var_2295:int;
      
      private var _color:uint;
      
      private var var_1240:int;
      
      private var var_2409:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_1009);
         this.var_2297 = param1;
         this.var_2295 = param2;
         this._color = param3;
         this.var_1240 = param4;
         this.var_2409 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2297;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2295;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1240;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2409;
      }
   }
}
