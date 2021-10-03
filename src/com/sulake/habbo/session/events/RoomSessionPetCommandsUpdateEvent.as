package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPetCommandsUpdateEvent extends RoomSessionEvent
   {
      
      public static const PET_COMMANDS:String = "RSPIUE_ENABLED_PET_COMMANDS";
       
      
      private var var_1749:int;
      
      private var var_2347:Array;
      
      private var var_2707:Array;
      
      public function RoomSessionPetCommandsUpdateEvent(param1:IRoomSession, param2:int, param3:Array, param4:Array, param5:Boolean = false, param6:Boolean = false)
      {
         super(RoomSessionPetCommandsUpdateEvent.PET_COMMANDS,param1,param5,param6);
         this.var_1749 = param2;
         this.var_2347 = param3;
         this.var_2707 = param4;
      }
      
      public function get petId() : int
      {
         return this.var_1749;
      }
      
      public function get allCommands() : Array
      {
         return this.var_2347;
      }
      
      public function get enabledCommands() : Array
      {
         return this.var_2707;
      }
   }
}