require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
activity.setTitle("root@administration")
activity.setTheme(android.R.style.Theme_DeviceDefault)--设置主题


function 发送催债(a,b)
  require "import"
  import "android.telephony.*"
  SmsManager.getDefault().sendTextMessage(tostring(a), nil, tostring(b), nil, nil)
end


催债=

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
      LinearLayout,
      orientation='vertical';--横向或者纵向布局
      layout_width='fill';--布局宽度
      layout_height='fill';--布局高度
      background='#424242';--布局背景颜色

      {
        CardView;--卡片控件
        layout_margin='50dp';--边距
        layout_gravity='center';--重力
        --左:left 右:right 中:center 顶:top 底:bottom
        elevation='0dp';--阴影
        layout_width='95%w';--宽度
        layout_height='20%w';--高度
        CardBackgroundColor='#212121';--颜色
        radius='1dp';--圆角
        {
          TextView;--文本控件
          layout_width='fill';--文本宽度
          layout_height='fill';--文本高度
          gravity='center';--重力属性
          textColor='#9E9E9E';--文字颜色
          text='发送催债信息';--显示的文字
          textSize='25dp';--文字大小
          id='催债信息';
        };
      };
    };
  };
};
activity.setContentView(loadlayout(催债))

催债信息.onClick =function()
   --苏箫
  发送催债("13785774222","[八班班费查询程序]苏箫因在校弄坏李正旺护腿，需赔偿李正旺190元(弄坏李正旺护腿150元，借李正旺40元)，微信支付李正旺（微信号：zhangmansb）后回复此短信已支付")
  发送催债("18232830057","发送成功")
end