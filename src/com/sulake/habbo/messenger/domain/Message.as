package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_1029:int = 1;
      
      public static const const_980:int = 2;
      
      public static const const_957:int = 3;
      
      public static const const_1211:int = 4;
      
      public static const const_1026:int = 5;
      
      public static const const_1259:int = 6;
       
      
      private var _type:int;
      
      private var var_1212:int;
      
      private var var_2862:String;
      
      private var var_2863:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1212 = param2;
         this.var_2862 = param3;
         this.var_2863 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2862;
      }
      
      public function get time() : String
      {
         return this.var_2863;
      }
      
      public function get senderId() : int
      {
         return this.var_1212;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
