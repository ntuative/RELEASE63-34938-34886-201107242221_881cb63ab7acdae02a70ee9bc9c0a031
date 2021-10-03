package com.sulake.habbo.communication.messages.incoming.inventory.avatareffect
{
   public class AvatarEffect
   {
       
      
      private var _type:int;
      
      private var var_1978:int;
      
      private var var_2439:int;
      
      private var var_2440:int;
      
      public function AvatarEffect()
      {
         super();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get duration() : int
      {
         return this.var_1978;
      }
      
      public function set duration(param1:int) : void
      {
         this.var_1978 = param1;
      }
      
      public function get inactiveEffectsInInventory() : int
      {
         return this.var_2439;
      }
      
      public function set inactiveEffectsInInventory(param1:int) : void
      {
         this.var_2439 = param1;
      }
      
      public function get secondsLeftIfActive() : int
      {
         return this.var_2440;
      }
      
      public function set secondsLeftIfActive(param1:int) : void
      {
         this.var_2440 = param1;
      }
   }
}
