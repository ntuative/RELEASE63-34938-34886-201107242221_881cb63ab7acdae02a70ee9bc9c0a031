package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_2048:IID;
      
      private var var_1150:Boolean;
      
      private var var_1327:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_2048 = param1;
         this.var_1327 = new Array();
         this.var_1150 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_2048;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1150;
      }
      
      public function get receivers() : Array
      {
         return this.var_1327;
      }
      
      public function dispose() : void
      {
         if(!this.var_1150)
         {
            this.var_1150 = true;
            this.var_2048 = null;
            while(this.var_1327.length > 0)
            {
               this.var_1327.pop();
            }
            this.var_1327 = null;
         }
      }
   }
}
