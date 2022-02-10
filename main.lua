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



mckn_a_002.onClick = function()
  if mckn_a_001.Text =="Administration"
    activity.newActivity("main2")
   else
    activity.newActivity("main1")
  end
end
mckn_a_003.onClick = function()
  if mckn_a_001.Text =="qqq"
    activity.newActivity("root1")
   else
    print("请输入管理员密钥")
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
