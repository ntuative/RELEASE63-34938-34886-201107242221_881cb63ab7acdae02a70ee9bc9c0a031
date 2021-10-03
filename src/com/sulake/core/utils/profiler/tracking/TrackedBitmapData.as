package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_2311:int = 16777215;
      
      public static const const_1329:int = 8191;
      
      public static const const_1180:int = 8191;
      
      public static const const_2190:int = 1;
      
      public static const const_1316:int = 1;
      
      public static const const_1241:int = 1;
      
      private static var var_559:uint = 0;
      
      private static var var_558:uint = 0;
       
      
      private var _owner:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1329)
         {
            param2 = const_1329;
         }
         else if(param2 < const_1316)
         {
            param2 = const_1316;
         }
         if(param3 > const_1180)
         {
            param3 = const_1180;
         }
         else if(param3 < const_1241)
         {
            param3 = const_1241;
         }
         super(param2,param3,param4,param5);
         ++var_559;
         var_558 += param2 * param3 * 4;
         this._owner = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_559;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_558;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_558 -= width * height * 4;
            --var_559;
            this._disposed = true;
            this._owner = null;
            super.dispose();
         }
      }
   }
}
