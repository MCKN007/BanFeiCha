require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
win=
{
  LinearLayout;
  orientation='vertical';--横向或者纵向布局
  layout_width='fill';--布局宽度
  layout_height='fill';--布局高度
  background='#FFFFFFFF';--布局背景颜色
  {
    TextView;--文本控件
    layout_width='fill';--文本宽度
    layout_height='fill';--文本高度
    gravity='center';--重力属性
    textColor='#FF38FFFF';--文字颜色
    text='黑子胜利';--显示的文字
    textSize='45dp';--文字大小
  };
};
activity.setContentView(loadlayout(win))