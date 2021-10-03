package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1378:int = 1;
      
      public static const const_997:int = 2;
      
      public static const const_963:int = 3;
      
      public static const const_2033:int = 4;
       
      
      private var _index:int;
      
      private var var_3044:String;
      
      private var var_3045:String;
      
      private var var_3043:Boolean;
      
      private var var_3046:String;
      
      private var var_1024:String;
      
      private var var_3047:int;
      
      private var var_2306:int;
      
      private var _type:int;
      
      private var var_2458:String;
      
      private var var_1142:GuestRoomData;
      
      private var var_1141:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_3044 = param1.readString();
         this.var_3045 = param1.readString();
         this.var_3043 = param1.readInteger() == 1;
         this.var_3046 = param1.readString();
         this.var_1024 = param1.readString();
         this.var_3047 = param1.readInteger();
         this.var_2306 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1378)
         {
            this.var_2458 = param1.readString();
         }
         else if(this._type == const_963)
         {
            this.var_1141 = new PublicRoomData(param1);
         }
         else if(this._type == const_997)
         {
            this.var_1142 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_1142 != null)
         {
            this.var_1142.dispose();
            this.var_1142 = null;
         }
         if(this.var_1141 != null)
         {
            this.var_1141.dispose();
            this.var_1141 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_3044;
      }
      
      public function get popupDesc() : String
      {
         return this.var_3045;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_3043;
      }
      
      public function get picText() : String
      {
         return this.var_3046;
      }
      
      public function get picRef() : String
      {
         return this.var_1024;
      }
      
      public function get folderId() : int
      {
         return this.var_3047;
      }
      
      public function get tag() : String
      {
         return this.var_2458;
      }
      
      public function get userCount() : int
      {
         return this.var_2306;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_1142;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1141;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1378)
         {
            return 0;
         }
         if(this.type == const_997)
         {
            return this.var_1142.maxUserCount;
         }
         if(this.type == const_963)
         {
            return this.var_1141.maxUsers;
         }
         return 0;
      }
   }
}
