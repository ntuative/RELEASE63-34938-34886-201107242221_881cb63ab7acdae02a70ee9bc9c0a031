package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomEntryData;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_2118:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_228:MsgWithRequestId;
      
      private var var_711:RoomEventData;
      
      private var var_2846:Boolean;
      
      private var var_2843:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2317:int;
      
      private var var_299:GuestRoomData;
      
      private var var_1082:PublicRoomShortData;
      
      private var var_2844:int;
      
      private var var_2842:Boolean;
      
      private var var_2850:int;
      
      private var var_2847:Boolean;
      
      private var var_2078:int;
      
      private var var_2849:Boolean;
      
      private var var_1573:Array;
      
      private var var_1632:Array;
      
      private var var_2841:int;
      
      private var var_1633:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1342:Boolean;
      
      private var var_2851:int;
      
      private var var_2848:Boolean;
      
      private var var_2845:int = 0;
      
      private var var_2079:OfficialRoomEntryData;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1573 = new Array();
         this.var_1632 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_299 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_299 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_1082 = null;
         this.var_299 = null;
         this._currentRoomOwner = false;
         if(param1.privateRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_1082 = param1.publicSpace;
            this.var_711 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_711 != null)
         {
            this.var_711.dispose();
            this.var_711 = null;
         }
         if(this.var_1082 != null)
         {
            this.var_1082.dispose();
            this.var_1082 = null;
         }
         if(this.var_299 != null)
         {
            this.var_299.dispose();
            this.var_299 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_299 != null)
         {
            this.var_299.dispose();
         }
         this.var_299 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_711 != null)
         {
            this.var_711.dispose();
         }
         this.var_711 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_228 != null && this.var_228 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_228 != null && this.var_228 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_228 != null && this.var_228 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_228 = param1;
         this.var_2079 = param1.ad;
         this.var_1342 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_228 = param1;
         this.var_1342 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_228 = param1;
         this.var_1342 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_228 == null)
         {
            return;
         }
         this.var_228.dispose();
         this.var_228 = null;
      }
      
      public function set adRoom(param1:OfficialRoomEntryData) : void
      {
         this.var_2079 = param1;
      }
      
      public function get adRoom() : OfficialRoomEntryData
      {
         return this.var_2079;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_228 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_228 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_228 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_711;
      }
      
      public function get avatarId() : int
      {
         return this.var_2317;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2846;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2843;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_299;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_1082;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2842;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2850;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_2078;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2847;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2851;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2844;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2849;
      }
      
      public function get adIndex() : int
      {
         return this.var_2845;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2848;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2317 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2850 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2842 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2846 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2843 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2847 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_2078 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2851 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2844 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2849 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2845 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2848 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1573 = param1;
         this.var_1632 = new Array();
         for each(_loc2_ in this.var_1573)
         {
            if(_loc2_.visible)
            {
               this.var_1632.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1573;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1632;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2841 = param1.limit;
         this.var_1633 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1633 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_299.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_299 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_299.flatId;
         return this.var_2078 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1633 >= this.var_2841;
      }
      
      public function startLoading() : void
      {
         this.var_1342 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1342;
      }
   }
}
