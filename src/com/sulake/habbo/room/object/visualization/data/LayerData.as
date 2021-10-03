package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_764:String = "";
      
      public static const const_403:int = 0;
      
      public static const const_562:int = 255;
      
      public static const const_838:Boolean = false;
      
      public static const const_508:int = 0;
      
      public static const const_565:int = 0;
      
      public static const const_416:int = 0;
      
      public static const const_1376:int = 1;
      
      public static const const_1365:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2458:String = "";
      
      private var var_1995:int = 0;
      
      private var var_2459:int = 255;
      
      private var var_2457:Boolean = false;
      
      private var var_2455:int = 0;
      
      private var var_2454:int = 0;
      
      private var var_2456:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2458 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2458;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1995 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1995;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2459 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2459;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2457 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2457;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2455 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2455;
      }
      
      public function set include(param1:int) : void
      {
         this.var_2454 = param1;
      }
      
      public function get include() : int
      {
         return this.var_2454;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2456 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2456;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.include = param1.include;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
