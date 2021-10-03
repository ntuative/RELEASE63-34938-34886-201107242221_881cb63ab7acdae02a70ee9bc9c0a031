package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_904:TileHeightMap = null;
      
      private var var_1379:LegacyWallGeometry = null;
      
      private var var_1378:RoomCamera = null;
      
      private var var_902:SelectedRoomObjectData = null;
      
      private var var_903:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_596:Map;
      
      private var var_597:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_596 = new Map();
         this.var_597 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1379 = new LegacyWallGeometry();
         this.var_1378 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_904;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_904 != null)
         {
            this.var_904.dispose();
         }
         this.var_904 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1379;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1378;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_902;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_902 != null)
         {
            this.var_902.dispose();
         }
         this.var_902 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_903;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_903 != null)
         {
            this.var_903.dispose();
         }
         this.var_903 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_904 != null)
         {
            this.var_904.dispose();
            this.var_904 = null;
         }
         if(this.var_1379 != null)
         {
            this.var_1379.dispose();
            this.var_1379 = null;
         }
         if(this.var_1378 != null)
         {
            this.var_1378.dispose();
            this.var_1378 = null;
         }
         if(this.var_902 != null)
         {
            this.var_902.dispose();
            this.var_902 = null;
         }
         if(this.var_903 != null)
         {
            this.var_903.dispose();
            this.var_903 = null;
         }
         if(this.var_596 != null)
         {
            this.var_596.dispose();
            this.var_596 = null;
         }
         if(this.var_597 != null)
         {
            this.var_597.dispose();
            this.var_597 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_596.remove(param1.id);
            this.var_596.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_596.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_596.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_596.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_597.remove(param1.id);
            this.var_597.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_597.length > 0)
         {
            return this.getWallItemDataWithId(this.var_597.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_597.remove(param1);
      }
   }
}
