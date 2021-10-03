package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1400:int;
      
      private var var_1839:String;
      
      private var var_2108:int;
      
      private var _upgrade:Boolean;
      
      private var var_2771:Boolean;
      
      private var var_2766:int;
      
      private var var_2767:int;
      
      private var var_2770:int;
      
      private var var_2769:int;
      
      private var var_2768:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1400 = param1.readInteger();
         this.var_1839 = param1.readString();
         this.var_2108 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2771 = param1.readBoolean();
         this.var_2766 = param1.readInteger();
         this.var_2767 = param1.readInteger();
         this.var_2770 = param1.readInteger();
         this.var_2769 = param1.readInteger();
         this.var_2768 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1400;
      }
      
      public function get productCode() : String
      {
         return this.var_1839;
      }
      
      public function get price() : int
      {
         return this.var_2108;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2771;
      }
      
      public function get periods() : int
      {
         return this.var_2766;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2767;
      }
      
      public function get year() : int
      {
         return this.var_2770;
      }
      
      public function get month() : int
      {
         return this.var_2769;
      }
      
      public function get day() : int
      {
         return this.var_2768;
      }
   }
}
