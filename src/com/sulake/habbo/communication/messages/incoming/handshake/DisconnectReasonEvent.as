package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2347:int = 0;
      
      public static const const_1932:int = 1;
      
      public static const const_2046:int = 2;
      
      public static const const_2262:int = 3;
      
      public static const const_2228:int = 4;
      
      public static const const_2280:int = 5;
      
      public static const const_1915:int = 10;
      
      public static const const_2286:int = 11;
      
      public static const const_2279:int = 12;
      
      public static const const_2158:int = 13;
      
      public static const const_2288:int = 16;
      
      public static const const_2333:int = 17;
      
      public static const const_2278:int = 18;
      
      public static const const_2224:int = 19;
      
      public static const const_2331:int = 20;
      
      public static const const_2210:int = 22;
      
      public static const const_2295:int = 23;
      
      public static const const_2324:int = 24;
      
      public static const const_2172:int = 25;
      
      public static const const_2265:int = 26;
      
      public static const const_2313:int = 27;
      
      public static const const_2246:int = 28;
      
      public static const const_2251:int = 29;
      
      public static const const_2327:int = 100;
      
      public static const const_2277:int = 101;
      
      public static const const_2290:int = 102;
      
      public static const const_2164:int = 103;
      
      public static const const_2316:int = 104;
      
      public static const const_2167:int = 105;
      
      public static const const_2348:int = 106;
      
      public static const const_2159:int = 107;
      
      public static const const_2146:int = 108;
      
      public static const const_2216:int = 109;
      
      public static const const_2136:int = 110;
      
      public static const const_2161:int = 111;
      
      public static const const_2308:int = 112;
      
      public static const const_2321:int = 113;
      
      public static const const_2258:int = 114;
      
      public static const const_2282:int = 115;
      
      public static const const_2283:int = 116;
      
      public static const const_2139:int = 117;
      
      public static const const_2255:int = 118;
      
      public static const const_2322:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_9 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1932:
            case const_1915:
               return "banned";
            case const_2046:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
