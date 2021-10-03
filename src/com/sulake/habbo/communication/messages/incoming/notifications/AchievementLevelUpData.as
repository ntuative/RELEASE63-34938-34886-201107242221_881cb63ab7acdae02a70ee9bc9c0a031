package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1190:int;
      
      private var var_2086:int;
      
      private var var_2335:int;
      
      private var var_2336:int;
      
      private var var_2334:int;
      
      private var var_2003:int;
      
      private var var_2332:String = "";
      
      private var var_2331:String = "";
      
      private var var_2333:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1190 = param1.readInteger();
         this.var_2003 = param1.readInteger();
         this.var_2332 = param1.readString();
         this.var_2086 = param1.readInteger();
         this.var_2335 = param1.readInteger();
         this.var_2336 = param1.readInteger();
         this.var_2334 = param1.readInteger();
         this.var_2333 = param1.readInteger();
         this.var_2331 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1190;
      }
      
      public function get points() : int
      {
         return this.var_2086;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2335;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2336;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_2334;
      }
      
      public function get badgeId() : int
      {
         return this.var_2003;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2332;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2331;
      }
      
      public function get achievementID() : int
      {
         return this.var_2333;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
