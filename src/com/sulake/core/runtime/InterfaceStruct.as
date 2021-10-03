package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1581:IID;
      
      private var var_1990:String;
      
      private var var_122:IUnknown;
      
      private var var_851:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1581 = param1;
         this.var_1990 = getQualifiedClassName(this.var_1581);
         this.var_122 = param2;
         this.var_851 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1581;
      }
      
      public function get iis() : String
      {
         return this.var_1990;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_122;
      }
      
      public function get references() : uint
      {
         return this.var_851;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_122 == null;
      }
      
      public function dispose() : void
      {
         this.var_1581 = null;
         this.var_1990 = null;
         this.var_122 = null;
         this.var_851 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_851;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_851) : uint(0);
      }
   }
}
