package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_419:int;
      
      private var var_2306:int;
      
      private var var_2909:Boolean;
      
      private var var_2352:int;
      
      private var _ownerName:String;
      
      private var var_142:RoomData;
      
      private var var_919:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_419 = param1.readInteger();
         this.var_2306 = param1.readInteger();
         this.var_2909 = param1.readBoolean();
         this.var_2352 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_142 = new RoomData(param1);
         this.var_919 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_142 != null)
         {
            this.var_142.dispose();
            this.var_142 = null;
         }
         if(this.var_919 != null)
         {
            this.var_919.dispose();
            this.var_919 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_419;
      }
      
      public function get userCount() : int
      {
         return this.var_2306;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2909;
      }
      
      public function get ownerId() : int
      {
         return this.var_2352;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_142;
      }
      
      public function get event() : RoomData
      {
         return this.var_919;
      }
   }
}
