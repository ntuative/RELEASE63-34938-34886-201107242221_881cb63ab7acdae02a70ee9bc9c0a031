package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_147:String = "hex";
      
      public static const const_37:String = "int";
      
      public static const const_266:String = "uint";
      
      public static const const_123:String = "Number";
      
      public static const const_36:String = "Boolean";
      
      public static const const_54:String = "String";
      
      public static const const_269:String = "Point";
      
      public static const const_303:String = "Rectangle";
      
      public static const const_168:String = "Array";
      
      public static const const_301:String = "Map";
       
      
      private var var_629:String;
      
      private var var_194:Object;
      
      private var _type:String;
      
      private var var_2365:Boolean;
      
      private var var_3083:Boolean;
      
      private var var_2366:Array;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean, param5:Array = null)
      {
         super();
         this.var_629 = param1;
         this.var_194 = param2;
         this._type = param3;
         this.var_2365 = param4;
         this.var_3083 = param3 == const_301 || param3 == const_168 || param3 == const_269 || param3 == const_303;
         this.var_2366 = param5;
      }
      
      public function get key() : String
      {
         return this.var_629;
      }
      
      public function get value() : Object
      {
         return this.var_194;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get valid() : Boolean
      {
         return this.var_2365;
      }
      
      public function get range() : Array
      {
         return this.var_2366;
      }
      
      public function toString() : String
      {
         switch(this._type)
         {
            case const_147:
               return "0x" + uint(this.var_194).toString(16);
            case const_36:
               return Boolean(this.var_194) == true ? "FlatAccessibleMessageParser" : "false";
            case const_269:
               return "Point(" + Point(this.var_194).x + ", " + Point(this.var_194).y + ")";
            case const_303:
               return "Rectangle(" + Rectangle(this.var_194).x + ", " + Rectangle(this.var_194).y + ", " + Rectangle(this.var_194).width + ", " + Rectangle(this.var_194).height + ")";
            default:
               return String(this.value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(this._type)
         {
            case const_301:
               _loc3_ = this.var_194 as Map;
               _loc1_ = "<var key=\"" + this.var_629 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_168:
               _loc4_ = this.var_194 as Array;
               _loc1_ = "<var key=\"" + this.var_629 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_269:
               _loc5_ = this.var_194 as Point;
               _loc1_ = "<var key=\"" + this.var_629 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_37 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_37 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_303:
               _loc6_ = this.var_194 as Rectangle;
               _loc1_ = "<var key=\"" + this.var_629 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_37 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_37 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_37 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_37 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_147:
               _loc1_ = "<var key=\"" + this.var_629 + "\" value=\"" + "0x" + uint(this.var_194).toString(16) + "\" type=\"" + this._type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + this.var_629 + "\" value=\"" + this.var_194 + "\" type=\"" + this._type + "\" />";
         }
         return _loc1_;
      }
   }
}
