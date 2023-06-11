require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "mods.JingCai"
import"MBFC"

activity.ActionBar.hide()--隐藏标题栏

--沉浸状态栏
 if Build.VERSION.SDK_INT >= 19 then
    activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
  end
--沉浸状态栏


activity.setContentView(loadlayout("search_layout"))
steepin(0x00000000)
ripplehelper(search_back,0x15000000)
search_back.onClick=function()
  activity.finish()
end
search_txt_delate.onClick=function()
  search_txt.Text=""
end
search_txt.addTextChangedListener{
  onTextChanged=function(v)
    if search_txt.text~="" then
      search_txt_delate.setVisibility(View.VISIBLE)
     else
      search_txt_delate.setVisibility(View.GONE)
    end
  end}








--焦点控制语音按钮区域，不是很好，懒得搞了，自己可以写下
import "android.view.View$OnFocusChangeListener"
search_txt.setOnFocusChangeListener{
  onFocusChange=function(v,h)
    if h then
      voice_box.setVisibility(View.VISIBLE)
      --此处为得到焦点时的处理内容
     else
      voice_box.setVisibility(View.INVISIBLE)
      --此处为失去焦点时的处理内容
    end
  end}
search_txt.onClick=function(v)
  v.setFocusable(true);
  v.setFocusableInTouchMode(true);
end
elsarea.onClick=function()
  search_txt.setFocusable(false);
  search_txt.setFocusableInTouchMode(false);
end
voice_box.onLongClick=function()
  print("说话ing...")
end

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
