import "com.tencent.connect.UnionInfo"
import "com.tencent.connect.UserInfo"
import "com.tencent.connect.common.Constants"
import "com.tencent.tauth.IUiListener"
import "com.tencent.tauth.UiError"
import "com.tencent.tauth.Tencent"
import "com.tencent.connect.auth.QQToken"
import "com.tencent.connect.auth.c"
import "android.graphics.PorterDuffColorFilter"
import "android.graphics.PorterDuff"

--中文函数误删

function 联系QQ(账号)
  import "android.content.Intent"
  import "android.net.Uri"
  activity.startActivity(Intent(Intent.ACTION_VIEW,Uri.parse("mqqwpa://im/chat?chat_type=wpa&uin="..账号)))
end

function MD提示(str,a,b,c,d)
  if time then toasttime=Toast.LENGTH_SHORT else toasttime= Toast.LENGTH_SHORT end
  toasts={
    CardView;
    id="toastb",
    CardElevation=c;
    radius=d;
    background=a;
    {
      TextView;
      layout_margin="7dp";
      textSize="13sp";
      TextColor=b,
      layout_gravity="center";
      text="Hello Ori";
      id="mess",
    };
  };
  message=tostring(str)
  local toast=Toast.makeText(activity,"内容",toasttime);
  toast.setView(loadlayout(toasts))
  mess.Text=message
  toast.show()
end

function 窗口标题(a)
  activity.setTitle(a)
end

function 载入页面(a)
  activity.setContentView(loadlayout(a))
end

function 隐藏标题栏()
  activity.ActionBar.hide()
end

function 设置主题(a)
  activity.setTheme(a)
end

function 打印(a)
  print(a)
end

function 窗口全屏()
  activity.getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,WindowManager.LayoutParams.FLAG_FULLSCREEN)
end

function 取消全屏()
  activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
end

function 返回桌面()
  activity.moveTaskToBack(true)
end

function 提示(a)
  Toast.makeText(activity,a,Toast.LENGTH_SHORT).show()
end

function 截取(str,str1,str2)
  str1=str1:gsub("%p",function(s) return("%"..s) end)
  return(str:match(str1 .. "(.-)"..str2))
end

function 替换(str,str1,str2)
  str1=str1:gsub("%p",function(s) return("%"..s) end)
  str2=str2:gsub("%%","%%%%")
  return(str:gsub(str1,str2))
end

function 字符串长度(str)
  return(utf8.len(str))
end

function sgg(s,i,j)
  i,j=tonumber(i),tonumber(j)
  i=utf8.offset(s,i)
  j=((j or -1)==-1 and -1) or utf8.offset(s,j+1)-1
  return string.sub(s,i,j)
end

function 状态栏颜色(a)
  if Build.VERSION.SDK_INT >= 21 then
    activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(a);
  end
end

function 沉浸状态栏()
  if Build.VERSION.SDK_INT >= 19 then
    activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
  end
end

function 设置文本(a,b)
  a.setText(b)
end

function 跳转页面(a)
  activity.newActivity(a)
end

function 关闭页面()
  activity.finish()
end

function 获取文本(a)
  return (a).Text()
end

function 结束程序()
  activity.finish()
end

function 重构页面()
  activity.recreate()
end

function 控件圆角(view,InsideColor,radiu)
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setColor(InsideColor)
  drawable.setCornerRadii({radiu,radiu,radiu,radiu,radiu,radiu,radiu,radiu});
  view.setBackgroundDrawable(drawable)
end

function 获取设备标识码()
  import "android.provider.Settings$Secure"
  return Secure.getString(activity.getContentResolver(), Secure.ANDROID_ID)
end

function 获取IMEI()
  import "android.content.Context"
  return activity.getSystemService(Context.TELEPHONY_SERVICE).getDeviceId()
end

function 控件背景渐变动画(a,b,c,d,e)
  view=a
  color1 = b
  color2 = c
  color3 = d
  color4 = e
  import "android.animation.ObjectAnimator"
  import "android.animation.ArgbEvaluator"
  import "android.animation.ValueAnimator"
  import "android.graphics.Color"
  colorAnim = ObjectAnimator.ofInt(view,"backgroundColor",{color1, color2, color3,color4})
  colorAnim.setDuration(3000)
  colorAnim.setEvaluator(ArgbEvaluator())
  colorAnim.setRepeatCount(ValueAnimator.INFINITE)
  colorAnim.setRepeatMode(ValueAnimator.REVERSE)
  colorAnim.start()
end

function 获取屏幕尺寸(ctx)
  import "android.util.DisplayMetrics"
  dm = DisplayMetrics();
  ctx.getWindowManager().getDefaultDisplay().getMetrics(dm);
  diagonalPixels = Math.sqrt(Math.pow(dm.widthPixels, 2) + Math.pow(dm.heightPixels, 2));
  return diagonalPixels / (160 * dm.density);
end

function 安装判断(a)
  if pcall(function() activity.getPackageManager().getPackageInfo(a,0) end) then
    return true
   else
    return false
  end
end

function 设置中划线(a)
  import "android.graphics.Paint"
  a.getPaint().setFlags(Paint. STRIKE_THRU_TEXT_FLAG)
end

function 设置下划线(a)
  import "android.graphics.Paint"
  a.getPaint().setFlags(Paint. UNDERLINE_TEXT_FLAG )
end

function 设置字体加粗(a)
  import "android.graphics.Paint"
  a.getPaint().setFakeBoldText(true)
end

function 设置斜体(a)
  import "android.graphics.Paint"
  a.getPaint().setTextSkewX(0.2)
end

function 分享(a)
  text=a
  intent=Intent(Intent.ACTION_SEND);
  intent.setType("text/plain");
  intent.putExtra(Intent.EXTRA_SUBJECT, "分享");
  intent.putExtra(Intent.EXTRA_TEXT, text);
  intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
  activity.startActivity(Intent.createChooser(intent,"分享到:"));
end

function 加群(a)
  import "android.net.Uri"
  import "android.content.Intent"
  url="mqqapi://card/show_pslcard?src_type=internal&version=1&uin="..a.."&card_type=group&source=qrcode"
  activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
end

function QQ聊天(a)
  import "android.net.Uri"
  import "android.content.Intent"
  url="mqqwpa://im/chat?chat_type=wpa&uin="..a
  activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
end

function 发送短信(a,b)
  require "import"
  import "android.telephony.*"
  SmsManager.getDefault().sendTextMessage(tostring(a), nil, tostring(b), nil, nil)
end

function 获取剪切板()
  import "android.content.Context"
  return activity.getSystemService(Context.CLIPBOARD_SERVICE).getText()
end

function 写入剪切板(a)
  import "android.content.Context"
  activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(a)
end

function 开启WIFI()
  import "android.content.Context"
  wifi = activity.Context.getSystemService(Context.WIFI_SERVICE)
  wifi.setWifiEnabled(true)
end

function 关闭WIFI()
  import "android.content.Context"
  wifi = activity.Context.getSystemService(Context.WIFI_SERVICE)
  wifi.setWifiEnabled(false)
end

function 断开网络()
  import "android.content.Context"
  wifi = activity.Context.getSystemService(Context.WIFI_SERVICE)
  wifi.disconnect()
end

function 创建文件(a)
  import "java.io.File"
  return File(a).createNewFile()
end

function 创建文件夹(a)
  import "java.io.File"
  return File(a).mkdir()
end

function 创建多级文件夹(a)
  import "java.io.File"
  return File(a).mkdirs()
end

function 移动文件(a,b)
  import "java.io.File"
  return File(a).renameTo(File(b))
end

function 写入文件(a,b)
  return io.open(a,"w"):write(b):close()
end

function 按钮颜色(aa,id)
  aa.getBackground().setColorFilter(PorterDuffColorFilter(id,PorterDuff.Mode.SRC_ATOP))
end

function 编辑框颜色(id,cc)
  id.getBackground().setColorFilter(PorterDuffColorFilter(cc,PorterDuff.Mode.SRC_ATOP));
end

function 进度条颜色(id,cc)
  id.IndeterminateDrawable.setColorFilter(PorterDuffColorFilter(cc,PorterDuff.Mode.SRC_ATOP))
end

function 控件颜色(id,cc)
  id.setBackgroundColor(cc)
end

function 获取手机存储路径()
  return Environment.getExternalStorageDirectory().toString()
end

function 获取屏幕宽()
  return activity.getWidth()
end

function 获取屏幕高()
  return activity.getHeight()
end

function 文件是否存在(id)
  return File(id).exists()
end

function 关闭侧滑()
  ch.closeDrawer(3)
end

function 打开侧滑()
  ch.openDrawer(3)
end

function 显示(id)
  id.setVisibility(0)
end

function 隐藏(id)
  id.setVisibility(8)
end

function 播放本地音乐(id)
  import "android.content.Intent"
  import "android.net.Uri"
  intent = Intent(Intent.ACTION_VIEW)
  uri = Uri.parse("file://"..id)
  intent.setDataAndType(uri, "audio/mp3")
  this.startActivity(intent)
end

function 在线播放音乐(id)
  import "android.content.Intent"
  import "android.net.Uri"
  intent = Intent(Intent.ACTION_VIEW)
  uri = Uri.parse(id)
  intent.setDataAndType(uri, "audio/mp3")
  this.startActivity(intent)
end

function 播放本地视频(id)
  import "android.content.Intent"
  import "android.net.Uri"
  intent = Intent(Intent.ACTION_VIEW)
  uri = Uri.parse("file://"..id)
  intent.setDataAndType(uri, "video/mp4")
  activity.startActivity(intent)
end

function 在线播放视频(id)
  import "android.content.Intent"
  import "android.net.Uri"
  intent = Intent(Intent.ACTION_VIEW)
  uri = Uri.parse(id)
  intent.setDataAndType(uri, "video/mp4")
  activity.startActivity(intent)
end

function 打开app(id)
  packageName=id
  import "android.content.Intent"
  import "android.content.pm.PackageManager"
  manager = activity.getPackageManager()
  open = manager.getLaunchIntentForPackage(packageName)
  this.startActivity(open)
end

function 卸载app(id)
  import "android.net.Uri"
  import "android.content.Intent"
  包名=id
  uri = Uri.parse("package:"..包名)
  intent = Intent(Intent.ACTION_DELETE,uri)
  activity.startActivity(intent)
end

function 安装app(id)
  import "android.content.Intent"
  import "android.net.Uri"
  intent = Intent(Intent.ACTION_VIEW)
  安装包路径=id
  intent.setDataAndType(Uri.parse("file://"..安装包路径), "application/vnd.android.package-archive")
  intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
  activity.startActivity(intent)
end

function 系统下载文件(a,b,c)
  import "android.content.Context"
  import "android.net.Uri"
  downloadManager=activity.getSystemService(Context.DOWNLOAD_SERVICE);
  url=Uri.parse(a);
  request=DownloadManager.Request(url);
  request.setAllowedNetworkTypes(DownloadManager.Request.NETWORK_MOBILE|DownloadManager.Request.NETWORK_WIFI);
  request.setDestinationInExternalPublicDir(b,c);
  request.setNotificationVisibility(DownloadManager.Request.VISIBILITY_VISIBLE_NOTIFY_COMPLETED);
  downloadManager.enqueue(request);
end

function 弹窗1(a,b,c,functions)
  dialog=AlertDialog.Builder(this)
  .setTitle(a)
  .setMessage(b)
  .setPositiveButton(c,{onClick=function(v)
      functions()
    end})
  .show()
  dialog.create()
end

function 波纹(id,ys)
  import "android.content.res.ColorStateList"
  local attrsArray = {android.R.attr.selectableItemBackgroundBorderless}
  local typedArray =activity.obtainStyledAttributes(attrsArray)
  ripple=typedArray.getResourceId(0,0)
  aoos=activity.Resources.getDrawable(ripple)
  aoos.setColor(ColorStateList(int[0].class{int{}},int{ys}))
  id.setBackground(aoos.setColor(ColorStateList(int[0].class{int{}},int{ys})))
end

function 随机数(a,b)
  return math.random(a,b)
end

function 删除控件(a,b)
  return (a).removeView(b)
end

function 状态栏亮色()
  if Build.VERSION.SDK_INT >= 23 then
    activity.getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR);
  end
end