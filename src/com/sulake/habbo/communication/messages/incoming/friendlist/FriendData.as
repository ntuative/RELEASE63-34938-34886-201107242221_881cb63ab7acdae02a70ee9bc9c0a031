package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1096:int;
      
      private var var_895:Boolean;
      
      private var var_1769:Boolean;
      
      private var var_727:String;
      
      private var var_1691:int;
      
      private var var_1770:String;
      
      private var var_1768:String;
      
      private var var_1767:String;
      
      private var var_2462:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1096 = param1.readInteger();
         this.var_895 = param1.readBoolean();
         this.var_1769 = param1.readBoolean();
         this.var_727 = param1.readString();
         this.var_1691 = param1.readInteger();
         this.var_1770 = param1.readString();
         this.var_1768 = param1.readString();
         this.var_1767 = param1.readString();
         this.var_2462 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1096;
      }
      
      public function get online() : Boolean
      {
         return this.var_895;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1769;
      }
      
      public function get figure() : String
      {
         return this.var_727;
      }
      
      public function get categoryId() : int
      {
         return this.var_1691;
      }
      
      public function get motto() : String
      {
         return this.var_1770;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1768;
      }
      
      public function get realName() : String
      {
         return this.var_1767;
      }
      
      public function get facebookId() : String
      {
         return this.var_2462;
      }
   }
}
