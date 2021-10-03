package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2562:String;
      
      private var var_2563:Class;
      
      private var var_2561:Class;
      
      private var var_1911:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2562 = param1;
         this.var_2563 = param2;
         this.var_2561 = param3;
         if(rest == null)
         {
            this.var_1911 = new Array();
         }
         else
         {
            this.var_1911 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2562;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2563;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2561;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1911;
      }
   }
}
