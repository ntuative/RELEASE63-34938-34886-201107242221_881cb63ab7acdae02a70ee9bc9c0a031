package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_187:Number = 0;
      
      private var var_188:Number = 0;
      
      private var var_468:int = 0;
      
      private var var_564:int = 0;
      
      private var var_697:int = 0;
      
      private var _type:int = 0;
      
      private var var_3128:String = "";
      
      private var var_1491:int = -1;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_2342:int = 0;
      
      private var var_2372:Boolean;
      
      private var var_2729:String = null;
      
      private var var_196:Boolean = false;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_196 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_196)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_187;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_196)
         {
            this.var_187 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_188;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_196)
         {
            this.var_188 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_468;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_468 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_564;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_564 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_697;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_697 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_196)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_196)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_196)
         {
            this._data = param1;
         }
      }
      
      public function get staticClass() : String
      {
         return this.var_2729;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!this.var_196)
         {
            this.var_2729 = param1;
         }
      }
      
      public function get extra() : int
      {
         return this.var_1491;
      }
      
      public function set extra(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_1491 = param1;
         }
      }
      
      public function get expiryTime() : int
      {
         return this.var_2342;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_2342 = param1;
         }
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2372;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         this.var_2372 = param1;
      }
   }
}
