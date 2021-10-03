package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_419:int;
      
      private var var_919:Boolean;
      
      private var var_1036:String;
      
      private var _ownerName:String;
      
      private var var_2300:int;
      
      private var var_2306:int;
      
      private var var_2307:int;
      
      private var var_1840:String;
      
      private var var_2302:int;
      
      private var var_2303:Boolean;
      
      private var var_796:int;
      
      private var var_1691:int;
      
      private var var_2299:String;
      
      private var var_939:Array;
      
      private var var_2305:RoomThumbnailData;
      
      private var var_2301:Boolean;
      
      private var var_2304:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_939 = new Array();
         super();
         this.var_419 = param1.readInteger();
         this.var_919 = param1.readBoolean();
         this.var_1036 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2300 = param1.readInteger();
         this.var_2306 = param1.readInteger();
         this.var_2307 = param1.readInteger();
         this.var_1840 = param1.readString();
         this.var_2302 = param1.readInteger();
         this.var_2303 = param1.readBoolean();
         this.var_796 = param1.readInteger();
         this.var_1691 = param1.readInteger();
         this.var_2299 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_939.push(_loc4_);
            _loc3_++;
         }
         this.var_2305 = new RoomThumbnailData(param1);
         this.var_2301 = param1.readBoolean();
         this.var_2304 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_939 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_419;
      }
      
      public function get event() : Boolean
      {
         return this.var_919;
      }
      
      public function get roomName() : String
      {
         return this.var_1036;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2300;
      }
      
      public function get userCount() : int
      {
         return this.var_2306;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2307;
      }
      
      public function get description() : String
      {
         return this.var_1840;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2302;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2303;
      }
      
      public function get score() : int
      {
         return this.var_796;
      }
      
      public function get categoryId() : int
      {
         return this.var_1691;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2299;
      }
      
      public function get tags() : Array
      {
         return this.var_939;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2305;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2301;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2304;
      }
   }
}
