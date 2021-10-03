package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2806:Boolean;
      
      private var var_2807:int;
      
      private var var_2052:Array;
      
      private var var_922:Array;
      
      private var var_921:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2806;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2807;
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_2052 = [];
         this.var_922 = [];
         this.var_921 = [];
         this.var_2806 = param1.readBoolean();
         this.var_2807 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_2052.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_922.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_921.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
