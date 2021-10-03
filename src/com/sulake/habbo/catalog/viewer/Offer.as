package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_2029:String = "pricing_model_unknown";
      
      public static const const_445:String = "pricing_model_single";
      
      public static const const_441:String = "pricing_model_multi";
      
      public static const const_569:String = "pricing_model_bundle";
      
      public static const const_1902:String = "price_type_none";
      
      public static const const_999:String = "price_type_credits";
      
      public static const const_1353:String = "price_type_activitypoints";
      
      public static const const_1269:String = "price_type_credits_and_activitypoints";
       
      
      private var var_785:String;
      
      private var var_1202:String;
      
      private var var_1400:int;
      
      private var var_1799:String;
      
      private var var_1204:int;
      
      private var var_1203:int;
      
      private var var_1798:int;
      
      private var var_266:ICatalogPage;
      
      private var var_644:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_1790:int = 0;
      
      private var var_2416:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1400 = param1;
         this.var_1799 = param2;
         this.var_1204 = param3;
         this.var_1203 = param4;
         this.var_1798 = param5;
         this.var_266 = param8;
         this.var_1790 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_1790;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_266;
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
      
      public function get activityPointType() : int
      {
         return this.var_1798;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_644;
      }
      
      public function get pricingModel() : String
      {
         return this.var_785;
      }
      
      public function get priceType() : String
      {
         return this.var_1202;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2416;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2416 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1400 = 0;
         this.var_1799 = "";
         this.var_1204 = 0;
         this.var_1203 = 0;
         this.var_1798 = 0;
         this.var_266 = null;
         if(this.var_644 != null)
         {
            this.var_644.dispose();
            this.var_644 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_785)
         {
            case const_445:
               this.var_644 = new SingleProductContainer(this,param1);
               break;
            case const_441:
               this.var_644 = new MultiProductContainer(this,param1);
               break;
            case const_569:
               this.var_644 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_785);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_785 = const_445;
            }
            else
            {
               this.var_785 = const_441;
            }
         }
         else if(param1.length > 1)
         {
            this.var_785 = const_569;
         }
         else
         {
            this.var_785 = const_2029;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1204 > 0 && this.var_1203 > 0)
         {
            this.var_1202 = const_1269;
         }
         else if(this.var_1204 > 0)
         {
            this.var_1202 = const_999;
         }
         else if(this.var_1203 > 0)
         {
            this.var_1202 = const_1353;
         }
         else
         {
            this.var_1202 = const_1902;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_266.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_644.products)
         {
            _loc4_ = this.var_266.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
