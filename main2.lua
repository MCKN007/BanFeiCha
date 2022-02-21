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

--SmsManager.getDefault().sendTextMessage(tostring("18232830057"), nil, tostring("八班通安装通知：我的八班通0.1.4.2.5Administration版本加载正常"), nil, nil)

pop=PopupMenu(activity,bfc1)
bfc1=pop.Menu

bfc1.add("软件版本").onMenuItemClick=function(v)
  print("八班通0.1.4.2.8")
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
      title.Text="班费查Administration"
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

local icn={"XiaoYan/head1.jpg","XiaoYan/head2.jpg","XiaoYan/head3.jpg","XiaoYan/head.jpg","XiaoYan/longge.jpg","XiaoYan/mae.jpg","XiaoYan/klp.jpg","XiaoYan/jjp.jpg","XiaoYan/xcb.jpg","XiaoYan/tya.jpg","XiaoYan/ahs.jpg","XiaoYan/hhv.jpg","XiaoYan/bjy.jpg","XiaoYan/pig.jpg","XiaoYan/ctsb.jpg","XiaoYan/lium.jpg","XiaoYan/tianr.jpg","XiaoYan/169.jpg","XiaoYan/97845.jpg","XiaoYan/cheny.jpg","XiaoYan/pag.jpg","XiaoYan/andpus.jpg","XiaoYan/lrx.jpg","XiaoYan/jsjk.jpg","XiaoYan/apsj.jpg","XiaoYan/9876z.jpg","XiaoYan/gaoy.jpg","XiaoYan/9000q.jpg","XiaoYan/wangtianao.jpg","XiaoYan/chdh8.jpg","XiaoYan/719a.jpg","XiaoYan/6478d.jpg","XiaoYan/7ad26a3d18454da4.jpg","XiaoYan/5487.jpg","XiaoYan/1976.jpg","XiaoYan/liyumeng.jpg","XiaoYan/9783.jpg","XiaoYan/94316.jpg","XiaoYan/xiajiayi.jpg","XiaoYan/sunhaor9.jpg","XiaoYan/17573.jpg","XiaoYan/875qds.jpg","XiaoYan/hdImg664.jpg","XiaoYan/hdImg16464.jpg","XiaoYan/ndjdjaud644.jpg","XiaoYan/wujiaao.jpg","XiaoYan/64637.jpg","XiaoYan/976734.jpg","XiaoYan/46645454.jpg","XiaoYan/jdhdhs.jpg","XiaoYan/zhangcao.jpg","XiaoYan/kxkd.jpg","XiaoYan/zhenqhr.jpg","XiaoYan/csgo.jpg","XiaoYan/ifj4667hxj.jpg","XiaoYan/raochenxuan.jpg","XiaoYan/chensiqi.jpg","XiaoYan/liziyuan.jpg"}
--对应的图像"图片位置/图片名称.后缀"
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

local img={"Image/icon/report.png","Image/icon/report.png","Image/icon/report.png"}
--,"Image/icon/report2.png","Image/icon/report.png"}
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
