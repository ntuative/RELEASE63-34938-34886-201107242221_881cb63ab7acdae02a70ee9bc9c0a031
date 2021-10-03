package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_193;
         param1["bound_to_parent_rect"] = const_104;
         param1["child_window"] = const_1216;
         param1["embedded_controller"] = const_1386;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_874;
         param1["mouse_dragging_target"] = const_270;
         param1["mouse_dragging_trigger"] = const_454;
         param1["mouse_scaling_target"] = const_339;
         param1["mouse_scaling_trigger"] = const_527;
         param1["horizontal_mouse_scaling_trigger"] = const_255;
         param1["vertical_mouse_scaling_trigger"] = const_249;
         param1["observe_parent_input_events"] = const_1213;
         param1["optimize_region_to_layout_size"] = const_521;
         param1["parent_window"] = const_1403;
         param1["relative_horizontal_scale_center"] = const_211;
         param1["relative_horizontal_scale_fixed"] = const_146;
         param1["relative_horizontal_scale_move"] = const_376;
         param1["relative_horizontal_scale_strech"] = const_423;
         param1["relative_scale_center"] = const_1193;
         param1["relative_scale_fixed"] = const_994;
         param1["relative_scale_move"] = const_1254;
         param1["relative_scale_strech"] = const_1289;
         param1["relative_vertical_scale_center"] = const_205;
         param1["relative_vertical_scale_fixed"] = const_159;
         param1["relative_vertical_scale_move"] = const_247;
         param1["relative_vertical_scale_strech"] = const_300;
         param1["on_resize_align_left"] = const_804;
         param1["on_resize_align_right"] = const_570;
         param1["on_resize_align_center"] = const_556;
         param1["on_resize_align_top"] = const_784;
         param1["on_resize_align_bottom"] = const_645;
         param1["on_resize_align_middle"] = const_635;
         param1["on_accommodate_align_left"] = const_1323;
         param1["on_accommodate_align_right"] = const_600;
         param1["on_accommodate_align_center"] = const_1015;
         param1["on_accommodate_align_top"] = const_1310;
         param1["on_accommodate_align_bottom"] = const_559;
         param1["on_accommodate_align_middle"] = const_909;
         param1["route_input_events_to_parent"] = const_648;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1338;
         param1["scalable_with_mouse"] = const_1408;
         param1["reflect_horizontal_resize_to_parent"] = const_671;
         param1["reflect_vertical_resize_to_parent"] = const_668;
         param1["reflect_resize_to_parent"] = const_323;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1383;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
