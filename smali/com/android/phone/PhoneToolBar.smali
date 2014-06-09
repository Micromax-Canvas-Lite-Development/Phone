.class public Lcom/android/phone/PhoneToolBar;
.super Landroid/widget/LinearLayout;
.source "PhoneToolBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final EVENT_HEADSET_PLUG_STATE_CHANGED:I = 0x65

.field public static IS_CLOSED_BY_USER:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneToolBar"

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field private static final VDBG:Z


# instance fields
.field private mAlreadyRegisterReceiver:Z

.field private mBackButton:Landroid/widget/ImageButton;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallCard:Lcom/android/phone/BannerCallCard;

.field private mClickThreshold:F

.field private mCloseButton:Landroid/widget/ImageView;

.field mContext:Landroid/content/Context;

.field private mEndButton:Landroid/widget/ImageButton;

.field private mHandler:Landroid/os/Handler;

.field mInCallTouchUi:Lcom/android/phone/BannerInCallTouchUi;

.field private mMuteButton:Landroid/widget/CompoundButton;

.field mNoUIInCallScreen:Lcom/android/phone/FakeInCallScreen;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSpeakerButton:Landroid/widget/CompoundButton;

.field private mStatusBarHeight:F

.field private mTouchStartX:F

.field private mTouchStartY:F

.field mView:Landroid/view/View;

.field private wm:Landroid/view/WindowManager;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneToolBar;->IS_CLOSED_BY_USER:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneToolBar;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 48
    invoke-virtual {p0}, Lcom/android/phone/PhoneToolBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/phone/PhoneToolBar;->wm:Landroid/view/WindowManager;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhoneToolBar;->mNoUIInCallScreen:Lcom/android/phone/FakeInCallScreen;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/PhoneToolBar;->mStatusBarHeight:F

    .line 63
    const/high16 v0, 0x41200000

    iput v0, p0, Lcom/android/phone/PhoneToolBar;->mClickThreshold:F

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneToolBar;->mAlreadyRegisterReceiver:Z

    .line 277
    new-instance v0, Lcom/android/phone/PhoneToolBar$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneToolBar$2;-><init>(Lcom/android/phone/PhoneToolBar;)V

    iput-object v0, p0, Lcom/android/phone/PhoneToolBar;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 298
    new-instance v0, Lcom/android/phone/PhoneToolBar$3;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneToolBar$3;-><init>(Lcom/android/phone/PhoneToolBar;)V

    iput-object v0, p0, Lcom/android/phone/PhoneToolBar;->mHandler:Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lcom/android/phone/PhoneToolBar;->mContext:Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Lcom/android/phone/PhoneToolBar;->init()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneToolBar;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneToolBar;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneToolBar;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneToolBar;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneToolBar;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "init()"

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneToolBar;->log(Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/android/phone/PhoneToolBar;->initBannerLayoutParams()V

    .line 75
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneToolBar;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 76
    new-instance v0, Lcom/android/phone/FakeInCallScreen;

    invoke-direct {v0}, Lcom/android/phone/FakeInCallScreen;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneToolBar;->mNoUIInCallScreen:Lcom/android/phone/FakeInCallScreen;

    .line 77
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->mNoUIInCallScreen:Lcom/android/phone/FakeInCallScreen;

    iget-object v1, p0, Lcom/android/phone/PhoneToolBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/phone/FakeInCallScreen;->setContext(Landroid/content/Context;)V

    .line 78
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->mNoUIInCallScreen:Lcom/android/phone/FakeInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/FakeInCallScreen;->noUiCreate()V

    .line 79
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->mNoUIInCallScreen:Lcom/android/phone/FakeInCallScreen;

    invoke-virtual {v0, p0}, Lcom/android/phone/FakeInCallScreen;->setPhoneToolBar(Lcom/android/phone/PhoneToolBar;)V

    .line 80
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneToolBar;->initUI(Landroid/content/Context;)V

    .line 81
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->mNoUIInCallScreen:Lcom/android/phone/FakeInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/FakeInCallScreen;->noUiResume()V

    .line 82
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/phone/PhoneToolBar;->mStatusBarHeight:F

    .line 84
    invoke-virtual {p0}, Lcom/android/phone/PhoneToolBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/phone/PhoneToolBar;->mClickThreshold:F

    .line 86
    return-void
.end method

.method private initBannerLayoutParams()V
    .locals 8

    .prologue
    const/high16 v7, 0x7f070000

    .line 114
    const-string v5, "initBannerLayoutParams()"

    invoke-direct {p0, v5}, Lcom/android/phone/PhoneToolBar;->log(Ljava/lang/String;)V

    .line 115
    iget-object v5, p0, Lcom/android/phone/PhoneToolBar;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x7d7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 116
    iget-object v5, p0, Lcom/android/phone/PhoneToolBar;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v6, 0x1

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 117
    iget-object v5, p0, Lcom/android/phone/PhoneToolBar;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x28

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 119
    iget-object v5, p0, Lcom/android/phone/PhoneToolBar;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x33

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 120
    invoke-virtual {p0}, Lcom/android/phone/PhoneToolBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 122
    .local v0, "bannerHeight":I
    invoke-virtual {p0}, Lcom/android/phone/PhoneToolBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 124
    .local v1, "bannerWidth":I
    iget-object v5, p0, Lcom/android/phone/PhoneToolBar;->wmParams:Landroid/view/WindowManager$LayoutParams;

    div-int/lit8 v6, v0, 0x2

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 125
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 126
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/phone/PhoneToolBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 127
    .local v4, "w":Landroid/view/WindowManager;
    iget-object v5, p0, Lcom/android/phone/PhoneToolBar;->wm:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 128
    .local v2, "display":Landroid/view/Display;
    iget-object v5, p0, Lcom/android/phone/PhoneToolBar;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 129
    iget-object v5, p0, Lcom/android/phone/PhoneToolBar;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/phone/PhoneToolBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 131
    iget-object v5, p0, Lcom/android/phone/PhoneToolBar;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x2

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 132
    return-void
.end method

.method private initUI(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const-string v0, "initUI()"

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneToolBar;->log(Ljava/lang/String;)V

    .line 90
    const v0, 0x7f040021

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneToolBar;->mView:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneToolBar;->addView(Landroid/view/View;)V

    .line 92
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->mView:Landroid/view/View;

    const v1, 0x7f0b0016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PhoneToolBar;->mBackButton:Landroid/widget/ImageButton;

    .line 93
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->mView:Landroid/view/View;

    const v1, 0x7f0b0035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/PhoneToolBar;->mCloseButton:Landroid/widget/ImageView;

    .line 95
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f0b00aa

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneToolBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BannerCallCard;

    iput-object v0, p0, Lcom/android/phone/PhoneToolBar;->mCallCard:Lcom/android/phone/BannerCallCard;

    .line 97
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->mCallCard:Lcom/android/phone/BannerCallCard;

    iget-object v1, p0, Lcom/android/phone/PhoneToolBar;->mNoUIInCallScreen:Lcom/android/phone/FakeInCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/BannerCallCard;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 98
    const v0, 0x7f0b00ab

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneToolBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BannerInCallTouchUi;

    iput-object v0, p0, Lcom/android/phone/PhoneToolBar;->mInCallTouchUi:Lcom/android/phone/BannerInCallTouchUi;

    .line 99
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->mInCallTouchUi:Lcom/android/phone/BannerInCallTouchUi;

    iget-object v1, p0, Lcom/android/phone/PhoneToolBar;->mNoUIInCallScreen:Lcom/android/phone/FakeInCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/BannerInCallTouchUi;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 100
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->mNoUIInCallScreen:Lcom/android/phone/FakeInCallScreen;

    iget-object v1, p0, Lcom/android/phone/PhoneToolBar;->mInCallTouchUi:Lcom/android/phone/BannerInCallTouchUi;

    invoke-virtual {v0, v1}, Lcom/android/phone/FakeInCallScreen;->setInCallTouchUi(Lcom/android/phone/BannerInCallTouchUi;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/phone/PhoneToolBar;->refreshScreen()V

    .line 102
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 212
    return-void
.end method

.method private updateViewPosition()V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/phone/PhoneToolBar;->x:F

    iget v2, p0, Lcom/android/phone/PhoneToolBar;->mTouchStartX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 182
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/phone/PhoneToolBar;->y:F

    iget v2, p0, Lcom/android/phone/PhoneToolBar;->mTouchStartY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 183
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/phone/PhoneToolBar;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    return-void
.end method


# virtual methods
.method public getCallCard()Lcom/android/phone/BannerCallCard;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->mCallCard:Lcom/android/phone/BannerCallCard;

    return-object v0
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/phone/PhoneToolBar;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->wmParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 195
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 197
    :sswitch_0
    const-string v1, "click R.id.backButton"

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneToolBar;->log(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/phone/PhoneToolBar;->showInCallScreen()V

    goto :goto_0

    .line 201
    :sswitch_1
    const-string v1, "click R.id.closeButton"

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneToolBar;->log(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/phone/PhoneToolBar;->onPause()V

    .line 203
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/phone/PhoneToolBar;->IS_CLOSED_BY_USER:Z

    goto :goto_0

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0016 -> :sswitch_0
        0x7f0b0035 -> :sswitch_1
    .end sparse-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 139
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/phone/PhoneToolBar;->mTouchStartX:F

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/phone/PhoneToolBar;->mTouchStartY:F

    .line 143
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/PhoneToolBar;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_0

    .line 145
    iget v1, p0, Lcom/android/phone/PhoneToolBar;->mTouchStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/phone/PhoneToolBar;->mClickThreshold:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/android/phone/PhoneToolBar;->mTouchStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/phone/PhoneToolBar;->mClickThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 147
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 152
    :pswitch_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/PhoneToolBar;->mTouchStartY:F

    iput v1, p0, Lcom/android/phone/PhoneToolBar;->mTouchStartX:F

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 251
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneToolBar;->log(Ljava/lang/String;)V

    .line 252
    iget-boolean v0, p0, Lcom/android/phone/PhoneToolBar;->mAlreadyRegisterReceiver:Z

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "unregisterReceiver ACTION_HEADSET_PLUG"

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneToolBar;->log(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/phone/PhoneToolBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneToolBar;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneToolBar;->mAlreadyRegisterReceiver:Z

    .line 258
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneToolBar;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->mNoUIInCallScreen:Lcom/android/phone/FakeInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/FakeInCallScreen;->noUiPause()V

    .line 260
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 263
    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneToolBar;->log(Ljava/lang/String;)V

    .line 264
    iget-boolean v0, p0, Lcom/android/phone/PhoneToolBar;->mAlreadyRegisterReceiver:Z

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/phone/PhoneToolBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneToolBar;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 267
    const-string v0, "registerReceiver ACTION_HEADSET_PLUG"

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneToolBar;->log(Ljava/lang/String;)V

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/PhoneToolBar;->mAlreadyRegisterReceiver:Z

    .line 271
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneToolBar;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->mNoUIInCallScreen:Lcom/android/phone/FakeInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/FakeInCallScreen;->noUiResume()V

    .line 273
    invoke-virtual {p0}, Lcom/android/phone/PhoneToolBar;->refreshScreen()V

    .line 274
    invoke-virtual {p0}, Lcom/android/phone/PhoneToolBar;->startAlphaAmination()V

    .line 275
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/phone/PhoneToolBar;->x:F

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/android/phone/PhoneToolBar;->mStatusBarHeight:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/phone/PhoneToolBar;->y:F

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 164
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/phone/PhoneToolBar;->mTouchStartX:F

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/phone/PhoneToolBar;->mTouchStartY:F

    .line 166
    const-string v0, "startP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/PhoneToolBar;->mTouchStartX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "====startY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/PhoneToolBar;->mTouchStartY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/PhoneToolBar;->updateViewPosition()V

    goto :goto_0

    .line 174
    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/PhoneToolBar;->mTouchStartY:F

    iput v0, p0, Lcom/android/phone/PhoneToolBar;->mTouchStartX:F

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public refreshScreen()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "refreshScreen()"

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneToolBar;->log(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->mInCallTouchUi:Lcom/android/phone/BannerInCallTouchUi;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->mInCallTouchUi:Lcom/android/phone/BannerInCallTouchUi;

    iget-object v1, p0, Lcom/android/phone/PhoneToolBar;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/BannerInCallTouchUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 108
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->mInCallTouchUi:Lcom/android/phone/BannerInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/BannerInCallTouchUi;->hideUnSupportButton()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar;->mCallCard:Lcom/android/phone/BannerCallCard;

    iget-object v1, p0, Lcom/android/phone/PhoneToolBar;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/BannerCallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 111
    return-void
.end method

.method public resetFlag()V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneToolBar;->IS_CLOSED_BY_USER:Z

    .line 314
    return-void
.end method

.method public showInCallScreen()V
    .locals 7

    .prologue
    .line 239
    const-string v3, "showInCallScreen()"

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneToolBar;->log(Ljava/lang/String;)V

    .line 241
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->createInCallIntent(Z)Landroid/content/Intent;

    move-result-object v1

    .line 242
    .local v1, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/phone/PhoneToolBar;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/phone/PhoneToolBar;->getMeasuredHeight()I

    move-result v6

    invoke-static {p0, v3, v4, v5, v6}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 244
    .local v2, "ops":Landroid/app/ActivityOptions;
    iget-object v3, p0, Lcom/android/phone/PhoneToolBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ops":Landroid/app/ActivityOptions;
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "PhoneToolBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showincallscreen error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startAlphaAmination()V
    .locals 3

    .prologue
    .line 215
    const-string v1, "startAlphaAmination()"

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneToolBar;->log(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/android/phone/PhoneToolBar;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneToolBar;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/phone/PhoneToolBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050007

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 224
    .local v0, "multiAnim":Landroid/view/animation/Animation;
    :goto_0
    new-instance v1, Lcom/android/phone/PhoneToolBar$1;

    invoke-direct {v1, p0}, Lcom/android/phone/PhoneToolBar$1;-><init>(Lcom/android/phone/PhoneToolBar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 235
    iget-object v1, p0, Lcom/android/phone/PhoneToolBar;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 236
    return-void

    .line 221
    .end local v0    # "multiAnim":Landroid/view/animation/Animation;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneToolBar;->mContext:Landroid/content/Context;

    const v2, 0x7f050006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "multiAnim":Landroid/view/animation/Animation;
    goto :goto_0
.end method
