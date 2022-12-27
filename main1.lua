require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "mods.JingCai"
import "Item.item"
import "Item.item2"
import "mson"
import "ss"
activity.ActionBar.hide()--隐藏标题栏
--activity.setContenView(loadlayout(layout1))
activity.setTheme(android.R.style.Theme_DeviceDefault)--设置主题


activity.setContentView(loadlayout("layout"))

steepin(0x00000000)
fakeboldtext(title)
fakeboldtext(custom_name)
ripplehelper(search,0x15000000)
ripplehelper(bfc1,0x15000000)
ripplehelper(photo,0x15000000)
search.onClick=function()
  activity.newActivity("search_main",android.R.anim.fade_in,android.R.anim.fade_out)
end

pop=PopupMenu(activity,bfc1)
bfc1=pop.Menu
--menu菜单控件，因为menu是lua关键字，所以不能把id定位menu或者Menu
bfc1.add("软件版本").onMenuItemClick=function(v)
  print("八班通0.1.4.2.9")
end
bfc1.add("关于软件").onMenuItemClick=function(v)
  activity.getLuaDir()
  otxt(activity.getLuaDir().."/MingDan/gy.txt")
end
bfc1.add("联系作者").onMenuItemClick=function(v)

end
bfc1.add("退出应用").onMenuItemClick=function(v)
  os.exit()
end
bfc1.add("软件捐款").onMenuItemClick=function(v)
  activity.getLuaDir()
  oimg(activity.getLuaDir().."/MingDan/zhifu.png")
end
--[[bfc1.add("提升权限").onMenuItemClick=function(v)
end
]]
Jiang.onClick=function()
  pop.show()
end

page.setOnPageChangeListener(PageView.OnPageChangeListener{--设置pageview监听器
  onPageSelected=function(a)
    if a==0 then
      home.setImageBitmap(loadbitmap("Image/icon/home2.png"))
      friend.setImageBitmap(loadbitmap("Image/icon/friend.png"))
      discover.setImageBitmap(loadbitmap("Image/icon/discover.png"))
      custom.setImageBitmap(loadbitmap("Image/icon/custom.png"))
      toolbar_one.setVisibility(View.VISIBLE)
      toolbar_two.setVisibility(View.INVISIBLE)
      title.Text="班费查"
     elseif a==1 then
      home.setImageBitmap(loadbitmap("Image/icon/home.png"))
      friend.setImageBitmap(loadbitmap("Image/icon/friend2.png"))
      discover.setImageBitmap(loadbitmap("Image/icon/discover.png"))
      custom.setImageBitmap(loadbitmap("Image/icon/custom.png"))
      toolbar_one.setVisibility(View.VISIBLE)
      toolbar_two.setVisibility(View.INVISIBLE)
      title.Text="举报页"
     elseif a==2 then
      home.setImageBitmap(loadbitmap("Image/icon/home.png"))
      friend.setImageBitmap(loadbitmap("Image/icon/friend.png"))
      discover.setImageBitmap(loadbitmap("Image/icon/discover2.png"))
      custom.setImageBitmap(loadbitmap("Image/icon/custom.png"))
      toolbar_one.setVisibility(View.VISIBLE)
      toolbar_two.setVisibility(View.INVISIBLE)
      title.Text="程序页"
     elseif a==3 then
      home.setImageBitmap(loadbitmap("Image/icon/home.png"))
      friend.setImageBitmap(loadbitmap("Image/icon/friend.png"))
      discover.setImageBitmap(loadbitmap("Image/icon/discover.png"))
      custom.setImageBitmap(loadbitmap("Image/icon/custom2.png"))
      toolbar_one.setVisibility(View.INVISIBLE)
      toolbar_two.setVisibility(View.VISIBLE)
    end
end})
--对应的四个界面，和四个界面的名称
home.onClick=function()
  page.showPage(0)
end
friend.onClick=function()
  page.showPage(1)
end
discover.onClick=function()
  page.showPage(2)
end
custom.onClick=function()
  page.showPage(3)
end

print("MBFC内核")
--打印内核版本
local icn={"XiaoYan/head1.jpg","XiaoYan/head2.jpg","XiaoYan/head3.jpg","XiaoYan/head.jpg","XiaoYan/longge.jpg","XiaoYan/mae.jpg","XiaoYan/klp.jpg","XiaoYan/jjp.jpg","XiaoYan/xcb.jpg","XiaoYan/tya.jpg","XiaoYan/ahs.jpg","XiaoYan/hhv.jpg","XiaoYan/bjy.jpg","XiaoYan/pig.jpg","XiaoYan/ctsb.jpg","XiaoYan/lium.jpg","XiaoYan/tianr.jpg","XiaoYan/169.jpg","XiaoYan/97845.jpg","XiaoYan/cheny.jpg","XiaoYan/pag.jpg","XiaoYan/andpus.jpg","XiaoYan/lrx.jpg","XiaoYan/jsjk.jpg","XiaoYan/apsj.jpg","XiaoYan/9876z.jpg","XiaoYan/gaoy.jpg","XiaoYan/9000q.jpg","XiaoYan/wangtianao.jpg","XiaoYan/chdh8.jpg","XiaoYan/719a.jpg","XiaoYan/6478d.jpg","XiaoYan/7ad26a3d18454da4.jpg","XiaoYan/5487.jpg","XiaoYan/1976.jpg","XiaoYan/liyumeng.jpg","XiaoYan/9783.jpg","XiaoYan/94316.jpg","XiaoYan/xiajiayi.jpg","XiaoYan/sunhaor9.jpg","XiaoYan/17573.jpg","XiaoYan/875qds.jpg","XiaoYan/hdImg664.jpg","XiaoYan/hdImg16464.jpg","XiaoYan/ndjdjaud644.jpg","XiaoYan/wujiaao.jpg","XiaoYan/64637.jpg","XiaoYan/976734.jpg","XiaoYan/46645454.jpg","XiaoYan/jdhdhs.jpg","XiaoYan/zhangcao.jpg","XiaoYan/kxkd.jpg","XiaoYan/zhenqhr.jpg","XiaoYan/csgo.jpg","XiaoYan/ifj4667hxj.jpg","XiaoYan/raochenxuan.jpg","XiaoYan/chensiqi.jpg","XiaoYan/liziyuan.jpg","XiaoYan/gaojiajie.png","XiaoYan/limengjia.png"}
--对应的图像"图片位置/图片名称.后缀"
local nam={"0班主任","1陈梦媛","2宋依诺","3李正旺","4高雪龙","5王文萱","6王少杰","7孙若豪","8齐亚蔷","9刘玉轩","10马志赫","11刘梦奥","12白景瑶","13崔一凡","14蔡添顺","15刘梦轩","16田蕊","17孙晨曦","18柴佳宇","19陈雅静","20胡帅豪","21王凯慧","22卢若茜","23朱浩天","24杨雪钗","25王金泰","26高妍","27田硕童","28王天傲","29王子博","30薛子洋","31张奥博","32苏萧","33张佳雪","34候奥萌","35李雨萌","36马艺轩","37郭艺","38夏佳怡","39孙浩然","40石晨浩","41田泽鹏","42董容彬","43.王涵","44.张秋闯","45吴嘉傲","46孙瑞轩","47刘言旭","48候涵依","49.李子傲","50.张志超","51.王旭尧","52.甄浩然","53.张润泽","54.宋佳璐","55.饶沉喧","56.陈诗淇","57.李子园","58.高佳捷","59.李梦佳"}
--每个图片对应着每一个名字，请确保完全对应
local mes={"最高管理员","①所欠0元班费","②所欠0元班费","③所欠0元班费","④所欠0元班费","⑤所欠0元班费","⑥所欠0元班费","⑦所欠0班费","⑧所欠0班费","⑨所欠10元班费","⑩所欠0元班费","11.所欠0元班费","12.所欠0元班费","13.所欠0元班费","14.所欠0元班费","15.所欠0元班费","16.所欠0元班费","17.所欠0元班费","18.所欠43元班费","19.所欠0元班费","20.所欠0元班费","21.所欠0元班费","22.所欠0元班费","23.所欠0元班费","24.所欠0元班费","25.所欠0元班费","26.所欠0元班费","27.所欠0元班费","28.所欠10元班费","29.所欠0元班费","30.所欠元班费","31.所欠0元班费","32.所欠1元班费","33.所欠0元班费","34.所欠0元班费","35.所欠0元班费","36.所欠0元班费","37.所欠0元班费班费","38.所欠0元班费","39.所欠4元班费","40.所欠1元班费","41.所欠0元班费","42.所欠0元班费","43.所欠0元班费","44.所欠0元班费","45.所欠0元班费","46.所欠0元班费","47.所欠0元班费","48.所欠2元班费","49.所欠0元班费","50.所欠0元班费","51.所欠20元班费","52.所欠0元班费","53.所欠0元班费","54.所欠0元班费","55.所欠5元班费","56.所欠0元班费","57.所欠0元班费","58.所欠0元班费","59.所欠0元班费"}
--请编辑完仔细检查，以防有误
adapter=LuaAdapter(activity,item)
home_list.Adapter=adapter
for k,v in ipairs(icn) do
  adapter.add{custom_head=loadbitmap(icn[k]),custom_name=nam[k],custom_message=mes[k]}
  title.Text="你正在以管理员的身份运行通("..k..")"
end



--主页点击事件
home_list.onItemClick=function(parent,v,pos,id)
  local bfc=v.tag.custom_name.Text
  --[[
  
  千万不要删v.tag.***.Text
  删了就崩溃，我也不知道为什么
  
  ]]

  if
    bfc=="0班主任" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/0.txt")
    --利用Otxt和Oimg插件打开文档或者图片
   elseif
    bfc=="1陈梦媛"

    activity.getLuaDir()
    oimg(activity.getLuaDir().."MingDan/wu.png")

   elseif
    bfc=="2宋依诺"
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/2.txt")

   elseif
    bfc=="3李正旺" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/3.txt")

   elseif
    bfc=="4高雪龙" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/4.txt")

   elseif
    bfc=="5王文萱" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/5.txt")


   elseif
    bfc=="6王少杰" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/6.txt")

   elseif
    bfc=="7孙若豪" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/7.txt")

   elseif
    bfc=="8齐亚蔷" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/8.txt")

   elseif
    bfc=="9刘玉轩" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/9.txt")

   elseif
    bfc=="10马志赫" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/10.txt")

   elseif
    bfc=="11刘梦奥" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/11.txt")

   elseif
    bfc=="12白景瑶" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/12.txt")

   elseif
    bfc=="13崔一凡" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/13.txt")

   elseif
    bfc=="14蔡添顺" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/14.txt")

   elseif
    bfc=="15刘梦轩" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/15.txt")

   elseif
    bfc=="16田蕊" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/16.txt")

   elseif
    bfc=="17孙晨曦" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="18柴佳宇" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/18.txt")

   elseif
    bfc=="19陈雅静" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="20胡帅豪" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/20.txt")

   elseif
    bfc=="21王凯慧" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="22卢若茜" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="23朱浩天" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/23.txt")

   elseif
    bfc=="24杨雪钗" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/24.txt")

   elseif
    bfc=="25王金泰" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/25.txt")

   elseif
    bfc=="26高妍" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/26.txt")

   elseif
    bfc=="27田硕童" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/27.txt")

   elseif
    bfc=="28王天傲" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/28.txt")

   elseif
    bfc=="29王子博" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/29.txt")

   elseif
    bfc=="30薛子洋" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/30.txt")

   elseif
    bfc=="31张奥博" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/31.txt")

   elseif
    bfc=="32苏萧" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/32.txt")

   elseif
    bfc=="33张佳雪" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="34候奥萌" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/34.txt")

   elseif
    bfc=="35李雨萌" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="36马艺轩" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/36.txt")

   elseif
    bfc=="37郭艺" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="38夏佳怡" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="39孙浩然" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/39.txt")

   elseif
    bfc=="40石晨浩" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/40.txt")

   elseif
    bfc=="41田泽鹏" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/41.txt")

   elseif
    bfc=="42董容彬" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="43.王涵" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="44.张秋闯" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/44.txt")

   elseif
    bfc=="45吴嘉傲" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/45.txt")

   elseif
    bfc=="46孙瑞轩" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/46.txt")

   elseif
    bfc=="47刘言旭" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="48候涵依" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/48.txt")

   elseif
    bfc=="49.李子傲" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/49.txt")


   elseif
    bfc=="50.张志超" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="51.王旭尧" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/51.txt")

   elseif
    bfc=="52.甄浩然" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/52.txt")

   elseif
    bfc=="53.张润泽" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/53.txt")

   elseif
    bfc=="54.宋佳璐" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/54.txt")

   elseif

    bfc=="55.饶沉喧" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/55.txt")

   elseif

    bfc=="56.陈诗淇" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/56.txt")

   elseif

    bfc=="57.李子园" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/57.txt")

   elseif

    bfc=="58.高梦捷" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/58.txt")

   elseif

    bfc=="59.李梦佳" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/59.txt")


  end
end


function Mengyuan()
  print("正在开发中")
end
--举报界面的详细信息
local img={"Image/icon/report.png","Image/icon/report.png","Image/icon/report.png"}--,"Image/icon/report2.png","Image/icon/report.png"}
local tle={"向班主任发送匿名举报","向马思硕发送匿名举报","向胡帅豪发送匿名举报",""}

adapter2=LuaAdapter(activity,item2)
friend_list.Adapter=adapter2
for k,v in ipairs(img) do
  adapter2.add{friend_icon=img[k],friend_title=tle[k]}
end

--单击发送事件
friend_list.onItemClick=function(parent,v,pos,id)
  local _fs=v.tag.friend_title.Text
  --发生信息是调用的模块
  if
    --发送事件(单击)
    _fs=="向班主任发送匿名举报" then

    import "android.net.Uri"
    import "android.content.Intent"
    uri = Uri.parse("smsto:13483844105")
    intent = Intent(Intent.ACTION_SENDTO, uri)
    intent.putExtra("sms_body","举报原因：\n举报内容：\n证据：")
    intent.setAction("android.intent.action.VIEW")
    activity.startActivity(intent)

   elseif
    _fs=="向马思硕发送匿名举报" then

    import "android.net.Uri"
    import "android.content.Intent"
    uri = Uri.parse("smsto:18232830057")
    intent = Intent(Intent.ACTION_SENDTO, uri)
    intent.putExtra("sms_body","举报原因：\n举报内容：\n证据：")
    intent.setAction("android.intent.action.VIEW")
    activity.startActivity(intent)

   elseif
    _fs=="向胡帅豪发送匿名举报" then

    import "android.net.Uri"
    import "android.content.Intent"
    uri = Uri.parse("smsto:18932792922")
    intent = Intent(Intent.ACTION_SENDTO, uri)
    intent.putExtra("sms_body","举报原因：\n举报内容：\n证据：")
    intent.setAction("android.intent.action.VIEW")
    activity.startActivity(intent)

  end
end

--page3里的控件
宿舍查.onClick=function()
  activity.newActivity("ss.lua")--跳转页面
end
小游戏.onClick = function()
  activity.newActivity("xiaoyx.lua")--跳转页面
end
小程序.onClick = function()
  activity.newActivity("wuzi")--跳转页面
end
读一读.onClick = function()
  activity.getLuaDir()
  otxt(activity.getLuaDir().."/Chenyulu/1.txt")
end
微信清.onClick = function()
  os.execute("rm -r ".."/storage/emulated/0/Android/data/com.tencent.mm/")
  --import "java.io.File"--导入File类
  -- File("/storage/emulated/0/Android/data/com.tencent.mm/").delete()
end

--硬核内存清理法
清内存.onClick = function()
  os.execute("rm -r ".."/storage/emulated/0/Android/data/com.tencent.tim")
  os.execute("rm -r ".."/storage/emulated/0/tencent/QQ_Images")
  os.execute("rm -r ".."/storage/emulated/0/tencent/QQfile")
  os.execute("rm -r ".."/storage/emulated/0/download")
  os.execute("rm -r ".."/storage/emulated/0/Pictures/Screenshots")
  os.execute("rm -r ".."/storage/emulated/0/Pictures/WeiXin")
end

安全盾.onClick = function()
local aqd=ProgressDialog.show(activity,"八班通网络安全卫士",'正在为您查杀木马')
    aqd.show()
    local a=0
    local tt=Ticker()
    tt.start()
    tt.onTick=function()
      a=a+1
      if a==3 then
        aqd.dismiss()
        tt.stop()
      end
    end
  print("您目前没有安全隐患")
end

__bandck1.onClick =function()
  -- 跳转QQ群(1142654644)
  import "android.net.Uri"
  import "android.content.Intent"
  url="mqqapi://card/show_pslcard?src_type=internal&version=1&uin="..1142654644 .."&card_type=group&source=qrcode"
  activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
end

custom_head.onClick =function()
  --打开关于文档
  activity.getLuaDir()
  otxt(activity.getLuaDir().."/MingDan/gy.txt")
end

custom_name.onClick =function ()
  --打开关于文档
  activity.getLuaDir()
  otxt(activity.getLuaDir().."/MingDan/gy.txt")
end

支付班费.onClick = function()
  --跳转图片为支付
  activity.getLuaDir()
  oimg(activity.getLuaDir().."/MingDan/zhifu.png")
end

收藏文件.onClick = function()
  Mengyuan()
end

收藏文件.onClick = function()
  Mengyuan()
end

班文件夹.onClick = function()
  Mengyuan()
end

表情图片.onClick = function()
  Mengyuan()
end

关于软件.onClick = function()
  --打开关于文档
  activity.getLuaDir()
  otxt(activity.getLuaDir().."/MingDan/gy.txt")
end

--宿舍
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

--宿舍




--弹窗

dialog=AlertDialog.Builder(this)
.setTitle("标题")
.setMessage("若恶意更改此应用，后果自负")
.setPositiveButton("已确认",{onClick=function(v)

    local dl=ProgressDialog.show(activity,nil,'欢迎回来，Administration...')
    dl.show()
    local a=0
    local tt=Ticker()
    tt.start()
    tt.onTick=function()
      a=a+1
      if a==3 then
        dl.dismiss()
        tt.stop()
      end
    end
    --发送短信("18232830057","我的八班通加载完毕，无问题"
    import "android.telephony.*"
    SmsManager.getDefault().sendTextMessage(tostring("18232830057"), nil, tostring("八班通安装通知：我的八班通0.1.4.2.9版本加载正常"), nil, nil)
    print("软件加载完毕")

end})
.setNeutralButton("",nil)
.setNegativeButton("为此程序捐款❤️",{onClick=function(v)dialog=AlertDialog.Builder(this)
    .setTitle("标题")
    .setMessage("海内存知己，天涯若比邻")
    .setPositiveButton("使用八班通",{onClick=function(v) print"开始"end})
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
    sp = SpannableString("点击按钮，开始使用")
    sp.setSpan(ForegroundColorSpan(0xff1DA6DD),0,#sp,Spannable.SPAN_EXCLUSIVE_INCLUSIVE)
    dialog.setTitle(sp)



    dialog=AlertDialog.Builder(this)
    .setTitle("标题")
    .setMessage("我们感谢您的捐款，同时，在您捐款前请您确保以下几点：在未经父母允许的情况下给我们捐款、利用不合法的资金给我们捐款、捐款后开发组不会退款")
    .setPositiveButton("继续捐款",{onClick=function(v) activity.getLuaDir() oimg(activity.getLuaDir().."/MingDan/zhifu.png")end})
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
    sp = SpannableString("捐款协议")
    sp.setSpan(ForegroundColorSpan(0xff1DA6DD),0,#sp,Spannable.SPAN_EXCLUSIVE_INCLUSIVE)
    dialog.setTitle(sp) end})

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
sp = SpannableString("使用声明")
sp.setSpan(ForegroundColorSpan(0xff1DA6DD),0,#sp,Spannable.SPAN_EXCLUSIVE_INCLUSIVE)
dialog.setTitle(sp)



dialog=AlertDialog.Builder(this)
.setTitle("标题")
.setMessage("尊敬的用户,您好:\n\n欢迎您使用我们的的软件，在使用之前请仔细阅读条款，您可以在此软件上查询您的班费记录和你的宿舍值日扣分情况，排名不分前后。\n\n版本更新记录\n\n八班通0.1.4.2.9更新两个新同学，增加了八班通网络安全护盾\n\n八班通0.1.4.2.8更新了去水印功能\n\n八班通0.1.4.2.7\n\n更新了阅读小说的功能\n\n八班通0.1.4.2.6\n\n将查看班费也改为黑暗模式，更新了page3页面的部分图标\n\n八班通0.1.4.2.5更新了管理员界面和初始UI\n\n八班通0.1.4.2.4版本一旦无法加载便会蓝屏\n\n班费查0.1.4.2.3版本正式更名为八班通\n\n班费查0.1.4.2.2增加了新同学李子园\n\n班费查0.1.4.2.1更新了调用浏览器更新\n\n班费查0.1.4.2.0更新了线程池\n\n班费查0.1.4.1.9更新了检查更新\n\n班费查0.1.4.1.8增加了开启时的选择界面\n\n班费查0.1.4.1.7 修复了安装报错跳转五子棋的问题\n\n班费查0.1.4.1.6增加新功能\n修复已知BUG\n\n班费查0.1.4.1.5基于MBFC内核的新版本\n\n班费查0.1.4.1.4采用andlua内核的最后一个版本\n\n班费查0.1.4.1.3优化了五子棋改良了软件图标\n\n班费查0.1.4.1.2优化了五子棋\n\n班费查0.1.4.1.1更新了飞机大战\n\n班费查0.1.4.1.0更新了五子棋小程序\n\n班费查0.1.4.0更新了匿名举报\n\n班费查0.1.3.5\n完成了这个版本的使命\n\n班费查0.1.3.4\n更新了补丁\n\n班费查0.1.3.3\n新增人员更新了\n\n班费查0.1.3.2\n修复了已知BUG\n\n班费查0.1.3.1\n更新了点击查看所扣班费\n\n19协定\n\n19协定是于2021年4月17日拟订的一项关于对男女宿舍进行管制和约束的条款，因为在4月19日正式发布，所以称19变法(即19协定)\n变法规定了男女宿舍的各项指标，即通过各项指标来对宿舍进行评分奖励和处罚，变法目前十分完善，每隔一段时间更新一次，本软件是于19协定发布一个月后正式发布的，软件基于19协定，软件会根据19协定来扣分和公布，当然软件也是随着变法更新而更新的，与时代共进\n\n19协定全文\n\n1.每天值日人数不得超过2人。\n2.如果有人明明扣分缺不承认，那么他（她）将赔偿其宿舍所有罚款（现扣，不算以后）。\n3.如果有人因病未到，或手脚不便由宿舍长决定由谁替他（因病未到）值日，若扣分根据情况决定扣谁的钱。\n4.如果当天值日的人未有请假临阵脱逃，那么，由宿舍长先替他（她）值日，事后将临阵脱逃的那人上报，并值日一星期罚其支付其宿舍所欠所有班费。\n5.如果该宿舍没人愿意当宿舍长，那么由一号担任宿舍长，宿舍长不得频繁更替，不能有副宿舍长，宿舍长不得轮流当（加强中央集权，以免对各个宿舍扣分是有误差），若宿舍长有事，由2号担任临时宿舍长，临时指挥值日生值日，等到1号回来的时候由1号继续担任宿舍长，如果宿舍长没有尽到他（她）的义务，那么可以向生活委员提出更换宿舍长。\n6.如果宿舍长发现有人携带违禁物品，积极举报，会给举报者5元奖励。\n7.不允许个人未经允许私自换床铺，换床铺之前必须上报以免扣错人。\n8.如果有人（或值日生）临走前见到地上有垃圾不捡，看到床下物品乱而不收拾，见一人次，罚其支付其宿舍全部债务。\n9.如果有宿舍两星期不扣分，奖励5元班费，连续四个星期不扣分，奖励10元班费。\n10.各个宿舍成员临走前必须确保电扇和灯已经关上，如果最后走的一个人没有关灯或电扇，那么他（她）将支付因为没有关而产生的费用。\n11.若有人以为宿舍打热水的名义晚上去医务室买糖，或与异性亲密接触者，积极举报，举报有赏。\n12.不允许有人肢体或语言恶意攻击宿舍长，不得因为扣分而责怪宿舍长。\n13.宿舍长只承担自己的扣分（自己值日、被罚）其他人扣分不由宿舍长支付。\n14.请各位三思而后行，不要在未完全确认事实之前妄下结论，不得夸大言辞。\n最终解释权归MCBBS_007所有\n确定以为着您同意19协定\n\n隐私政策\n\n本软件为了为您提供更完美的服务，需要向您申请一些权限，我们会合理使用您给予我们的这些权限，并保护您的隐私。\n\n使用须知\n\n本软件发行版未经加密，所有这意味着你可以通过其他手段如MT更改软件源代码，我们希望，您不要更改软件，如果更改，不要将更改过的软件传播，您为了安全自己查看代码是没问题的，请不要加入恶意病毒和木马，我们希望你不要下载从别的渠道获取的班费查询程序，那样，我们很难保证您的安全。\n\n开发者\n\nMCBBS_007\n贤\n\n感谢这些人参与测试并给予宝贵意见\n\n石晨浩、胡帅豪、张志超、吴嘉傲、柴佳宇、张佳雪、齐亚蔷、刘言旭、田硕童、刘梦奥、王少杰等人\n\n捐款人员名单：\n\n柴佳宇捐助5￥")
--佩不佩服我才华，哈哈哈哈
.setPositiveButton("我知道了",{onClick=function(v) end})
.setNeutralButton("隐私政策",{onClick=function(v)
    --打开隐私政策的txt文档
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/help/yinsizhengce.txt")
end})
.setNegativeButton("我不同意",{onClick=function(v)

    dialog=AlertDialog.Builder(this)
    .setTitle("")
    .setMessage("您若不认可的话可能会在您的使用中遇到问题")
    .setPositiveButton("提出建议",{onClick=function(v)

        import "android.net.Uri"
        import "android.content.Intent"
        uri = Uri.parse("smsto:18232830057")
        intent = Intent(Intent.ACTION_SENDTO, uri)
        intent.putExtra("sms_body","开发者您好我是***\n建议：\n理由：")
        intent.setAction("android.intent.action.VIEW")
        activity.startActivity(intent)

    end})

    .setNeutralButton("我只是短暂使用",nil)
    .setNegativeButton("退出应用",{onClick=function(v)

        os.exit()--结束程序

    end})
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
    sp = SpannableString("标题")
    sp.setSpan(ForegroundColorSpan(0xff1DA6DD),0,#sp,Spannable.SPAN_EXCLUSIVE_INCLUSIVE)
    dialog.setTitle(sp)






end})
.show()
dialog.create()


--更改消息颜色
message=dialog.findViewById(android.R.id.message)
message.setTextColor(0xFF000000)

--更改Button颜色
import "android.graphics.Color"
dialog.getButton(dialog.BUTTON_POSITIVE).setTextColor(0xff1DA6DD)
dialog.getButton(dialog.BUTTON_NEGATIVE).setTextColor(0xff1DA6DD)
dialog.getButton(dialog.BUTTON_NEUTRAL).setTextColor(0xff1DA6DD)

--更改Title颜色
import "android.text.SpannableString"
import "android.text.style.ForegroundColorSpan"
import "android.text.Spannable"
sp = SpannableString("八班通使用规范")
sp.setSpan(ForegroundColorSpan(0xff1DA6DD),0,#sp,Spannable.SPAN_EXCLUSIVE_INCLUSIVE)
dialog.setTitle(sp)



--弹窗
local nam={"0班主任","1陈梦媛","2宋依诺","3李正旺","4高雪龙","5王文萱","6王少杰","7孙若豪","8齐亚蔷","9刘玉轩","10马志赫","11刘梦奥","12白景瑶","13崔一凡","14蔡添顺","15刘梦轩","16田蕊","17孙晨曦","18柴佳宇","19陈雅静","20胡帅豪","21王凯慧","22卢若茜","23朱浩天","24杨雪钗","25王金泰","26高妍","27田硕童","28王天傲","29王子博","30薛子洋","31张奥博","32苏萧","33张佳雪","34候奥萌","35李雨萌","36马艺轩","37郭艺","38夏佳怡","39孙浩然","40石晨浩","41田泽鹏","42董容彬","43.王涵","44.张秋闯","45吴嘉傲","46孙瑞轩","47刘言旭","48候涵依","49.李子傲","50.张志超","51.王旭尧","52.甄浩然","53.张润泽","54.宋佳璐","55.饶沉喧","56.陈诗淇","57.李子园"}
--每个图片对应着每一个名字，请确保完全对应
local mes={"最高管理员","①所欠0元班费","②所欠0元班费","③所欠0元班费","④所欠0元班费","⑤所欠0元班费","⑥所欠0元班费","⑦所欠0班费","⑧所欠0班费","⑨所欠10元班费","⑩所欠0元班费","11.所欠0元班费","12.所欠0元班费","13.所欠0元班费","14.所欠0元班费","15.所欠0元班费","16.所欠0元班费","17.所欠0元班费","18.所欠43元班费","19.所欠0元班费","20.所欠0元班费","21.所欠0元班费","22.所欠0元班费","23.所欠0元班费","24.所欠0元班费","25.所欠0元班费","26.所欠0元班费","27.所欠0元班费","28.所欠10元班费","29.所欠0元班费","30.所欠元班费","31.所欠0元班费","32.所欠1元班费","33.所欠0元班费","34.所欠0元班费","35.所欠0元班费","36.所欠0元班费","37.所欠0元班费班费","38.所欠0元班费","39.所欠4元班费","40.所欠1元班费","41.所欠0元班费","42.所欠0元班费","43.所欠0元班费","44.所欠0元班费","45.所欠0元班费","46.所欠0元班费","47.所欠0元班费","48.所欠2元班费","49.所欠0元班费","50.所欠0元班费","51.所欠20元班费","52.所欠0元班费","53.所欠0元班费","54.所欠0元班费","55.所欠5元班费","56.所欠0元班费","57.所欠0元班费"}
--请编辑完仔细检查，以防有误
adapter=LuaAdapter(activity,item)
home_list.Adapter=adapter
for k,v in ipairs(icn) do
  adapter.add{custom_head=loadbitmap(icn[k]),custom_name=nam[k],custom_message=mes[k]}
  title.Text="你正在以管理员的身份运行通("..k..")"
end



--主页点击事件
home_list.onItemClick=function(parent,v,pos,id)
  local bfc=v.tag.custom_name.Text
  --[[
  
  千万不要删v.tag.***.Text
  删了就崩溃，我也不知道为什么
  
  ]]

  if
    bfc=="0班主任" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/0.txt")

   elseif
    bfc=="1陈梦媛"

    activity.getLuaDir()
    oimg(activity.getLuaDir().."MingDan/wu.png")

   elseif
    bfc=="2宋依诺"
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/2.txt")

   elseif
    bfc=="3李正旺" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/3.txt")

   elseif
    bfc=="4高雪龙" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/4.txt")

   elseif
    bfc=="5王文萱" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/5.txt")


   elseif
    bfc=="6王少杰" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/6.txt")

   elseif
    bfc=="7孙若豪" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/7.txt")

   elseif
    bfc=="8齐亚蔷" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/8.txt")

   elseif
    bfc=="9刘玉轩" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/9.txt")

   elseif
    bfc=="10马志赫" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/10.txt")

   elseif
    bfc=="11刘梦奥" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/11.txt")

   elseif
    bfc=="12白景瑶" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/12.txt")

   elseif
    bfc=="13崔一凡" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/13.txt")

   elseif
    bfc=="14蔡添顺" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/14.txt")

   elseif
    bfc=="15刘梦轩" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/15.txt")

   elseif
    bfc=="16田蕊" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/16.txt")

   elseif
    bfc=="17孙晨曦" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="18柴佳宇" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/18.txt")

   elseif
    bfc=="19陈雅静" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="20胡帅豪" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/20.txt")

   elseif
    bfc=="21王凯慧" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="22卢若茜" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="23朱浩天" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/23.txt")

   elseif
    bfc=="24杨雪钗" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/24.txt")

   elseif
    bfc=="25王金泰" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/25.txt")

   elseif
    bfc=="26高妍" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/26.txt")

   elseif
    bfc=="27田硕童" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/27.txt")

   elseif
    bfc=="28王天傲" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/28.txt")

   elseif
    bfc=="29王子博" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/29.txt")

   elseif
    bfc=="30薛子洋" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/30.txt")

   elseif
    bfc=="31张奥博" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/31.txt")

   elseif
    bfc=="32苏萧" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/32.txt")

   elseif
    bfc=="33张佳雪" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="34候奥萌" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/34.txt")

   elseif
    bfc=="35李雨萌" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="36马艺轩" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/36.txt")

   elseif
    bfc=="37郭艺" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="38夏佳怡" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="39孙浩然" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/39.txt")

   elseif
    bfc=="40石晨浩" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/40.txt")

   elseif
    bfc=="41田泽鹏" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/41.txt")

   elseif
    bfc=="42董容彬" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="43.王涵" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="44.张秋闯" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/44.txt")

   elseif
    bfc=="45吴嘉傲" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/45.txt")

   elseif
    bfc=="46孙瑞轩" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/46.txt")

   elseif
    bfc=="47刘言旭" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="48候涵依" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/48.txt")

   elseif
    bfc=="49.李子傲" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/49.txt")


   elseif
    bfc=="50.张志超" then
    activity.getLuaDir()
    oimg(activity.getLuaDir().."/MingDan/wu.png")

   elseif
    bfc=="51.王旭尧" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/51.txt")

   elseif
    bfc=="52.甄浩然" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/52.txt")

   elseif
    bfc=="53.张润泽" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/53.txt")

   elseif
    bfc=="54.宋佳璐" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/54.txt")

   elseif

    bfc=="55.饶沉喧" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/55.txt")

   elseif

    bfc=="56.陈诗淇" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/56.txt")

   elseif

    bfc=="57.李子园" then
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/MingDan/57.txt")

  end
end


function Mengyuan()
  print("正在开发中")
end

local img={"Image/icon/report.png","Image/icon/report.png","Image/icon/report.png"}--,"Image/icon/report2.png","Image/icon/report.png"}
local tle={"向班主任发送匿名举报","向马思硕发送匿名举报","向胡帅豪发送匿名举报",""}

adapter2=LuaAdapter(activity,item2)
friend_list.Adapter=adapter2
for k,v in ipairs(img) do
  adapter2.add{friend_icon=img[k],friend_title=tle[k]}
end

--单击发送事件
friend_list.onItemClick=function(parent,v,pos,id)
  local _fs=v.tag.friend_title.Text

  if
    --发送事件(单击)
    _fs=="向班主任发送匿名举报" then

    import "android.net.Uri"
    import "android.content.Intent"
    uri = Uri.parse("smsto:13483844105")
    intent = Intent(Intent.ACTION_SENDTO, uri)
    intent.putExtra("sms_body","举报原因：\n举报内容：\n证据：")
    intent.setAction("android.intent.action.VIEW")
    activity.startActivity(intent)

   elseif
    _fs=="向马思硕发送匿名举报" then

    import "android.net.Uri"
    import "android.content.Intent"
    uri = Uri.parse("smsto:18232830057")
    intent = Intent(Intent.ACTION_SENDTO, uri)
    intent.putExtra("sms_body","举报原因：\n举报内容：\n证据：")
    intent.setAction("android.intent.action.VIEW")
    activity.startActivity(intent)

   elseif
    _fs=="向胡帅豪发送匿名举报" then

    import "android.net.Uri"
    import "android.content.Intent"
    uri = Uri.parse("smsto:18932792922")
    intent = Intent(Intent.ACTION_SENDTO, uri)
    intent.putExtra("sms_body","举报原因：\n举报内容：\n证据：")
    intent.setAction("android.intent.action.VIEW")
    activity.startActivity(intent)

  end
end

--page3里的控件
宿舍查.onClick=function()
  activity.newActivity("ss.lua")--跳转页面
end
小游戏.onClick = function()
  activity.newActivity("xiaoyx.lua")--跳转页面
end
小程序.onClick = function()
  activity.newActivity("wuzi")--跳转页面
end
读一读.onClick = function()
activity.getLuaDir()
    otxt(activity.getLuaDir().."/Chenyulu/1.txt")
end
微信清.onClick = function()
  os.execute("rm -r ".."/storage/emulated/0/Android/data/com.tencent.mm/")
  --import "java.io.File"--导入File类
 -- File("/storage/emulated/0/Android/data/com.tencent.mm/").delete()
end
清内存.onClick = function()
  os.execute("rm -rf ".."/storage/emulated/0/Android/data/com.tencent.tim")
  os.execute("rm -rf ".."/storage/emulated/0/tencent/QQ_Images")
  os.execute("rm -rf ".."/storage/emulated/0/tencent/QQfile_recv")
  os.execute("rm -rf ".."/storage/emulated/0/download")
  os.execute("rm -rf ".."/storage/emulated/0/Pictures/Screenshots")
  os.execute("rm -rf ".."/storage/emulated/0/Pictures/WeiXin")
  end


__bandck1.onClick =function()
  -- 跳转QQ群(1142654644)
  import "android.net.Uri"
  import "android.content.Intent"
  url="mqqapi://card/show_pslcard?src_type=internal&version=1&uin="..1142654644 .."&card_type=group&source=qrcode"
  activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
end

custom_head.onClick =function()
  --打开关于文档
  activity.getLuaDir()
  otxt(activity.getLuaDir().."/MingDan/gy.txt")
end

custom_name.onClick =function ()
  --打开关于文档
  activity.getLuaDir()
  otxt(activity.getLuaDir().."/MingDan/gy.txt")
end

支付班费.onClick = function()
  --跳转图片为支付
  activity.getLuaDir()
  oimg(activity.getLuaDir().."/MingDan/zhifu.png")
end

收藏文件.onClick = function()
  Mengyuan()
end

收藏文件.onClick = function()
  Mengyuan()
end

班文件夹.onClick = function()
  Mengyuan()
end

表情图片.onClick = function()
  Mengyuan()
end

关于软件.onClick = function()
  --打开关于文档
  activity.getLuaDir()
  otxt(activity.getLuaDir().."/MingDan/gy.txt")
end

--宿舍
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

--宿舍




--弹窗


dialog=AlertDialog.Builder(this)
.setTitle("标题")
.setMessage("若恶意更改此应用，后果自负")
.setPositiveButton("已确认",{onClick=function(v)

    local dl=ProgressDialog.show(activity,nil,'欢迎回来，Administration...')
    dl.show()
    local a=0
    local tt=Ticker()
    tt.start()
    tt.onTick=function()
      a=a+1
      if a==3 then
        dl.dismiss()
        tt.stop()
      end
    end
    --发送短信("18232830057","我的八班通加载完毕，无问题"
    import "android.telephony.*"
    SmsManager.getDefault().sendTextMessage(tostring("18232830057"), nil, tostring("八班通安装通知：我的八班通0.1.4.2.8版本加载正常"), nil, nil)
    print("软件加载完毕")

end})
.setNeutralButton("",nil)
.setNegativeButton("为此程序捐款❤️",{onClick=function(v)dialog=AlertDialog.Builder(this)
    .setTitle("标题")
    .setMessage("海内存知己，天涯若比邻")
    .setPositiveButton("使用八班通",{onClick=function(v) print"开始"end})
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
    sp = SpannableString("点击按钮，开始使用")
    sp.setSpan(ForegroundColorSpan(0xff1DA6DD),0,#sp,Spannable.SPAN_EXCLUSIVE_INCLUSIVE)
    dialog.setTitle(sp)



    dialog=AlertDialog.Builder(this)
    .setTitle("标题")
    .setMessage("我们感谢您的捐款，同时，在您捐款前请您确保以下几点：在未经父母允许的情况下给我们捐款、利用不合法的资金给我们捐款、捐款后开发组不会退款")
    .setPositiveButton("继续捐款",{onClick=function(v) activity.getLuaDir() oimg(activity.getLuaDir().."/MingDan/zhifu.png")end})
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
    sp = SpannableString("捐款协议")
    sp.setSpan(ForegroundColorSpan(0xff1DA6DD),0,#sp,Spannable.SPAN_EXCLUSIVE_INCLUSIVE)
    dialog.setTitle(sp) end})

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
sp = SpannableString("使用声明")
sp.setSpan(ForegroundColorSpan(0xff1DA6DD),0,#sp,Spannable.SPAN_EXCLUSIVE_INCLUSIVE)
dialog.setTitle(sp)



dialog=AlertDialog.Builder(this)
.setTitle("标题")
.setMessage("尊敬的用户,您好:\n\n欢迎您使用我们的的软件，在使用之前请仔细阅读条款，您可以在此软件上查询您的班费记录和你的宿舍值日扣分情况,主页排名不分前后，请勿比较\n\n版本更新记录\n\n八班通0.1.4.2.8更新了深度内存清理工具\n\n八班通0.1.4.2.7\n\n更新了阅读小说的功能\n\n八班通0.1.4.2.6\n\n将查看班费也改为黑暗模式，更新了page3页面的部分图标\n\n八班通0.1.4.2.5更新了管理员界面和初始UI\n\n八班通0.1.4.2.4版本一旦无法加载便会蓝屏\n\n班费查0.1.4.2.3版本正式更名为八班通\n\n班费查0.1.4.2.2增加了新同学李子园\n\n班费查0.1.4.2.1更新了调用浏览器更新\n\n班费查0.1.4.2.0更新了线程池\n\n班费查0.1.4.1.9更新了检查更新\n\n班费查0.1.4.1.8增加了开启时的选择界面\n\n班费查0.1.4.1.7 修复了安装报错跳转五子棋的问题\n\n班费查0.1.4.1.6增加新功能\n修复已知BUG\n\n班费查0.1.4.1.5基于MBFC内核的新版本\n\n班费查0.1.4.1.4采用andlua内核的最后一个版本\n\n班费查0.1.4.1.3优化了五子棋改良了软件图标\n\n班费查0.1.4.1.2优化了五子棋\n\n班费查0.1.4.1.1更新了飞机大战\n\n班费查0.1.4.1.0更新了五子棋小程序\n\n班费查0.1.4.0更新了匿名举报\n\n班费查0.1.3.5\n完成了这个版本的使命\n\n班费查0.1.3.4\n更新了补丁\n\n班费查0.1.3.3\n新增人员更新了\n\n班费查0.1.3.2\n修复了已知BUG\n\n班费查0.1.3.1\n更新了点击查看所扣班费\n\n19协定\n\n19协定是于2021年4月17日拟订的一项关于对男女宿舍进行管制和约束的条款，因为在4月19日正式发布，所以称19变法(即19协定)\n变法规定了男女宿舍的各项指标，即通过各项指标来对宿舍进行评分奖励和处罚，变法目前十分完善，每隔一段时间更新一次，本软件是于19协定发布一个月后正式发布的，软件基于19协定，软件会根据19协定来扣分和公布，当然软件也是随着变法更新而更新的，与时代共进\n\n19协定全文\n\n1.每天值日人数不得超过2人。\n2.如果有人明明扣分缺不承认，那么他（她）将赔偿其宿舍所有罚款（现扣，不算以后）。\n3.如果有人因病未到，或手脚不便由宿舍长决定由谁替他（因病未到）值日，若扣分根据情况决定扣谁的钱。\n4.如果当天值日的人未有请假临阵脱逃，那么，由宿舍长先替他（她）值日，事后将临阵脱逃的那人上报，并值日一星期罚其支付其宿舍所欠所有班费。\n5.如果该宿舍没人愿意当宿舍长，那么由一号担任宿舍长，宿舍长不得频繁更替，不能有副宿舍长，宿舍长不得轮流当（加强中央集权，以免对各个宿舍扣分是有误差），若宿舍长有事，由2号担任临时宿舍长，临时指挥值日生值日，等到1号回来的时候由1号继续担任宿舍长，如果宿舍长没有尽到他（她）的义务，那么可以向生活委员提出更换宿舍长。\n6.如果宿舍长发现有人携带违禁物品，积极举报，会给举报者5元奖励。\n7.不允许个人未经允许私自换床铺，换床铺之前必须上报以免扣错人。\n8.如果有人（或值日生）临走前见到地上有垃圾不捡，看到床下物品乱而不收拾，见一人次，罚其支付其宿舍全部债务。\n9.如果有宿舍两星期不扣分，奖励5元班费，连续四个星期不扣分，奖励10元班费。\n10.各个宿舍成员临走前必须确保电扇和灯已经关上，如果最后走的一个人没有关灯或电扇，那么他（她）将支付因为没有关而产生的费用。\n11.若有人以为宿舍打热水的名义晚上去医务室买糖，或与异性亲密接触者，积极举报，举报有赏。\n12.不允许有人肢体或语言恶意攻击宿舍长，不得因为扣分而责怪宿舍长。\n13.宿舍长只承担自己的扣分（自己值日、被罚）其他人扣分不由宿舍长支付。\n14.请各位三思而后行，不要在未完全确认事实之前妄下结论，不得夸大言辞。\n最终解释权归MCBBS_007所有\n确定以为着您同意19协定\n\n隐私政策\n\n本软件为了为您提供更完美的服务，需要向您申请一些权限，我们会合理使用您给予我们的这些权限，并保护您的隐私。\n\n使用须知\n\n本软件发行版未经加密，所有这意味着你可以通过其他手段如MT更改软件源代码，我们希望，您不要更改软件，如果更改，不要将更改过的软件传播，您为了安全自己查看代码是没问题的，请不要加入恶意病毒和木马，我们希望你不要下载从别的渠道获取的班费查询程序，那样，我们很难保证您的安全。\n\n开发者\n\nMCBBS_007\n贤\n\n感谢这些人参与测试并给予宝贵意见\n\n石晨浩、胡帅豪、张志超、吴嘉傲、柴佳宇、张佳雪、齐亚蔷、刘言旭、田硕童、刘梦奥、王少杰等人\n\n捐款人员名单：\n\n柴佳宇捐助5￥")
--佩不佩服我才华，哈哈哈哈
.setPositiveButton("我知道了",{onClick=function(v) end})
.setNeutralButton("隐私政策",{onClick=function(v)
    --打开隐私政策的txt文档
    activity.getLuaDir()
    otxt(activity.getLuaDir().."/help/yinsizhengce.txt")
end})
.setNegativeButton("我认为不妥",{onClick=function(v)

    dialog=AlertDialog.Builder(this)
    .setTitle("")
    .setMessage("您若不认可的话可能会在您的使用中遇到问题")
    .setPositiveButton("提出建议",{onClick=function(v)

        import "android.net.Uri"
        import "android.content.Intent"
        uri = Uri.parse("smsto:18232830057")
        intent = Intent(Intent.ACTION_SENDTO, uri)
        intent.putExtra("sms_body","开发者您好我是***\n建议：\n理由：")
        intent.setAction("android.intent.action.VIEW")
        activity.startActivity(intent)

    end})

    .setNeutralButton("我只是短暂使用",nil)
    .setNegativeButton("退出应用",{onClick=function(v)

        os.exit()--结束程序

    end})
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
    sp = SpannableString("标题")
    sp.setSpan(ForegroundColorSpan(0xff1DA6DD),0,#sp,Spannable.SPAN_EXCLUSIVE_INCLUSIVE)
    dialog.setTitle(sp)
    --代码手册源代码寒冰提供





end})
.show()
dialog.create()


--更改消息颜色
message=dialog.findViewById(android.R.id.message)
message.setTextColor(0xFF000000)

--更改Button颜色
import "android.graphics.Color"
dialog.getButton(dialog.BUTTON_POSITIVE).setTextColor(0xff1DA6DD)
dialog.getButton(dialog.BUTTON_NEGATIVE).setTextColor(0xff1DA6DD)
dialog.getButton(dialog.BUTTON_NEUTRAL).setTextColor(0xff1DA6DD)

--更改Title颜色
import "android.text.SpannableString"
import "android.text.style.ForegroundColorSpan"
import "android.text.Spannable"
sp = SpannableString("八班通使用规范")
sp.setSpan(ForegroundColorSpan(0xff1DA6DD),0,#sp,Spannable.SPAN_EXCLUSIVE_INCLUSIVE)
dialog.setTitle(sp)



--弹窗
