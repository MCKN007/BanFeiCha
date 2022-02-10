require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.graphics.Color"
import "android.graphics.PorterDuff"
import "android.graphics.Paint"
activity.setTitle('班费查小游戏 飞机大战')
--activity.setTheme(android.R.style.Theme_Holo_Light)
activity.setContentView(loadlayout({
  RelativeLayout;
  layout_width="fill";
  background="#fe000000";
  layout_height="fill";
  id="back";
}))

count = 0
--画面刷新次数

config = {
  air_width = 160,
  air_height = 320,
  --飞机宽高

  pop_width = 50,
  pop_height = 100,
  --子弹宽高

  ene_width = 160,
  ene_height = 320,
  --敌人宽高
}
--相关配置

pos = {
  x = 400,
  y = 1000,
  size = {config.air_width,config.air_height}
}
--记录飞机位置

enes = {
  {x=100,y=0,speed={0,1}}
}
--敌人

pops = {
}




--分数
score = {
  kill = 0,
}






back.onTouch = function(v,e)
  pos.x = e.x-75
  pos.y =e.y-160
  return true
end

function daf(c)
  --核心：绘制函数

  local width = c.getWidth()
  local height = c.getHeight()

  --c.drawColor(Color.TRANSPARENT,PorterDuff.Mode.CLEAR);
  local pa = Paint()
  pa.setColor(0xFF0000ff)
  pa.setStyle(pa.style.FILL)
  c.drawRect(pos.x,pos.y,pos.x+config.air_width,pos.y+config.air_height,pa)
  pa.setTextSize(50)
  pa.setColor(0xFFFFFFFF)
  c.drawText("飞机",pos.x+30,pos.y+160,pa)

  for k,ep in pairs(pops) do

    if ep.from == "e" then
      pa.setColor(0xFFFF0000)
     else
      pa.setColor(0xFF0000FF)
    end

    --绘制子弹
    c.drawRect(ep.x,ep.y,ep.x+ep.size[1],ep.y+ep.size[2],pa)

    respeed(ep)

    ep.from = ep.from or "a"


    if checkscreen(ep,width,height) then
      table.remove(pops,k)
    end

    for k,en in pairs(enes) do
      if isBit(ep,en) and ep.from == "a" then
        table.remove(enes,k)
        score.kill = score.kill + 1
      end
    end

    if isBit(ep,pos) then
      if ep.from == "e" then
        --失败
        activity.finish()
      end
    end
  end

  pa.setColor(0xFF00FF00)

  for k,ep in pairs(enes) do

    --绘制敌人

    c.drawRect(ep.x,ep.y,ep.x+ep.size[1],ep.y+ep.size[2],pa)

    respeed(ep)

    pa.setColor(0xFFFFFFFF)
    c.drawText("敌人",ep.x+30,ep.y+160,pa)

    pa.setColor(0xFF00FF00)
    if checkscreen(ep,width,height) then
      table.remove(enes,k)
    end

    if isBit(ep,pos) then
      activity.finish()
    end



  end

  --分数
  pa.setColor(0xFF000000)
  pa.setTextSize(50)
  c.drawText("得分: "..score.kill, 50, 80, pa)


  return c
end

da = LuaDrawable(daf)
back.setBackground(da)

function ffi()
  back.invalidate()
  count = count + 1

  if count >= 20000 then
    count = 0
  end

  if count % 35 == 0 then
    shut({x = pos.x + (config.air_width/2),y= pos.y + (config.air_height/2),from = "a",speed={0,-20}})

    for k,en in pairs(enes) do
      shut({x = en.x + (en.size[1]/2),y = en.y + (en.size[2]*1.2),from = "e",speed={0,20}})
    end

  end

  if count % 50 == 0 then
    --生成新敌人
    local en = {}
    en.x = math.random(1,2000)
    en.y = 0
    en.speed = {math.random(-20,20),math.random(1,20)}
    en.size = {config.ene_width,config.ene_height}
    table.insert(enes,en)
  end
end

function fi()
  call("ffi")
end

gt = timer(fi,100,10)
--刷新画面

function respeed(en)
  --反应速度
  en.x = en.x + en.speed[1]
  en.y = en.y + en.speed[2]
end

function checkscreen(en,w,h)
  --检查是否超出屏幕

  if (en.x > w or en.x < 0) or (en.y>h or en.y < 0) then
    return true
   else
    return false
  end
end

function loadpos()
  --加载属性
  for k,en in pairs(pops) do
    if not en.size then
      en.size = {}
      en.size[1] = config.pop_width
      en.size[2] = config.pop_height
    end
  end

  for k,en in ipairs(enes) do
    if not en.size then
      en.size = {}
      en.size[1] = config.ene_width
      en.size[2] = config.ene_height
    end
  end
end

function isBit(en1,en2)
  --判断碰撞
  local po1 = {en1.x,en1.y}
  --一号左上点

  local po2 = {en1.x+en1.size[1],en1.y+en1.size[2]}
  --一号右下点

  --local po3 = {en2.x,en2.y}
  --二号左上点

  --local po4 = {en2.x+en2.size[1],en2.y+en2.size[2]}
  --二号右下点

  local po4 = {en2.x+en2.size[1],en2.y}
  --二号左下点

  if (po1[1] > en2.x and po1[1] < en2.x+en2.size[1]) and (po1[2] > en2.y and po1[2] < en2.y + en2.size[2]) then
    return true
  end

  if (po2[1] > en2.x and po2[1] < en2.x+en2.size[1]) and (po2[2] > en2.y and po2[2] < en2.y + en2.size[2]) then
    return true
  end

  if (po4[1] > en2.x and po4[1] < en2.x+en2.size[1]) and (po4[2] > en2.y and po4[2] < en2.y + en2.size[2]) then
    return true
  end

  return false
end

loadpos()
function onStop()
  gt.stop()
end

function shut(o)
  local o = o or {}
  local en = o or {}
  en.size = o.size or {config.pop_width,config.pop_height}
  en.speed = o.speed or {0,0}
  en.x = o.x or 0
  en.y = o.y or 0
  table.insert(pops,en)
end
