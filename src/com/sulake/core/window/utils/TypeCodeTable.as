package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_979;
         param1["badge"] = const_828;
         param1["bitmap"] = const_411;
         param1["border"] = const_770;
         param1["border_notify"] = const_1945;
         param1["bubble"] = const_748;
         param1["bubble_pointer_up"] = const_1361;
         param1["bubble_pointer_right"] = const_1222;
         param1["bubble_pointer_down"] = const_1306;
         param1["bubble_pointer_left"] = const_1174;
         param1["button"] = const_529;
         param1["button_thick"] = const_789;
         param1["button_icon"] = const_1817;
         param1["button_group_left"] = const_961;
         param1["button_group_center"] = const_890;
         param1["button_group_right"] = const_896;
         param1["canvas"] = const_924;
         param1["checkbox"] = const_960;
         param1["closebutton"] = const_1185;
         param1["container"] = const_446;
         param1["container_button"] = const_1016;
         param1["display_object_wrapper"] = const_920;
         param1["dropmenu"] = const_595;
         param1["dropmenu_item"] = const_619;
         param1["frame"] = const_462;
         param1["frame_notify"] = const_1917;
         param1["header"] = const_744;
         param1["html"] = const_1251;
         param1["icon"] = const_1238;
         param1["itemgrid"] = const_1308;
         param1["itemgrid_horizontal"] = const_513;
         param1["itemgrid_vertical"] = const_740;
         param1["itemlist"] = WINDOW_TYPE_ITEMLIST;
         param1["itemlist_horizontal"] = const_447;
         param1["itemlist_vertical"] = const_444;
         param1["label"] = const_911;
         param1["maximizebox"] = const_1801;
         param1["menu"] = const_1900;
         param1["menu_item"] = const_2057;
         param1["submenu"] = const_1319;
         param1["minimizebox"] = const_1814;
         param1["notify"] = const_1980;
         param1["null"] = const_818;
         param1["password"] = const_973;
         param1["radiobutton"] = const_967;
         param1["region"] = const_368;
         param1["restorebox"] = const_1761;
         param1["scaler"] = const_591;
         param1["scaler_horizontal"] = const_1785;
         param1["scaler_vertical"] = const_2022;
         param1["scrollbar_horizontal"] = const_515;
         param1["scrollbar_vertical"] = const_850;
         param1["scrollbar_slider_button_up"] = const_1382;
         param1["scrollbar_slider_button_down"] = const_1314;
         param1["scrollbar_slider_button_left"] = const_1334;
         param1["scrollbar_slider_button_right"] = const_1302;
         param1["scrollbar_slider_bar_horizontal"] = const_1294;
         param1["scrollbar_slider_bar_vertical"] = const_1237;
         param1["scrollbar_slider_track_horizontal"] = const_1303;
         param1["scrollbar_slider_track_vertical"] = const_1370;
         param1["scrollable_itemlist"] = const_1920;
         param1["scrollable_itemlist_vertical"] = const_672;
         param1["scrollable_itemlist_horizontal"] = const_1272;
         param1["selector"] = const_949;
         param1["selector_list"] = const_941;
         param1["submenu"] = const_1319;
         param1["tab_button"] = const_1006;
         param1["tab_container_button"] = const_1219;
         param1["tab_context"] = const_424;
         param1["tab_content"] = const_1326;
         param1["tab_selector"] = const_929;
         param1["text"] = const_1024;
         param1["input"] = const_952;
         param1["toolbar"] = const_2049;
         param1["tooltip"] = const_395;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
