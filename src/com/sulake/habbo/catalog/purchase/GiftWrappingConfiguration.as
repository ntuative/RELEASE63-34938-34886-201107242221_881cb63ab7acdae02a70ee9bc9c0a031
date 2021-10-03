package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1665:Boolean = false;
      
      private var var_2108:int;
      
      private var var_2052:Array;
      
      private var var_922:Array;
      
      private var var_921:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1665 = _loc2_.isWrappingEnabled;
         this.var_2108 = _loc2_.wrappingPrice;
         this.var_2052 = _loc2_.stuffTypes;
         this.var_922 = _loc2_.boxTypes;
         this.var_921 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1665;
      }
      
      public function get price() : int
      {
         return this.var_2108;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_2052;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_922;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_921;
      }
   }
}
