package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_1957:String;
      
      private var var_1954:int;
      
      private var var_1956:int;
      
      private var var_1798:int;
      
      private var _id:int;
      
      private var var_1955:Boolean;
      
      private var _type:String;
      
      private var var_2633:String;
      
      private var var_2632:int;
      
      private var var_1958:String;
      
      private var var_2630:int;
      
      private var var_2631:int;
      
      private var var_1571:int;
      
      private var var_1959:Date;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         this.var_1959 = new Date();
         super();
         this.var_1957 = param1.readString();
         this.var_1954 = param1.readInteger();
         this.var_1956 = param1.readInteger();
         this.var_1798 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_1955 = param1.readBoolean();
         this._type = param1.readString();
         this.var_2633 = param1.readString();
         this.var_2632 = param1.readInteger();
         this.var_1958 = param1.readString();
         this.var_2630 = param1.readInteger();
         this.var_2631 = param1.readInteger();
         this.var_1571 = param1.readInteger();
      }
      
      public function get campaignCode() : String
      {
         return this.var_1957;
      }
      
      public function get localizationCode() : String
      {
         return this.var_1958;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_1954;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_1956;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1798;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_1955;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_2633;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_2632;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2630;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2631;
      }
      
      public function get waitPeriodSeconds() : int
      {
         if(this.var_1571 < 1)
         {
            return 0;
         }
         var _loc1_:Date = new Date();
         var _loc2_:int = _loc1_.getTime() - this.var_1959.getTime();
         return int(Math.max(0,this.var_1571 - Math.floor(_loc2_ / 1000)));
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_1957;
      }
      
      public function method_2() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_1958;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_1955 = param1;
      }
      
      public function get lastQuestInCampaign() : Boolean
      {
         return this.var_1954 >= this.var_1956;
      }
      
      public function get receiveTime() : Date
      {
         return this.var_1959;
      }
      
      public function set waitPeriodSeconds(param1:int) : void
      {
         this.var_1571 = param1;
      }
   }
}
