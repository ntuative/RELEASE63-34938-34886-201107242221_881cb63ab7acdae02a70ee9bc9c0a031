package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_3087:uint;
      
      private var _root:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_692:IWindowContext;
      
      private var var_1218:IMouseDraggingService;
      
      private var var_1215:IMouseScalingService;
      
      private var var_1216:IMouseListenerService;
      
      private var var_1214:IFocusManagerService;
      
      private var var_1217:IToolTipAgentService;
      
      private var var_1213:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_3087 = 0;
         this._root = param2;
         this.var_692 = param1;
         this.var_1218 = new WindowMouseDragger(param2);
         this.var_1215 = new WindowMouseScaler(param2);
         this.var_1216 = new WindowMouseListener(param2);
         this.var_1214 = new FocusManager(param2);
         this.var_1217 = new WindowToolTipAgent(param2);
         this.var_1213 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1218 != null)
         {
            this.var_1218.dispose();
            this.var_1218 = null;
         }
         if(this.var_1215 != null)
         {
            this.var_1215.dispose();
            this.var_1215 = null;
         }
         if(this.var_1216 != null)
         {
            this.var_1216.dispose();
            this.var_1216 = null;
         }
         if(this.var_1214 != null)
         {
            this.var_1214.dispose();
            this.var_1214 = null;
         }
         if(this.var_1217 != null)
         {
            this.var_1217.dispose();
            this.var_1217 = null;
         }
         if(this.var_1213 != null)
         {
            this.var_1213.dispose();
            this.var_1213 = null;
         }
         this._root = null;
         this.var_692 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1218;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1215;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1216;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1214;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1217;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1213;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
