package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_2032:Boolean;
      
      private var var_2746:int;
      
      private var var_2745:String;
      
      private var var_419:int;
      
      private var var_2748:int;
      
      private var var_1938:String;
      
      private var var_2747:String;
      
      private var var_2749:String;
      
      private var var_939:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_939 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_2032 = false;
            return;
         }
         this.var_2032 = true;
         this.var_2746 = int(_loc2_);
         this.var_2745 = param1.readString();
         this.var_419 = int(param1.readString());
         this.var_2748 = param1.readInteger();
         this.var_1938 = param1.readString();
         this.var_2747 = param1.readString();
         this.var_2749 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_939.push(_loc5_);
            _loc4_++;
         }
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
      
      public function get ownerAvatarId() : int
      {
         return this.var_2746;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2745;
      }
      
      public function get flatId() : int
      {
         return this.var_419;
      }
      
      public function get eventType() : int
      {
         return this.var_2748;
      }
      
      public function get eventName() : String
      {
         return this.var_1938;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2747;
      }
      
      public function get creationTime() : String
      {
         return this.var_2749;
      }
      
      public function get tags() : Array
      {
         return this.var_939;
      }
      
      public function get exists() : Boolean
      {
         return this.var_2032;
      }
   }
}
