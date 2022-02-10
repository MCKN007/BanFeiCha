require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "mson"
--不可以随意改

activity.ActionBar.hide()--隐藏标题栏

布局=
{
  LinearLayout,
  orientation='vertical';--横向或者纵向布局
  layout_width='fill';--布局宽度
  layout_height='fill';--布局高度
  background='#00000000';--布局背景颜色
  {
    CardView;--卡片控件
    layout_margin='0dp';--边距
    layout_gravity='center';--重力
    --左:left 右:right 中:center 顶:top 底:bottom
    elevation='0dp';--阴影
    layout_width='fill';--宽度
    layout_height='50dp';--高度
    CardBackgroundColor='#FFDEDFE3';--颜色
    radius='0dp';--圆角
    {
      TextView;--文本控件
      layout_width='fill';--文本宽度
      layout_height='fill';--文本高度
      gravity='left';--重力属性
      textColor='#FF000000';--文字颜色
      text='宿舍查';--显示的文字
      textSize='35dp';--文字大小
    };
  };
  {
    ScrollView,--纵向滚动
    layout_width='fill';--宽度
    layout_height='fill';--高度
    {
      LinearLayout,--线性布局
      orientation='vertical',--方向
      layout_width='fill',--宽度
      layout_height='fill',--高度

      {
        CardView;--卡片控件
        layout_margin='4dp';--边距
        layout_gravity='center';--重力
        --左:left 右:right 中:center 顶:top 底:bottom
        elevation='0dp';--阴影
        layout_width='100%w';--宽度
        layout_height='15%w';--高度
        CardBackgroundColor='#ffffffff';--颜色
        radius='0dp';--圆角
        {
          TextView;--文本控件
          layout_width='fill';--文本宽度
          layout_height='fill';--文本高度
          gravity='left|center';--重力属性
          textColor='#FF3F3F3F';--文字颜色
          text='男宿122';--显示的文字
          textSize='25dp';--文字大小
          id='S122';
        };
      };
      {
        CardView;--卡片控件
        layout_margin='4dp';--边距
        layout_gravity='center';--重力
        --左:left 右:right 中:center 顶:top 底:bottom
        elevation='0dp';--阴影
        layout_width='100%w';--宽度
        layout_height='15%w';--高度
        CardBackgroundColor='#ffffffff';--颜色
        radius='0dp';--圆角
        {
          TextView;--文本控件
          layout_width='fill';--文本宽度
          layout_height='fill';--文本高度
          gravity='left|center';--重力属性
          textColor='#FF3F3F3F';--文字颜色
          text='男宿123';--显示的文字
          textSize='25dp';--文字大小
          id='S123';
        };
      };
      {
        CardView;--卡片控件
        layout_margin='4dp';--边距
        layout_gravity='center';--重力
        --左:left 右:right 中:center 顶:top 底:bottom
        elevation='0dp';--阴影
        layout_width='100%w';--宽度
        layout_height='15%w';--高度
        CardBackgroundColor='#ffffffff';--颜色
        radius='0dp';--圆角
        {
          TextView;--文本控件
          layout_width='fill';--文本宽度
          layout_height='fill';--文本高度
          gravity='left|center';--重力属性
          textColor='#FF3F3F3F';--文字颜色
          text='男宿124';--显示的文字
          textSize='25dp';--文字大小
          id='S124';
        };
      };
      {
        CardView;--卡片控件
        layout_margin='4dp';--边距
        layout_gravity='center';--重力
        --左:left 右:right 中:center 顶:top 底:bottom
        elevation='0dp';--阴影
        layout_width='100%w';--宽度
        layout_height='15%w';--高度
        CardBackgroundColor='#ffffffff';--颜色
        radius='0dp';--圆角
        {
          TextView;--文本控件
          layout_width='fill';--文本宽度
          layout_height='fill';--文本高度
          gravity='left|center';--重力属性
          textColor='#FF3F3F3F';--文字颜色
          text='女宿211';--显示的文字
          textSize='25dp';--文字大小
          id='S211';
        };
      };
      {
        CardView;--卡片控件
        layout_margin='4dp';--边距
        layout_gravity='center';--重力
        --左:left 右:right 中:center 顶:top 底:bottom
        elevation='0dp';--阴影
        layout_width='100%w';--宽度
        layout_height='15%w';--高度
        CardBackgroundColor='#ffffffff';--颜色
        radius='0dp';--圆角
        {
          TextView;--文本控件
          layout_width='fill';--文本宽度
          layout_height='fill';--文本高度
          gravity='left|center';--重力属性
          textColor='#FF3F3F3F';--文字颜色
          text='女宿212';--显示的文字
          textSize='25dp';--文字大小
          id='S212';
        };
      };
      {
        CardView;--卡片控件
        layout_margin='4dp';--边距
        layout_gravity='center';--重力
        --左:left 右:right 中:center 顶:top 底:bottom
        elevation='0dp';--阴影
        layout_width='100%w';--宽度
        layout_height='15%w';--高度
        CardBackgroundColor='#ffffffff';--颜色
        radius='0dp';--圆角
        {
          TextView;--文本控件
          layout_width='fill';--文本宽度
          layout_height='fill';--文本高度
          gravity='left|center';--重力属性
          textColor='#FF3F3F3F';--文字颜色
          text='女宿213';--显示的文字
          textSize='25dp';--文字大小
          id='S213';
        };
      };
    };
  };
};

activity.setContentView(loadlayout(布局))

S122.onClick = function()
  activity.getLuaDir()
  otxt(activity.getLuaDir().."/LiuJing/122.txt")
end

S123.onClick = function()
  activity.getLuaDir()
  otxt(activity.getLuaDir().."/LiuJing/123.txt")
end

S124.onClick = function()
  activity.getLuaDir()
  otxt(activity.getLuaDir().."/LiuJing/124.txt")
end

S211.onClick = function()
  activity.getLuaDir()
  otxt(activity.getLuaDir().."/LiuJing/211.txt")
end

S212.onClick = function()
  activity.getLuaDir()
  otxt(activity.getLuaDir().."/LiuJing/212.txt")
end

S213.onClick = function()
  activity.getLuaDir()
  otxt(activity.getLuaDir().."/LiuJing/213.txt")
end
