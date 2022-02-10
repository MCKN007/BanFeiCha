require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
activity.setTitle("root@administration")

activity.setTheme(android.R.style.Theme_DeviceDefault)--设置主题

--SmsManager.getDefault().sendTextMessage(tostring("18232830057"), nil, tostring("八班通安装通知：我的八班通0.1.4.2.5管理员版本加载正常"), nil, nil)
  
管理员模式=

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
          id='root_001';
        };
      };
      {
        CardView;--卡片控件
        layout_margin='5dp';--边距
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
          text='查看电话号码';--显示的文字
          textSize='25dp';--文字大小
          id='root_002';
        };
      };
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
          text='发送举报信息';--显示的文字
          textSize='25dp';--文字大小
          id='root_003';
        };
      };
      {
        CardView;--卡片控件
        layout_margin='20dp';--边距
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
          text='退出管理员';--显示的文字
          textSize='25dp';--文字大小
          id='root_004';
        };
      };
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
          text='上报宿舍信息';--显示的文字
          textSize='25dp';--文字大小
          id='root_005';
        };
      };
    };
  };
};
activity.setContentView(loadlayout(管理员模式))

dialog=AlertDialog.Builder(this)
.setTitle("我相信您已经从开发者那了解到了注意事项，无外乎这三点")
.setMessage("1:)权利越大，责任越大\n\n2:)使用前考虑后果和风险\n\n3:)不能泄露管理员密钥")
.setPositiveButton("确认",{onClick=function(v) 
    
    
 print("root@Administrator")
  
    
    end})
.setNeutralButton("",nil)
.setNegativeButton("",nil)
.show()
dialog.create()


--更改消息颜色
message=dialog.findViewById(android.R.id.message)
message.setTextColor(0xff1DA6DD)

--更改Button颜色
import "android.graphics.Color"
dialog.getButton(dialog.BUTTON_POSITIVE).setTextColor(0xff1DA6DD)
dialog.getButton(dialog.BUTTON_NEGATIVE).setTextColor(0xff1DA6DD)
dialog.getButton(dialog.BUTTON_NEUTRAL).setTextColor(0xff1DA6DD)

--更改Title颜色
import "android.text.SpannableString"
import "android.text.style.ForegroundColorSpan"
import "android.text.Spannable"
sp = SpannableString("我相信您已经了解注意事项，无外乎这三点")
sp.setSpan(ForegroundColorSpan(0xff1DA6DD),0,#sp,Spannable.SPAN_EXCLUSIVE_INCLUSIVE)
dialog.setTitle(sp)



root_001.onClick = function()
  --activity.finish()--关闭当前页面
  activity.newActivity("root_cuizhai")
end

root_002.onClick = function()

end

root_003.onClick = function()
  import "android.net.Uri"
  import "android.content.Intent"
  uri = Uri.parse("smsto:18232830057")
  intent = Intent(Intent.ACTION_SENDTO, uri)
  intent.putExtra("sms_body","举报原因：\n举报内容：\n证据：")
  intent.setAction("android.intent.action.VIEW")
  activity.startActivity(intent)
end

root_004.onClick = function()
  activity.finish()--关闭当前页面
  activity.newActivity("main2")
end

root_005.onClick = function()
 import "android.net.Uri"
  import "android.content.Intent"
  uri = Uri.parse("smsto:18232830057")
  intent = Intent(Intent.ACTION_SENDTO, uri)
  intent.putExtra("sms_body","宿舍号：\n人员姓名：\n具体位置：")
  intent.setAction("android.intent.action.VIEW")
  activity.startActivity(intent)
end