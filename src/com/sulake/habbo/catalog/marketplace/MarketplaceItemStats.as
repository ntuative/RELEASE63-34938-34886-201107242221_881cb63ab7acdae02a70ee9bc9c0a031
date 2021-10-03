package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2478:int;
      
      private var var_2479:int;
      
      private var var_2480:int;
      
      private var _dayOffsets:Array;
      
      private var var_1947:Array;
      
      private var var_1948:Array;
      
      private var var_2482:int;
      
      private var var_2481:int;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2478 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2479 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2480 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1947 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1948 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2482 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2481 = param1;
      }
   }
}
