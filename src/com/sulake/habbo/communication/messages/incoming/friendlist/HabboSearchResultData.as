package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2317:int;
      
      private var var_2138:String;
      
      private var var_2376:String;
      
      private var var_2375:Boolean;
      
      private var var_2378:Boolean;
      
      private var var_2380:int;
      
      private var var_2379:String;
      
      private var var_2377:String;
      
      private var var_1767:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2317 = param1.readInteger();
         this.var_2138 = param1.readString();
         this.var_2376 = param1.readString();
         this.var_2375 = param1.readBoolean();
         this.var_2378 = param1.readBoolean();
         param1.readString();
         this.var_2380 = param1.readInteger();
         this.var_2379 = param1.readString();
         this.var_2377 = param1.readString();
         this.var_1767 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2317;
      }
      
      public function get avatarName() : String
      {
         return this.var_2138;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2376;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2375;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2378;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2380;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2379;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2377;
      }
      
      public function get realName() : String
      {
         return this.var_1767;
      }
   }
}
