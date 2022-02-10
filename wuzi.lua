require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.graphics.Color"
import "android.graphics.PorterDuff"
import "android.graphics.Paint"
activity.ActionBar.hide()--隐藏标题栏
activity.setTitle('班费查小游戏 五子棋')
w=activity.width
activity.setContentView(loadlayout({
  LinearLayout;
  orientation="vertical";
  layout_height="fill";
  layout_width="fill";
  Gravity="center",
  {
    GridView,
    numColumns=15,
    layout_height=w,
    layout_width=w,
    id="grid",
  },
  {
    TextView,
    id="tstv",
  },
}))

item={
  TextView,
  layout_width=w/15,
  layout_height=w/15,
  TextSize="0",
  Gravity="center",
  id="tv",
}
data={}
adp=LuaAdapter(activity,data,item)
grid.setAdapter(adp)

pos={}
for i=0,15*15-1 do
  table.insert(data,{tv=""})
  local x=i%15
  local y=i//15
  table.insert(pos,{
    x=x,
    y=y,
    x1=x+y,--斜坐标
    y1=x-y,
    value="0",
  })
end

--给五子棋画个UI框

ItemWH=w/15

InitBoardDrawable=LuaDrawable(function(mCanvas,mPaint,mDrawable)

  mPaint1 = Paint();
  mPaint1.setStrokeWidth(2)
  mPaint1.setAntiAlias(true)
  mPaint1.setStyle(Paint.Style.STROKE)
  mPaint1.setColor(0x88000000)
  mPaint1.setTextSize(20)

  zby={"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o"}

  mCanvas.drawColor(0xFFF7E7B6)

  for i=0,14 do
    --横线
    mCanvas.drawLine(ItemWH/2,ItemWH/2+i*ItemWH,w-ItemWH/2,ItemWH/2+i*ItemWH,mPaint1)
    --竖线
    mCanvas.drawLine(ItemWH/2+i*ItemWH,ItemWH/2,ItemWH/2+i*ItemWH,w-ItemWH/2,mPaint1)

    mCanvas.drawText(tostring(i+1),ItemWH/2+i*ItemWH-8,ItemWH/3,mPaint1)

    mCanvas.drawText(zby[i+1],ItemWH/3-8,ItemWH/2+i*ItemWH+8,mPaint1)

  end

  mPaint1.setStyle(Paint.Style.FILL)
  mCanvas.drawCircle(w/2, w/2, ItemWH/8, mPaint1)
  mCanvas.drawCircle(ItemWH/2+3*ItemWH, ItemWH/2+3*ItemWH, ItemWH/8, mPaint1)
  mCanvas.drawCircle(ItemWH/2+11*ItemWH, ItemWH/2+3*ItemWH, ItemWH/8, mPaint1)
  mCanvas.drawCircle(ItemWH/2+3*ItemWH, ItemWH/2+11*ItemWH, ItemWH/8, mPaint1)
  mCanvas.drawCircle(ItemWH/2+11*ItemWH, ItemWH/2+11*ItemWH, ItemWH/8, mPaint1)
end)

grid.background=InitBoardDrawable

--黑棋子背景
BlackPieceDrawable=LuaDrawable(function(mCanvas,mPaint,mDrawable)
  mPaint1 = Paint();
  mPaint1.setStrokeWidth(20)
  mPaint1.setAntiAlias(true)
  mPaint1.setStyle(Paint.Style.FILL)
  mPaint1.setColor(0xff000000)
  mCanvas.drawCircle(ItemWH/2, ItemWH/2, ItemWH/3.5, mPaint1)
end)

--白棋子背景
WhitePieceDrawable=LuaDrawable(function(mCanvas,mPaint,mDrawable)
  mPaint1 = Paint();
  mPaint1.setStrokeWidth(20)
  mPaint1.setAntiAlias(true)
  mPaint1.setStyle(Paint.Style.FILL)
  mPaint1.setColor(0xffffffff)
  mCanvas.drawCircle(ItemWH/2, ItemWH/2, ItemWH/3.5, mPaint1)
end)

function 判断是否五子连珠(p)
  x=p%15--列坐标
  y=p//15--行坐标
  x1=x+y--斜坐标1
  y1=x-y--斜坐标2
  strx=""
  stry=""
  strx1=""
  stry1=""
  for k,v in pairs(pos)
    if v.x==x then
      strx=strx..v.value
    end
    if v.y==y then
      stry=stry..v.value
    end
    if v.x1==x1 then
      strx1=strx1..v.value
    end
    if v.y1==y1 then
      stry1=stry1..v.value
    end
  end
  if string.find(strx,"11111")~=nil or string.find(stry,"11111")~=nil or string.find(strx1,"11111")~=nil or string.find(stry1,"11111")~=nil then
    return 1
  end
  if string.find(strx,"22222")~=nil or string.find(stry,"22222")~=nil or string.find(strx1,"22222")~=nil or string.find(stry1,"22222")~=nil then
    return 2
  end
  return 0
end

a=true--黑子先行

grid.onItemClick=function(l,v,p,i)
  --轮流下棋的逻辑
  if pos[i].value=="0" then--如果这个位置没下过棋
    if a then--如果是黑子
      pos[i].value="1"
      v.background=BlackPieceDrawable
     else--如果是白子
      pos[i].value="2"
      v.background=WhitePieceDrawable
    end
    a=not(a)
    判断=判断是否五子连珠(p)
    if 判断==1 then
      activity.newActivity("Gobang/black")--跳转页面
    end
    if 判断==2 then
      activity.newActivity("Gobang/white")--跳转页面
    end
    tstv.Text="坐标：("..tostring(x)..","..tostring(y)..","..tostring(x1)..","..tostring(y1)..")"
    tstv.Text=tstv.Text.."\nstrx="..strx
    tstv.Text=tstv.Text.."\nstry="..stry
    tstv.Text=tstv.Text.."\nstrx1="..strx1
    tstv.Text=tstv.Text.."\nstry1="..stry1
   else--如果这个位置下过棋
    activity.finish()--关闭当前页面
  end
end

--activity.setTheme(R.Theme_Blue)
--activity.setContentView(loadlayout(layout))