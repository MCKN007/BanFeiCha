
{
  LinearLayout;
  layout_height="fill";
  layout_width="fill";
  orientation="vertical";
  background="#FFEDEDED";
  {
    LinearLayout;
    layout_height="wrap_content";
    layout_width="fill";
    orientation="vertical";
    {
      LinearLayout;
      layout_height=Status_bar();
    },
    {
      LinearLayout;
      layout_height="48dp";
      layout_width="fill";
      orientation="horizontal";
      {
        FrameLayout;
        id="search_back";
        layout_height="fill";
        layout_width="40dp";
        {
          ImageView;
          layout_height="20dp";
          layout_width="20dp";
          layout_gravity="center";
          colorFilter="#ff000000";
          src="Image/icon/back.png";
        }
      },
      {
        EditText;
        id="search_txt";
        hint="查询";
        textSize="17dp";
        textColor="#ff000000";
        hintTextColor="#FFCACACA";
        layout_height="fill";
        layout_width="fill";
        layout_weight="1";
        singleLine=true;
        background="#00000000";
      },
      {
        FrameLayout;
        id="search_txt_delate";
        Visibility="gone";
        layout_height="fill";
        layout_width="40dp";
        {
          ImageView;
          layout_height="16dp";
          layout_width="16dp";
          layout_gravity="center";
          colorFilter="#FFAEAEAE";
          src="Image/icon/delate.png";
        }
      },
    },
    {
      LinearLayout;
      layout_height="1";
      layout_width="fill";
      background="#28000000";
    },
    {
      TextView;
      text="查询以下内容";
      textSize="13.8dp";
      textColor="#FFB3B3B3";
      layout_height="56dp";
      layout_width="fill";
      gravity="center";
    },
    {
      LinearLayout;
      layout_height="46dp";
      layout_width="fill";
      orientation="horizontal";
      {
        TextView;
        text="211宿舍";
        textSize="13.8dp";
        textColor="#FF596B8F";
        layout_height="fill";
        layout_width="fill";
        layout_weight="1";
        gravity="center";
        id="S211";
      },
      {
        FrameLayout;
        layout_height="fill";
        layout_width="1";
        {
          LinearLayout;
          layout_height="20dp";
          layout_width="1";
          layout_gravity="center";
          background="#FFdedede";
        }
      },
      {
        TextView;
        text="212宿舍";
        textSize="13.8dp";
        textColor="#FF596B8F";
        layout_height="fill";
        layout_width="fill";
        layout_weight="1";
        gravity="center";
        id="S212";
      },
      {
        FrameLayout;
        layout_height="fill";
        layout_width="1";
        {
          TextView;
          layout_height="20dp";
          layout_width="fill";
          layout_gravity="center";
          background="#ffdddddd";
        }
      },
      {
        TextView;
        text="213宿舍";
        textSize="13.8dp";
        textColor="#FF596B8F";
        layout_height="fill";
        layout_width="fill";
        layout_weight="1";
        gravity="center";
        id="S213";
      },
    },
    {
      LinearLayout;
      layout_height="46dp";
      layout_width="fill";
      orientation="horizontal";
      {
        TextView;
        text="122宿舍";
        textSize="13.8dp";
        textColor="#FF596B8F";
        layout_height="fill";
        layout_width="fill";
        layout_weight="1";
        gravity="center";
        id="S122";
      },
      {
        FrameLayout;
        layout_height="fill";
        layout_width="1";
        {
          LinearLayout;
          layout_height="20dp";
          layout_width="1";
          layout_gravity="center";
          background="#FFdedede";
        }
      },
      {
        TextView;
        text="123宿舍";
        textSize="13.8dp";
        textColor="#FF596B8F";
        layout_height="fill";
        layout_width="fill";
        layout_weight="1";
        gravity="center";
        id="S123";
      },
      {
        FrameLayout;
        layout_height="fill";
        layout_width="1";
        {
          TextView;
          layout_height="20dp";
          layout_width="fill";
          layout_gravity="center";
          background="#ffdddddd";
        }
      },
      {
        TextView;
        text="124宿舍";
        textSize="13.8dp";
        textColor="#FF596B8F";
        layout_height="fill";
        layout_width="fill";
        layout_weight="1";
        gravity="center";
        id="S124";
      },
    },
  },
  {
    FrameLayout;
    id="elsarea";
    layout_height="fill";
    layout_width="fill";
    {
      LinearLayout;
      id="voice_box";
      layout_height="wrap_content";
      layout_width="wrap_content";
      layout_marginTop="-66dp";
      layout_gravity="center";
      orientation="vertical";
      {
        ImageView;
        layout_height="50dp";
        layout_width="50dp";
        scaleType="fitXY";
        src="Image/icon/voice.png";
      },
      {
        TextView;
        text="";
        textSize="11dp";
        textColor="#FFA6A6A6";
        layout_height="30dp";
        layout_width="fill";
        gravity="center";
      },
    }
  }
}