package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2152:int = 1;
      
      public static const RESPONSE_TYPE_PURCHASE:int = 2;
      
      public static const const_1324:int = 3;
       
      
      private var var_1061:String;
      
      private var var_2940:int;
      
      private var var_2941:int;
      
      private var var_2936:int;
      
      private var var_2937:int;
      
      private var var_2939:Boolean;
      
      private var var_2558:Boolean;
      
      private var var_2678:int;
      
      private var var_2677:int;
      
      private var var_2943:Boolean;
      
      private var var_2942:int;
      
      private var var_2938:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1061 = param1.readString();
         this.var_2940 = param1.readInteger();
         this.var_2941 = param1.readInteger();
         this.var_2936 = param1.readInteger();
         this.var_2937 = param1.readInteger();
         this.var_2939 = param1.readBoolean();
         this.var_2558 = param1.readBoolean();
         this.var_2678 = param1.readInteger();
         this.var_2677 = param1.readInteger();
         this.var_2943 = param1.readBoolean();
         this.var_2942 = param1.readInteger();
         this.var_2938 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_1061;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2940;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2941;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2936;
      }
      
      public function get responseType() : int
      {
         return this.var_2937;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2939;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2558;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2678;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2677;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2943;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2942;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2938;
      }
   }
}
