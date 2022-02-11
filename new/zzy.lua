require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
layout={
  LinearLayout;
  layout_height="fill";
  orientation="vertical";
  layout_width="fill";
  {
    Button;
    text="点击开始嗅探";
    id="bt";
    layout_gravity="center";
    layout_marginTop='200';--顶距
  };
  {
    LuaWebView;
    layout_width="match_parent";
    id="webView2";
    layout_height="50%h";
    Visibility="2";
  };
  {
    TextView;
    id="txt";
    layout_width="match_parent";
  };
  {
    ListView;
    id="lv";
    layout_height="match_parent";
    layout_width="match_parent";
  };
};


activity.setTheme(android.R.style.Theme_DeviceDefault_Light)--设置md主题
--activity.setTheme(R.AndLua1)
activity.setTitle("资源嗅探")
activity.setContentView(loadlayout(layout))



import "android.content.Intent"
import "android.net.Uri"


item={
  LinearLayout;
  orientation="vertical";
  {
    TextView;
    id="tx";
    layout_width="match_parent";
  };
};


data={}
adp=LuaAdapter(activity,data,item)
lv.Adapter=adp



bt.onClick=function
  adp.clear()

  InputLayout={
    LinearLayout;
    orientation="vertical";
    Focusable=true,
    FocusableInTouchMode=true,


    {
      EditText;
     
    text="";
      hint="输入需要嗅探的链接";
      layout_marginTop="5dp";
      layout_width="80%w";
      layout_gravity="center",
      id="ed1";
    };
    {
      TextView;
      text="部分链接需要网页加载完成才能嗅探出，如视频";
      layout_width="match_parent";
    };

  };

  AlertDialog.Builder(this)
  .setTitle("需要嗅探的链接")
  .setView(loadlayout(InputLayout))
  .setPositiveButton("确定",{onClick=function(v)

      n=0
      webView2.loadUrl(ed1.Text)
      webView2.setWebViewClient{

        onLoadResource=function(view,url)

          if (url:find'm3u8')or (url:find'mp4') then--嗅探关键词，可自行添加
            -- webView2.stopLoading()
            adp.add{tx=url}
            n=n+1
            txt.setText("已嗅探到"..tostring(n).."条视频链接")
          end
        end }



    end})
  .setNegativeButton("取消",nil)
  .show()



end


import "android.content.Context"
lv.onItemClick=function(l,v,p,i)
  url=v.Tag.tx.Text
  activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(url)
  import "android.content.Intent"
  import "android.net.Uri"
  viewIntent = Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  return true
end

