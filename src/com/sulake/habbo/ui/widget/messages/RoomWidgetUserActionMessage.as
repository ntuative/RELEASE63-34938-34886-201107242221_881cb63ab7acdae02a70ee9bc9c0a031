package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_563:String = "RWUAM_WHISPER_USER";
      
      public static const const_510:String = "RWUAM_IGNORE_USER";
      
      public static const const_632:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_400:String = "RWUAM_KICK_USER";
      
      public static const const_587:String = "RWUAM_BAN_USER";
      
      public static const const_582:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_634:String = "RWUAM_RESPECT_USER";
      
      public static const const_564:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_611:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_584:String = "RWUAM_START_TRADING";
      
      public static const const_905:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_670:String = "RWUAM_KICK_BOT";
      
      public static const const_675:String = "RWUAM_REPORT";
      
      public static const const_504:String = "RWUAM_PICKUP_PET";
      
      public static const const_1752:String = "RWUAM_TRAIN_PET";
      
      public static const const_514:String = " RWUAM_RESPECT_PET";
      
      public static const const_272:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_664:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
