package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_64:String = "i";
      
      public static const const_71:String = "s";
      
      public static const const_195:String = "e";
       
      
      private var var_1541:String;
      
      private var var_2779:int;
      
      private var var_1019:String;
      
      private var var_1540:int;
      
      private var var_1908:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1541 = param1.readString();
         this.var_2779 = param1.readInteger();
         this.var_1019 = param1.readString();
         this.var_1540 = param1.readInteger();
         this.var_1908 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1541;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2779;
      }
      
      public function get extraParam() : String
      {
         return this.var_1019;
      }
      
      public function get productCount() : int
      {
         return this.var_1540;
      }
      
      public function get expiration() : int
      {
         return this.var_1908;
      }
   }
}
