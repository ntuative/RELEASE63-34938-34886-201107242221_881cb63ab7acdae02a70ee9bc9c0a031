package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class SellablePetBreedData
   {
       
      
      private var _type:int;
      
      private var var_1861:int;
      
      private var var_2820:Boolean;
      
      private var var_2819:Boolean;
      
      public function SellablePetBreedData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1861 = param1.readInteger();
         this.var_2820 = param1.readBoolean();
         this.var_2819 = param1.readBoolean();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get breed() : int
      {
         return this.var_1861;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2820;
      }
      
      public function get rare() : Boolean
      {
         return this.var_2819;
      }
   }
}
