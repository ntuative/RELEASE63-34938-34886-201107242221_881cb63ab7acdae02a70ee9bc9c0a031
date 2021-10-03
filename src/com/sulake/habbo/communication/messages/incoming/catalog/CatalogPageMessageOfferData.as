package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1400:int;
      
      private var var_1799:String;
      
      private var var_1204:int;
      
      private var var_1203:int;
      
      private var var_1798:int;
      
      private var var_1790:int;
      
      private var var_1183:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1400 = param1.readInteger();
         this.var_1799 = param1.readString();
         this.var_1204 = param1.readInteger();
         this.var_1203 = param1.readInteger();
         this.var_1798 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1183 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1183.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         this.var_1790 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1400;
      }
      
      public function get localizationId() : String
      {
         return this.var_1799;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1204;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1203;
      }
      
      public function get products() : Array
      {
         return this.var_1183;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1798;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1790;
      }
   }
}
