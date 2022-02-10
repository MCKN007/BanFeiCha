require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"

activity.setTheme(android.R.style.Theme_DeviceDefault)--设置主题

activity.setContentView(loadlayout("fimg"))
aad=...
img.setImageBitmap(loadbitmap(aad))