package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_727:String;
      
      private var var_951:String;
      
      private var var_2612:String;
      
      private var var_1767:String;
      
      private var var_2611:int;
      
      private var var_2371:int;
      
      private var var_1194:int;
      
      private var _petRespectLeft:int;
      
      private var var_2610:Boolean;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_727 = param1.readString();
         this.var_951 = param1.readString();
         this.var_2612 = param1.readString();
         this.var_1767 = param1.readString();
         this.var_2611 = param1.readInteger();
         this.var_2371 = param1.readInteger();
         this.var_1194 = param1.readInteger();
         this._petRespectLeft = param1.readInteger();
         this.var_2610 = param1.readBoolean();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_727;
      }
      
      public function get sex() : String
      {
         return this.var_951;
      }
      
      public function get customData() : String
      {
         return this.var_2612;
      }
      
      public function get realName() : String
      {
         return this.var_1767;
      }
      
      public function get directMail() : int
      {
         return this.var_2611;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2371;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1194;
      }
      
      public function get petRespectLeft() : int
      {
         return this._petRespectLeft;
      }
      
      public function get streamPublishingAllowed() : Boolean
      {
         return this.var_2610;
      }
   }
}
