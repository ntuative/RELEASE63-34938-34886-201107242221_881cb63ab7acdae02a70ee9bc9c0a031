package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2478:int;
      
      private var var_2479:int;
      
      private var var_2480:int;
      
      private var _dayOffsets:Array;
      
      private var var_1947:Array;
      
      private var var_1948:Array;
      
      private var var_2482:int;
      
      private var var_2481:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2478;
      }
      
      public function get offerCount() : int
      {
         return this.var_2479;
      }
      
      public function get historyLength() : int
      {
         return this.var_2480;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1947;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1948;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2482;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2481;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2478 = param1.readInteger();
         this.var_2479 = param1.readInteger();
         this.var_2480 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1947 = [];
         this.var_1948 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1947.push(param1.readInteger());
            this.var_1948.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2481 = param1.readInteger();
         this.var_2482 = param1.readInteger();
         return true;
      }
   }
}
