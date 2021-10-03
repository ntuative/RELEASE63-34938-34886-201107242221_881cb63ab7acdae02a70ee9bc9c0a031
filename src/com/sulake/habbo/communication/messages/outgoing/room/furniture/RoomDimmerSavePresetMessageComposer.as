package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2297:int;
      
      private var var_2295:int;
      
      private var var_2298:String;
      
      private var var_2294:int;
      
      private var var_2296:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2297 = param1;
         this.var_2295 = param2;
         this.var_2298 = param3;
         this.var_2294 = param4;
         this.var_2296 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2297,this.var_2295,this.var_2298,this.var_2294,int(this.var_2296)];
      }
      
      public function dispose() : void
      {
      }
   }
}
