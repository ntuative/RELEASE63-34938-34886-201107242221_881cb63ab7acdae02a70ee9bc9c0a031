package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   
   public class RoomObjectRoomPlaneVisibilityUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_1336:String = "RORPVUM_WALL_VISIBILITY";
      
      public static const const_1242:String = "RORPVUM_FLOOR_VISIBILITY";
       
      
      private var _type:String = "";
      
      private var var_350:Boolean = false;
      
      public function RoomObjectRoomPlaneVisibilityUpdateMessage(param1:String, param2:Boolean)
      {
         super(null,null);
         this._type = param1;
         this.var_350 = param2;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get visible() : Boolean
      {
         return this.var_350;
      }
   }
}
