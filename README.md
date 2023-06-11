# 班费查询程序
##开发者 MCKN007(MCBBS_007)
##开发语言 使用了lua语言编写，需要通过androlua编译
##代码介绍
软件启动时会先显示welcome.png这个图片，然后加载main.lua的页面maine.lua只是入口函数，他会加载passwd.aly这个文件，这是一个布局文件，然后通过输入确认码就可以加载其他文件比如main1.lua或者main2.lua文件，这两个文件的页面大部分相同，输入root可以进入管理员模式，之后主页面设计的类似于微信，这是为了方便用户的使用，点击你要查看的人就会调用otxt.lua里面的函数去打开txt文本，但是只能加载UTF.8的文本，在使用函数时需要导入文件import "mson"，然后才能使用，root_cuizhai.lua是调用系统给欠债人员发送短信，ChineseFunction.lua是中文函数,wuzi.lua是五子棋小游戏，xiaoyx.lua是绘制出来的飞机大战游戏ss.lua是宿舍的布局文件和操作程序，Page文件夹里面存放了四个页面的布局文件，main1.lua加载的就是page1.aly这个文件，你可以进行小的修改，page2.aly文件就是存放的匿名举报的页面，page3.lua存放的是第三个页面的文件，也就是小功能最多的页面，一般情况下main1.lua在启动时会一下在全部加载文件，这个会造成些许卡顿，而如果有一个文件出错就会导致软件直接启动失败，XiaoYan文件夹存放的是人们的头像，这都是从微信下载的，MingDan这个文件存放的是每个人的班费信息，LiuJing这个文件夹存放的是宿舍人员信息Gobang是五子棋黑子和白子的返回信息，Chenyulu是存放刘慈欣小说的文件夹
## 捐赠
![WXJZ](https://user-images.githubusercontent.com/88782291/210489221-7b7c9592-68e9-43c7-93b4-62280cc3266b.jpg)
