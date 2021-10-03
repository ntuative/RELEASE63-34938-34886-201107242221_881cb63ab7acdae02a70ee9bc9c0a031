package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2137:int = 1;
      
      public static const const_2296:int = 2;
      
      public static const const_2239:int = 3;
      
      public static const const_2221:int = 4;
      
      public static const const_1840:int = 5;
      
      public static const const_2340:int = 6;
      
      public static const const_2035:int = 7;
      
      public static const const_1776:int = 8;
      
      public static const const_2336:int = 9;
      
      public static const const_1997:int = 10;
      
      public static const const_1832:int = 11;
      
      public static const const_1919:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1846:int;
      
      private var var_705:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1846 = param1.readInteger();
         this.var_705 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1846;
      }
      
      public function get info() : String
      {
         return this.var_705;
      }
   }
}
