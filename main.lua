require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "passwd"
import "android.content.Intent"
import "android.net.Uri"
activity.setTheme(android.R.style.Theme_DeviceDefault)--设置主题
activity.setContentView(loadlayout(passwd))
activity.setTitle('模式选择BFUI')

--主页，main，一个程序只能有一个main
--main是程序的入口，当软件运行时，首先加载main

mckn_a_002.onClick = function()--按钮1
  if mckn_a_001.Text =="Administration"--当文本等于Administration时
    activity.newActivity("main2")
    activity.finish()--关闭当前页面
    --进入main2.lua的界面，main2.lua可写.lua可不写，如果有同名的aly文件必须添加.lua，但一把跳转aly文件不用这个语句
   else
    activity.newActivity("main1")
    activity.finish()--关闭当前页面
    --如果文本编辑框的内容不等于Administration时，则进入main1
  end
end
mckn_a_003.onClick = function()--按钮2
  if mckn_a_001.Text =="root"--文本等于root时
    activity.newActivity("root1")--跳转页面到root1
    activity.finish()--关闭当前页面
   else
    print("请输入管理员密钥")--否则，则提示输入管理员密钥
  end
end

--[[GX.onClick = function()
  url="https://wwt.lanzouo.com/b02c46t6f"
  viewIntent = Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
end

local 应用版本号 = activity.getPackageManager().getPackageInfo("com.mckn.cn", 0).versionName
Http.get("https://wds.ecsxs.com/212451.js",nil,nil,nil,function(code,content)
  if code==200 then
    if (content:match("【版本】(.-)【版本】")==应用版本号)then
      print("以是最新版本")
     else
     content=content:gsub("。","\n") or content;
     消息=content:match("【内容】(.-)【内容】")
      AlertDialog.Builder(this)
      .setTitle("有新版本")
      .setMessage(消息)
      .setPositiveButton("更新",{onClick=function(v)
          import "android.content.Intent"
          import "android.net.Uri"
          url="https://wwt.lanzoui.com/b02c46t6f"
          viewIntent = Intent("android.intent.action.VIEW",Uri.parse(url))
          activity.startActivity(viewIntent)
        end})
      .setNeutralButton("取消",nil)
      .show()
    end
   else
    print("请检查网络连接")
  end
end)
--https://wds.ecsxs.com/212451.html
]]
