package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1665:Boolean;
      
      private var var_2855:int;
      
      private var var_2082:int;
      
      private var var_2081:int;
      
      private var var_2854:int;
      
      private var var_2852:int;
      
      private var var_2853:int;
      
      private var var_2499:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1665;
      }
      
      public function get commission() : int
      {
         return this.var_2855;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_2082;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_2081;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2852;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2854;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2853;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2499;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1665 = param1.readBoolean();
         this.var_2855 = param1.readInteger();
         this.var_2082 = param1.readInteger();
         this.var_2081 = param1.readInteger();
         this.var_2852 = param1.readInteger();
         this.var_2854 = param1.readInteger();
         this.var_2853 = param1.readInteger();
         this.var_2499 = param1.readInteger();
         return true;
      }
   }
}
