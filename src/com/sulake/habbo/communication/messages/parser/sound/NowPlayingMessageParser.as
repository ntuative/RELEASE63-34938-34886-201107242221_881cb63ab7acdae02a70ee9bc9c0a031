package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1951:int;
      
      private var _currentPosition:int;
      
      private var var_1949:int;
      
      private var var_1952:int;
      
      private var var_1950:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_1951;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_1949;
      }
      
      public function get nextPosition() : int
      {
         return this.var_1952;
      }
      
      public function get syncCount() : int
      {
         return this.var_1950;
      }
      
      public function flush() : Boolean
      {
         this.var_1951 = -1;
         this._currentPosition = -1;
         this.var_1949 = -1;
         this.var_1952 = -1;
         this.var_1950 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1951 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_1949 = param1.readInteger();
         this.var_1952 = param1.readInteger();
         this.var_1950 = param1.readInteger();
         return true;
      }
   }
}
