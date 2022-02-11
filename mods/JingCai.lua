function steepin(col)
  import "android.view.WindowManager"
  import "android.view.View"
  activity.overridePendingTransition(android.R.anim.fade_in,android.R.anim.fade_out)
  activity.getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN | View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR);
  activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(col);
end
function Status_bar()
  local h=activity.getResources().getDimensionPixelSize(luajava.bindClass("com.android.internal.R$dimen")().status_bar_height)
  return h
end
function fakeboldtext(view)
  view.getPaint().setFakeBoldText(true)
end
function ripplehelper(view,col)
  RippleHelper(view).RippleColor=col
end