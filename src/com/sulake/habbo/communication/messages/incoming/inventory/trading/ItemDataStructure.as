package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2739:int;
      
      private var var_1496:String;
      
      private var var_2979:int;
      
      private var var_2978:int;
      
      private var _category:int;
      
      private var var_2278:String;
      
      private var var_1491:int;
      
      private var var_2984:int;
      
      private var var_2982:int;
      
      private var var_2981:int;
      
      private var var_2983:int;
      
      private var var_2980:Boolean;
      
      private var var_3135:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2739 = param1;
         this.var_1496 = param2;
         this.var_2979 = param3;
         this.var_2978 = param4;
         this._category = param5;
         this.var_2278 = param6;
         this.var_1491 = param7;
         this.var_2984 = param8;
         this.var_2982 = param9;
         this.var_2981 = param10;
         this.var_2983 = param11;
         this.var_2980 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2739;
      }
      
      public function get itemType() : String
      {
         return this.var_1496;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2979;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2978;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2278;
      }
      
      public function get extra() : int
      {
         return this.var_1491;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2984;
      }
      
      public function get creationDay() : int
      {
         return this.var_2982;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2981;
      }
      
      public function get creationYear() : int
      {
         return this.var_2983;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2980;
      }
      
      public function get songID() : int
      {
         return this.var_1491;
      }
   }
}
