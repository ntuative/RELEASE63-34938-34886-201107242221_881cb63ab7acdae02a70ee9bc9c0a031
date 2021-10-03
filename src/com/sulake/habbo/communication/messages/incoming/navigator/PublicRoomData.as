package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2591:String;
      
      private var var_2325:int;
      
      private var var_2319:int;
      
      private var var_2593:String;
      
      private var var_2592:int;
      
      private var var_1901:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2591 = param1.readString();
         this.var_2325 = param1.readInteger();
         this.var_2319 = param1.readInteger();
         this.var_2593 = param1.readString();
         this.var_2592 = param1.readInteger();
         this.var_1901 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2591;
      }
      
      public function get unitPort() : int
      {
         return this.var_2325;
      }
      
      public function get worldId() : int
      {
         return this.var_2319;
      }
      
      public function get castLibs() : String
      {
         return this.var_2593;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2592;
      }
      
      public function get nodeId() : int
      {
         return this.var_1901;
      }
   }
}
