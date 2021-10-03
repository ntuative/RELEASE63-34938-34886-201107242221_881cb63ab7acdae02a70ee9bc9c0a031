package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.ActivityPointTypeEnum;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_1400:int;
      
      private var var_1839:String;
      
      private var var_2108:int;
      
      private var _upgrade:Boolean;
      
      private var var_2771:Boolean;
      
      private var var_2766:int;
      
      private var var_2767:int;
      
      private var var_266:ICatalogPage;
      
      private var var_2770:int;
      
      private var var_2769:int;
      
      private var var_2768:int;
      
      private var var_1697:String;
      
      private var var_2881:Boolean = false;
      
      private var _disposed:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this.var_1400 = param1;
         this.var_1839 = param2;
         this.var_2108 = param3;
         this._upgrade = param4;
         this.var_2771 = param5;
         this.var_2766 = param6;
         this.var_2767 = param7;
         this.var_2770 = param8;
         this.var_2769 = param9;
         this.var_2768 = param10;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_266 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get extraParameter() : String
      {
         return this.var_1697;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1697 = param1;
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
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return ActivityPointTypeEnum.PIXEL;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_2108;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_266;
      }
      
      public function get priceType() : String
      {
         return Offer.const_999;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1839;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_266 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2881;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2881 = param1;
      }
   }
}
