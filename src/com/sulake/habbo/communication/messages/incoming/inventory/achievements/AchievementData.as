package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1190:int;
      
      private var var_2003:String;
      
      private var var_2021:int;
      
      private var var_2335:int;
      
      private var var_2336:int;
      
      private var var_2022:int;
      
      private var var_2020:Boolean;
      
      private var _category:String;
      
      private var var_2722:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1190 = param1.readInteger();
         this.var_2003 = param1.readString();
         this.var_2021 = Math.max(1,param1.readInteger());
         this.var_2335 = param1.readInteger();
         this.var_2336 = param1.readInteger();
         this.var_2022 = param1.readInteger();
         this.var_2020 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2722 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_2003;
      }
      
      public function get level() : int
      {
         return this.var_1190;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2021;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2335;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2336;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2022;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_2020;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2722;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1190 > 1 || this.var_2020;
      }
      
      public function setMaxProgress() : void
      {
         this.var_2022 = this.var_2021;
      }
   }
}
