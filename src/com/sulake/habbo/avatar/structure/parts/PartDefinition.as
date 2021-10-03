package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2400:String;
      
      private var var_1780:String;
      
      private var var_2399:String;
      
      private var var_1781:Boolean;
      
      private var var_1779:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2400 = String(param1["set-type"]);
         this.var_1780 = String(param1["flipped-set-type"]);
         this.var_2399 = String(param1["remove-set-type"]);
         this.var_1781 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1779 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1779;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1779 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2400;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1780;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2399;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1781;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1781 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1780 = param1;
      }
   }
}
