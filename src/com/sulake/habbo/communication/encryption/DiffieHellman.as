package com.sulake.habbo.communication.encryption
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.communication.handshake.IKeyExchange;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_953:BigInteger;
      
      private var var_2645:BigInteger;
      
      private var var_2107:BigInteger;
      
      private var var_2880:BigInteger;
      
      private var var_1649:BigInteger;
      
      private var var_2106:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1649 = param1;
         this.var_2106 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1649.toString() + ",generator: " + this.var_2106.toString() + ",secret: " + param1);
         this.var_953 = new BigInteger();
         this.var_953.fromRadix(param1,param2);
         this.var_2645 = this.var_2106.modPow(this.var_953,this.var_1649);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_2107 = new BigInteger();
         this.var_2107.fromRadix(param1,param2);
         this.var_2880 = this.var_2107.modPow(this.var_953,this.var_1649);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2645.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2880.toRadix(param1);
      }
   }
}
