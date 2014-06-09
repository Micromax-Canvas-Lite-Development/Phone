.class public Lcom/android/phone/BannerCallCard;
.super Landroid/widget/LinearLayout;
.source "BannerCallCard.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/CallTime$OnTickListener;
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BannerCallCard$4;,
        Lcom/android/phone/BannerCallCard$CallInfoCookie;,
        Lcom/android/phone/BannerCallCard$AsyncLoadCookie;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "BannerCallCard"

.field private static final MESSAGE_DELAY:I = 0x1f4

.field private static final MESSAGE_SHOW_UNKNOWN_PHOTO:I = 0x65

.field private static final PRIMARY_CALL_BANNER:I = 0x0

.field private static final SECONDARY_CALL_BANNER:I = 0x1

.field private static final SECOND_HOLD_CALL_BANNER:I = 0x2

.field private static final TOKEN_DO_NOTHING:I = 0x1

.field private static final TOKEN_UPDATE_PHOTO_FOR_CALL_STATE:I

.field private static mLCforUserData:Z

.field private static mLCforUserDataHoldCall:Z

.field private static mLCforUserDataSecondHoldCall:Z

.field private static mLocaleChanged:Z


# instance fields
.field callCardListener:Landroid/view/View$OnClickListener;

.field private m2ndHoldCallBanner:Landroid/view/ViewGroup;

.field m2ndHoldName:Landroid/widget/TextView;

.field m2ndHoldState:Landroid/widget/TextView;

.field private m2ndIncomingCallBanner:Landroid/view/ViewGroup;

.field m2ndIncomingName:Landroid/widget/TextView;

.field m2ndIncomingState:Landroid/widget/TextView;

.field mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mApplication:Lcom/android/phone/PhoneGlobals;

.field private mCallBannerSidePadding:I

.field private mCallBannerTopBottomPadding:I

.field private mCallInfoContainer:Landroid/view/ViewGroup;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mDensity:F

.field mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

.field private mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

.field private mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingCall2Info:Landroid/view/ViewGroup;

.field private mIncomingCall2PhotoDimEffect:Landroid/view/View;

.field private mIncomingCallInfoHeight:I

.field private mIncomingCallInfoTopMargin:I

.field private mIncomingCallInfoWidth:I

.field private mIncomingCallWidgetHintColorResId:I

.field private mIncomingCallWidgetHintTextResId:I

.field private mLabel:Landroid/widget/TextView;

.field private mLoadingPersonUri:Landroid/net/Uri;

.field private mName:Landroid/widget/TextView;

.field private mNeedShowIncomingCall2Animator:Z

.field private mOperatorName:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoneNumberGeoDescription:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoDimEffect:Landroid/view/View;

.field private mPhotoHoldPre:Landroid/widget/ImageView;

.field private mPhotoIncomingPre:Landroid/widget/ImageView;

.field private mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryCallInfo:Landroid/view/ViewGroup;

.field private mProviderAddress:Landroid/widget/TextView;

.field private mProviderInfo:Landroid/view/ViewGroup;

.field private mProviderLabel:Landroid/widget/TextView;

.field private mSecondaryCallBanner:Landroid/view/ViewGroup;

.field private mSecondaryCallInfo:Landroid/view/ViewStub;

.field private mSecondaryCallName:Landroid/widget/TextView;

.field private mSecondaryCallPhoto:Landroid/widget/ImageView;

.field private mSecondaryCallPhotoDimEffect:Landroid/view/View;

.field private mSecondaryCallStatus:Landroid/widget/TextView;

.field private mSecondaryInfoContainer:Landroid/view/ViewGroup;

.field private mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

.field private mShowAnimator2End:I

.field private mShowSwtchCall2Animator:Z

.field private mSimBorderMap:[I

.field mSimCardImage:Landroid/widget/ImageView;

.field private mSimColorMap:[I

.field private mSimIndicator:Landroid/widget/TextView;

.field private mSimIndicatorPaddingLeft:I

.field private mSimIndicatorPaddingRight:I

.field private mSimInfo:Landroid/provider/Telephony$SIMInfo;

.field private mTextColorCallTypeSip:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2515
    sput-boolean v0, Lcom/android/phone/BannerCallCard;->mLocaleChanged:Z

    .line 2516
    sput-boolean v0, Lcom/android/phone/BannerCallCard;->mLCforUserData:Z

    .line 2517
    sput-boolean v0, Lcom/android/phone/BannerCallCard;->mLCforUserDataHoldCall:Z

    .line 2519
    sput-boolean v0, Lcom/android/phone/BannerCallCard;->mLCforUserDataSecondHoldCall:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 204
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 185
    new-instance v0, Lcom/android/phone/BannerCallCard$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BannerCallCard$1;-><init>(Lcom/android/phone/BannerCallCard;)V

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mHandler:Landroid/os/Handler;

    .line 2521
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mSimColorMap:[I

    .line 2525
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mSimBorderMap:[I

    .line 2565
    iput v1, p0, Lcom/android/phone/BannerCallCard;->mShowAnimator2End:I

    .line 3832
    new-instance v0, Lcom/android/phone/BannerCallCard$2;

    invoke-direct {v0, p0}, Lcom/android/phone/BannerCallCard$2;-><init>(Lcom/android/phone/BannerCallCard;)V

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->callCardListener:Landroid/view/View$OnClickListener;

    .line 3945
    new-instance v0, Lcom/android/phone/BannerCallCard$3;

    invoke-direct {v0, p0}, Lcom/android/phone/BannerCallCard$3;-><init>(Lcom/android/phone/BannerCallCard;)V

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 206
    const-class v0, Lcom/mediatek/common/telephony/IServiceStateExt;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/IServiceStateExt;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    .line 211
    const-string v0, "CallCard constructor..."

    invoke-static {v0}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- context "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attrs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    .line 222
    new-instance v0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    .line 224
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/BannerCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/phone/BannerCallCard;->mDensity:F

    .line 229
    invoke-virtual {p0}, Lcom/android/phone/BannerCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/BannerCallCard;->mCallBannerSidePadding:I

    .line 231
    invoke-virtual {p0}, Lcom/android/phone/BannerCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/BannerCallCard;->mCallBannerTopBottomPadding:I

    .line 233
    invoke-virtual {p0}, Lcom/android/phone/BannerCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/BannerCallCard;->mSimIndicatorPaddingLeft:I

    .line 235
    invoke-virtual {p0}, Lcom/android/phone/BannerCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/BannerCallCard;->mSimIndicatorPaddingRight:I

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Density: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/BannerCallCard;->mDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 239
    return-void

    .line 2521
    :array_0
    .array-data 4
        0x7f02010c
        0x7f02010d
        0x7f02010e
        0x7f02010f
    .end array-data

    .line 2525
    :array_1
    .array-data 4
        0x7f0200f4
        0x7f0200f7
        0x7f0200f5
        0x7f0200f8
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/BannerCallCard;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BannerCallCard;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/ImageView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ImageView;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-static {p0, p1}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/BannerCallCard;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BannerCallCard;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/phone/BannerCallCard;->mIncomingCallInfoTopMargin:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/BannerCallCard;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BannerCallCard;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mIncomingCall2Info:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/BannerCallCard;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BannerCallCard;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/phone/BannerCallCard;->mNeedShowIncomingCall2Animator:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/phone/BannerCallCard;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BannerCallCard;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/phone/BannerCallCard;->mNeedShowIncomingCall2Animator:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/BannerCallCard;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BannerCallCard;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/phone/BannerCallCard;->mShowSwtchCall2Animator:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/BannerCallCard;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BannerCallCard;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/phone/BannerCallCard;->mShowSwtchCall2Animator:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/BannerCallCard;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BannerCallCard;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/phone/BannerCallCard;->displaySwitchIncomingAnimator()V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/BannerCallCard;)Lcom/android/phone/InCallScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BannerCallCard;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/BannerCallCard;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BannerCallCard;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/BannerCallCard;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BannerCallCard;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/phone/BannerCallCard;->mShowAnimator2End:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/BannerCallCard;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BannerCallCard;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/android/phone/BannerCallCard;->mShowAnimator2End:I

    return p1
.end method

.method static synthetic access$708(Lcom/android/phone/BannerCallCard;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/phone/BannerCallCard;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/phone/BannerCallCard;->mShowAnimator2End:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/BannerCallCard;->mShowAnimator2End:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/BannerCallCard;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BannerCallCard;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/phone/BannerCallCard;->mIncomingCallInfoWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/BannerCallCard;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BannerCallCard;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/phone/BannerCallCard;->mIncomingCallInfoHeight:I

    return v0
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 2484
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 2485
    .local v0, "eventText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2486
    .local v1, "size":I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2488
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2489
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2491
    :cond_0
    return-void
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 22
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;
    .param p2, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayMainCallStatus(call "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 757
    if-nez p2, :cond_1

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayMainCallStatus(call "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 769
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/BannerCallCard;->updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V

    .line 773
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/BannerCallCard;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v19

    .line 774
    .local v19, "simInfo":Landroid/provider/Telephony$SIMInfo;
    if-eqz v19, :cond_5

    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_5

    .line 776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mSimCardImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mSimCardImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 778
    :cond_2
    move-object/from16 v0, v19

    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v2, :cond_4

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mSimCardImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mSimCardImage:Landroid/widget/ImageView;

    const v4, 0x7f020015

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 801
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/BannerCallCard;->updateCallBannerBackground(Lcom/android/internal/telephony/Call;Landroid/view/ViewGroup;)V

    .line 815
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 817
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/BannerCallCard;->updateDisplayForConference(Lcom/android/internal/telephony/Call;)V

    .line 965
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/BannerCallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;Landroid/widget/ImageView;)V

    .line 970
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BannerCallCard;->mIncomingCallWidgetHintTextResId:I

    if-eqz v2, :cond_0

    .line 972
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BannerCallCard;->mIncomingCallWidgetHintTextResId:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BannerCallCard;->mIncomingCallWidgetHintColorResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mLabel:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 782
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mSimCardImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mSimCardImage:Landroid/widget/ImageView;

    const v4, 0x7f020016

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 786
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mSimCardImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mSimCardImage:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 821
    :cond_6
    const/4 v7, 0x0

    .line 822
    .local v7, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v17

    .line 823
    .local v17, "phoneType":I
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_7

    .line 824
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 833
    :goto_3
    if-nez v7, :cond_a

    .line 835
    const-string v2, "displayMainCallStatus: connection is null, using default values."

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 840
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 842
    .local v3, "info":Lcom/android/internal/telephony/CallerInfo;
    sget v4, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/BannerCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 825
    .end local v3    # "info":Lcom/android/internal/telephony/CallerInfo;
    :cond_7
    const/4 v2, 0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_8

    const/4 v2, 0x3

    move/from16 v0, v17

    if-ne v0, v2, :cond_9

    .line 827
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    goto :goto_3

    .line 829
    :cond_9
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 846
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - CONN: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", state = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v10

    .line 851
    .local v10, "presentation":I
    const/16 v18, 0x1

    .line 852
    .local v18, "runQuery":Z
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v15

    .line 853
    .local v15, "o":Ljava/lang/Object;
    instance-of v2, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_f

    .line 854
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BannerCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object v2, v15

    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v2, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v4, v2}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v18

    .line 863
    :goto_4
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_d

    .line 864
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v16

    .line 865
    .local v16, "obj":Ljava/lang/Object;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v21

    .line 866
    .local v21, "updatedNumber":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v20

    .line 867
    .local v20, "updatedCnapName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 868
    .restart local v3    # "info":Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_10

    move-object v2, v15

    .line 869
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 874
    :cond_b
    :goto_5
    if-eqz v3, :cond_d

    .line 875
    if-eqz v21, :cond_c

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 878
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- displayMainCallStatus: updatedNumber = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 880
    const/16 v18, 0x1

    .line 882
    :cond_c
    if-eqz v20, :cond_d

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- displayMainCallStatus: updatedCnapName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 887
    const/16 v18, 0x1

    .line 892
    .end local v3    # "info":Lcom/android/internal/telephony/CallerInfo;
    .end local v16    # "obj":Ljava/lang/Object;
    .end local v20    # "updatedCnapName":Ljava/lang/String;
    .end local v21    # "updatedNumber":Ljava/lang/String;
    :cond_d
    if-eqz v18, :cond_12

    .line 894
    const-string v2, "- displayMainCallStatus: starting CallerInfo query..."

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 896
    sget-boolean v2, Lcom/android/phone/BannerCallCard;->mLCforUserData:Z

    if-eqz v2, :cond_e

    .line 898
    const-string v2, "- displayMainCallStatus: the language changed to clear userdata"

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 899
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->clearUserData()V

    .line 900
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/BannerCallCard;->mLCforUserData:Z

    .line 903
    :cond_e
    new-instance v14, Lcom/android/phone/BannerCallCard$CallInfoCookie;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v14, v0, v1, v2}, Lcom/android/phone/BannerCallCard$CallInfoCookie;-><init>(Lcom/android/phone/BannerCallCard;Lcom/android/internal/telephony/Call;I)V

    .line 906
    .local v14, "callInfoCookie":Lcom/android/phone/BannerCallCard$CallInfoCookie;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v2, v7, v0, v14}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v3

    .line 909
    .local v3, "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v9, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v2, :cond_11

    const/4 v11, 0x1

    :goto_6
    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/BannerCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 857
    .end local v3    # "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v14    # "callInfoCookie":Lcom/android/phone/BannerCallCard$CallInfoCookie;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v2, v7}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v18

    goto/16 :goto_4

    .line 870
    .local v3, "info":Lcom/android/internal/telephony/CallerInfo;
    .restart local v16    # "obj":Ljava/lang/Object;
    .restart local v20    # "updatedCnapName":Ljava/lang/String;
    .restart local v21    # "updatedNumber":Ljava/lang/String;
    :cond_10
    instance-of v2, v15, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_b

    move-object v3, v15

    .line 871
    check-cast v3, Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_5

    .line 909
    .end local v16    # "obj":Ljava/lang/Object;
    .end local v20    # "updatedCnapName":Ljava/lang/String;
    .end local v21    # "updatedNumber":Ljava/lang/String;
    .local v3, "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v14    # "callInfoCookie":Lcom/android/phone/BannerCallCard$CallInfoCookie;
    :cond_11
    const/4 v11, 0x0

    goto :goto_6

    .line 916
    .end local v3    # "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v14    # "callInfoCookie":Lcom/android/phone/BannerCallCard$CallInfoCookie;
    :cond_12
    const-string v2, "- displayMainCallStatus: using data we already have..."

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 917
    instance-of v2, v15, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_13

    move-object v9, v15

    .line 918
    check-cast v9, Lcom/android/internal/telephony/CallerInfo;

    .line 921
    .local v9, "ci":Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 922
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 923
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 925
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- displayMainCallStatus: CNAP data from Connection: CNAP name="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Number/Name Presentation="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ==> Got CallerInfo; updating display: ci = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 933
    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/BannerCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 935
    .end local v9    # "ci":Lcom/android/internal/telephony/CallerInfo;
    :cond_13
    instance-of v2, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_14

    .line 936
    check-cast v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v15    # "o":Ljava/lang/Object;
    iget-object v9, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 938
    .restart local v9    # "ci":Lcom/android/internal/telephony/CallerInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- displayMainCallStatus: CNAP data from Connection: CNAP name="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Number/Name Presentation="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ==> Got CallerInfoToken; updating display: ci = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 946
    const/4 v11, 0x1

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/BannerCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 949
    .end local v9    # "ci":Lcom/android/internal/telephony/CallerInfo;
    .restart local v15    # "o":Ljava/lang/Object;
    :cond_14
    const-string v2, "BannerCallCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 0
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;
    .param p2, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 1397
    return-void
.end method

.method private displaySecondaryIncomingAnimator()V
    .locals 13

    .prologue
    const v2, 0x3ecccccd

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 4001
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 4003
    .local v9, "animationSet":Landroid/view/animation/AnimationSet;
    iget-object v3, p0, Lcom/android/phone/BannerCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    iget v4, p0, Lcom/android/phone/BannerCallCard;->mIncomingCallInfoWidth:I

    add-int v10, v3, v4

    .line 4004
    .local v10, "dx":I
    iget v3, p0, Lcom/android/phone/BannerCallCard;->mIncomingCallInfoTopMargin:I

    iget v4, p0, Lcom/android/phone/BannerCallCard;->mIncomingCallInfoHeight:I

    add-int v11, v3, v4

    .line 4005
    .local v11, "dy":I
    new-instance v12, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v10

    int-to-float v4, v11

    invoke-direct {v12, v1, v3, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 4007
    .local v12, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0x12c

    invoke-virtual {v12, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 4008
    invoke-virtual {v9, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4010
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v1

    move v7, v5

    move v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 4013
    .local v0, "myAnimation_Scale":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 4014
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4016
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4017
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mIncomingCall2Info:Landroid/view/ViewGroup;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4018
    return-void
.end method

.method private displaySwitchIncomingAnimator()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1f4

    const v1, 0x3ecccccd

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 4022
    iget-object v3, p0, Lcom/android/phone/BannerCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    iget v4, p0, Lcom/android/phone/BannerCallCard;->mIncomingCallInfoWidth:I

    sub-int v10, v3, v4

    .line 4024
    .local v10, "dx":I
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 4025
    .local v9, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v11, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v10

    iget v4, p0, Lcom/android/phone/BannerCallCard;->mIncomingCallInfoTopMargin:I

    int-to-float v4, v4

    invoke-direct {v11, v3, v2, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 4027
    .local v11, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v11, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 4028
    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4030
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 4033
    .local v0, "myAnimation_Scale":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 4034
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4035
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4037
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mIncomingCall2Info:Landroid/view/ViewGroup;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4038
    return-void
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 1693
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1696
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    .line 1698
    const-string v3, "getCallFailedString: connection is null, using default values."

    invoke-static {v3}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 1701
    const v2, 0x7f0802eb

    .line 1778
    .local v2, "resID":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1704
    .end local v2    # "resID":I
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 1711
    .local v1, "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v3, Lcom/android/phone/BannerCallCard$4;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1774
    const v2, 0x7f0802eb

    .restart local v2    # "resID":I
    goto :goto_0

    .line 1713
    .end local v2    # "resID":I
    :pswitch_0
    const v2, 0x7f0801b1

    .line 1714
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1717
    .end local v2    # "resID":I
    :pswitch_1
    const v2, 0x7f0801b2

    .line 1718
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1721
    .end local v2    # "resID":I
    :pswitch_2
    const v2, 0x7f0801b3

    .line 1722
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1725
    .end local v2    # "resID":I
    :pswitch_3
    const v2, 0x7f0801b4

    .line 1726
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1729
    .end local v2    # "resID":I
    :pswitch_4
    const v2, 0x7f0801b5

    .line 1730
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1733
    .end local v2    # "resID":I
    :pswitch_5
    const v2, 0x7f0801b6

    .line 1734
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1737
    .end local v2    # "resID":I
    :pswitch_6
    const v2, 0x7f0801b8

    .line 1738
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1741
    .end local v2    # "resID":I
    :pswitch_7
    const v2, 0x7f0801b7

    .line 1742
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1746
    .end local v2    # "resID":I
    :pswitch_8
    const v2, 0x7f0801b9

    .line 1747
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1750
    .end local v2    # "resID":I
    :pswitch_9
    const v2, 0x7f0801ba

    .line 1751
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1754
    .end local v2    # "resID":I
    :pswitch_a
    const v2, 0x7f0801bb

    .line 1755
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1759
    .end local v2    # "resID":I
    :pswitch_b
    iget-object v3, p0, Lcom/android/phone/BannerCallCard;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v3}, Lcom/mediatek/common/telephony/IServiceStateExt;->isImeiLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    const v2, 0x7f0801c4

    .line 1762
    .restart local v2    # "resID":I
    :goto_1
    goto :goto_0

    .line 1759
    .end local v2    # "resID":I
    :cond_1
    const v2, 0x7f0801bc

    goto :goto_1

    .line 1765
    :pswitch_c
    const v2, 0x7f0801bd

    .line 1766
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1770
    .end local v2    # "resID":I
    :pswitch_d
    const v2, 0x7f0801c5

    .line 1771
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1711
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Connection$DisconnectCause;)Ljava/lang/String;
    .locals 3
    .param p1, "cause"    # Lcom/android/internal/telephony/Connection$DisconnectCause;

    .prologue
    .line 3016
    if-nez p1, :cond_0

    .line 3018
    const-string v1, "getCallFailedString: connection is null, using default values."

    invoke-static {v1}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3021
    const v0, 0x7f0802eb

    .line 3090
    .local v0, "resID":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3023
    .end local v0    # "resID":I
    :cond_0
    sget-object v1, Lcom/android/phone/BannerCallCard$4;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3086
    const v0, 0x7f0802eb

    .restart local v0    # "resID":I
    goto :goto_0

    .line 3025
    .end local v0    # "resID":I
    :pswitch_0
    const v0, 0x7f0801b1

    .line 3026
    .restart local v0    # "resID":I
    goto :goto_0

    .line 3029
    .end local v0    # "resID":I
    :pswitch_1
    const v0, 0x7f0801b2

    .line 3030
    .restart local v0    # "resID":I
    goto :goto_0

    .line 3033
    .end local v0    # "resID":I
    :pswitch_2
    const v0, 0x7f0801b3

    .line 3034
    .restart local v0    # "resID":I
    goto :goto_0

    .line 3037
    .end local v0    # "resID":I
    :pswitch_3
    const v0, 0x7f0801b4

    .line 3038
    .restart local v0    # "resID":I
    goto :goto_0

    .line 3041
    .end local v0    # "resID":I
    :pswitch_4
    const v0, 0x7f0801b5

    .line 3042
    .restart local v0    # "resID":I
    goto :goto_0

    .line 3045
    .end local v0    # "resID":I
    :pswitch_5
    const v0, 0x7f0801b6

    .line 3046
    .restart local v0    # "resID":I
    goto :goto_0

    .line 3049
    .end local v0    # "resID":I
    :pswitch_6
    const v0, 0x7f0801b8

    .line 3050
    .restart local v0    # "resID":I
    goto :goto_0

    .line 3053
    .end local v0    # "resID":I
    :pswitch_7
    const v0, 0x7f0801b7

    .line 3054
    .restart local v0    # "resID":I
    goto :goto_0

    .line 3058
    .end local v0    # "resID":I
    :pswitch_8
    const v0, 0x7f0801b9

    .line 3059
    .restart local v0    # "resID":I
    goto :goto_0

    .line 3062
    .end local v0    # "resID":I
    :pswitch_9
    const v0, 0x7f0801ba

    .line 3063
    .restart local v0    # "resID":I
    goto :goto_0

    .line 3066
    .end local v0    # "resID":I
    :pswitch_a
    const v0, 0x7f0801bb

    .line 3067
    .restart local v0    # "resID":I
    goto :goto_0

    .line 3071
    .end local v0    # "resID":I
    :pswitch_b
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IServiceStateExt;->isImeiLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0801c4

    .line 3074
    .restart local v0    # "resID":I
    :goto_1
    goto :goto_0

    .line 3071
    .end local v0    # "resID":I
    :cond_1
    const v0, 0x7f0801bc

    goto :goto_1

    .line 3077
    :pswitch_c
    const v0, 0x7f0801bd

    .line 3078
    .restart local v0    # "resID":I
    goto :goto_0

    .line 3082
    .end local v0    # "resID":I
    :pswitch_d
    const v0, 0x7f0801c5

    .line 3083
    .restart local v0    # "resID":I
    goto :goto_0

    .line 3023
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private isSecondHoldCallVisible(Lcom/android/internal/telephony/CallManager;)Z
    .locals 9
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 623
    const/4 v3, 0x0

    .line 624
    .local v3, "result":Z
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v7}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkMultipleHoldCase()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 627
    const/4 v3, 0x1

    .line 643
    :cond_0
    :goto_0
    return v3

    .line 628
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v7}, Lcom/mediatek/phone/DualTalkUtils;->hasDualHoldCallsOnly()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 631
    iget-object v7, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v7}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 632
    .local v2, "firstHold":Lcom/android/internal/telephony/Call;
    iget-object v7, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v7}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 633
    .local v4, "secondHold":Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    if-eq v7, v8, :cond_2

    move v3, v5

    .line 634
    :goto_1
    goto :goto_0

    :cond_2
    move v3, v6

    .line 633
    goto :goto_1

    .line 635
    .end local v2    # "firstHold":Lcom/android/internal/telephony/Call;
    .end local v4    # "secondHold":Lcom/android/internal/telephony/Call;
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 636
    .local v1, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 637
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 639
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    if-eq v7, v8, :cond_4

    move v3, v5

    :goto_2
    goto :goto_0

    :cond_4
    move v3, v6

    goto :goto_2
.end method

.method private isSecondaryCallVisible(Lcom/android/internal/telephony/CallManager;)Z
    .locals 9
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 598
    const/4 v3, 0x0

    .line 599
    .local v3, "result":Z
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v7}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkMultipleHoldCase()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 603
    const/4 v3, 0x1

    .line 619
    :cond_0
    :goto_0
    return v3

    .line 604
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v7}, Lcom/mediatek/phone/DualTalkUtils;->hasDualHoldCallsOnly()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 607
    iget-object v7, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v7}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 608
    .local v2, "firstHold":Lcom/android/internal/telephony/Call;
    iget-object v7, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v7}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 609
    .local v4, "secondHold":Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    if-ne v7, v8, :cond_2

    move v3, v5

    .line 610
    :goto_1
    goto :goto_0

    :cond_2
    move v3, v6

    .line 609
    goto :goto_1

    .line 611
    .end local v2    # "firstHold":Lcom/android/internal/telephony/Call;
    .end local v4    # "secondHold":Lcom/android/internal/telephony/Call;
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 612
    .local v1, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 613
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 615
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    if-ne v7, v8, :cond_4

    move v3, v5

    :goto_2
    goto :goto_0

    :cond_4
    move v3, v6

    goto :goto_2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2496
    const-string v0, "BannerCallCard"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    return-void
.end method

.method private static final showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "ci"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 2323
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_1

    .line 2324
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2325
    const-string v0, "showCachedImage: using the cachedPhoto!"

    invoke-static {v0}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 2326
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2331
    :goto_0
    const/4 v0, 0x1

    .line 2334
    :goto_1
    return v0

    .line 2328
    :cond_0
    const-string v0, "showCachedImage: using picture_unknown!"

    invoke-static {v0}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 2329
    const v0, 0x7f0200e5

    invoke-static {p0, v0}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 2333
    :cond_1
    const-string v0, "showCachedImage: return false!"

    invoke-static {v0}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 2334
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static final showImage(Landroid/widget/ImageView;I)V
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "resource"    # I

    .prologue
    .line 2342
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2343
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2346
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {p0, v0}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2348
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2355
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2356
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 2358
    .local v0, "current":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 2360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start fade-in animation for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 2361
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2362
    invoke-static {p0}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 2363
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2368
    :goto_0
    return-void

    .line 2365
    :cond_0
    invoke-static {p0, v0, p1}, Lcom/android/phone/AnimationUtils;->startCrossFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2366
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSecondaryCallInfo()V
    .locals 2

    .prologue
    .line 1655
    const-string v0, "showSecondaryCallInfo()"

    invoke-static {v0}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 1657
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1658
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1659
    const v0, 0x7f0b010f

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    .line 1661
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1662
    const v0, 0x7f0b0114

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    .line 1664
    :cond_1
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    .line 1665
    const v0, 0x7f0b0110

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    .line 1667
    :cond_2
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    if-nez v0, :cond_3

    .line 1668
    const v0, 0x7f0b0111

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    .line 1669
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1671
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    new-instance v1, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1675
    :cond_3
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-nez v0, :cond_4

    .line 1676
    const v0, 0x7f0b0112

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    .line 1679
    :cond_4
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateButtonStateOutsideInCallTouchUi()V

    .line 1680
    return-void
.end method

.method private updateAlreadyDisconnected(Lcom/android/internal/telephony/CallManager;)V
    .locals 4
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 704
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 706
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mProviderInfo:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mContext:Landroid/content/Context;

    const v2, 0x7f0802eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    invoke-direct {p0, p1, v3}, Lcom/android/phone/BannerCallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 719
    invoke-virtual {p0, v3}, Lcom/android/phone/BannerCallCard;->displaySecondHoldCallStatus(Lcom/android/internal/telephony/Call;)V

    .line 720
    return-void
.end method

.method private updateCallBannerBackground(Lcom/android/internal/telephony/Call;Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "call"    # Lcom/android/internal/telephony/Call;
    .param p2, "callBanner"    # Landroid/view/ViewGroup;

    .prologue
    .line 2629
    invoke-virtual {p0, p1}, Lcom/android/phone/BannerCallCard;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 2631
    .local v2, "simInfo":Landroid/provider/Telephony$SIMInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2632
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2634
    .local v1, "phoneType":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 2636
    const/4 v3, 0x3

    if-ne v3, v1, :cond_0

    .line 2637
    const v3, 0x7f0200d8

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 2658
    :goto_0
    iget v3, p0, Lcom/android/phone/BannerCallCard;->mCallBannerSidePadding:I

    iget v4, p0, Lcom/android/phone/BannerCallCard;->mCallBannerTopBottomPadding:I

    iget v5, p0, Lcom/android/phone/BannerCallCard;->mCallBannerSidePadding:I

    iget v6, p0, Lcom/android/phone/BannerCallCard;->mCallBannerTopBottomPadding:I

    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2661
    :goto_1
    return-void

    .line 2639
    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/phone/BannerCallCard;->mSimColorMap:[I

    if-eqz v3, :cond_1

    iget v3, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    if-ltz v3, :cond_1

    iget v3, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    iget-object v4, p0, Lcom/android/phone/BannerCallCard;->mSimColorMap:[I

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 2643
    :cond_1
    const-string v3, "mSimInfo is null or mSimInfo.mColor invalid, do not update background"

    invoke-static {v3}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2646
    :cond_2
    iget-object v3, p0, Lcom/android/phone/BannerCallCard;->mSimColorMap:[I

    iget v4, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v3, v3, v4

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updateCallBannerBackground(Lcom/android/phone/InCallUiState$FakeCall;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "call"    # Lcom/android/phone/InCallUiState$FakeCall;
    .param p2, "callBanner"    # Landroid/view/ViewGroup;

    .prologue
    const v3, 0x7f0200d8

    const/4 v4, 0x0

    .line 3100
    const-string v1, "displayFakeCallStatus..."

    invoke-static {v1}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3103
    iget v0, p1, Lcom/android/phone/InCallUiState$FakeCall;->phoneType:I

    .line 3105
    .local v0, "phoneType":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3107
    const/4 v1, 0x3

    if-ne v1, v0, :cond_5

    .line 3109
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSimIndicator:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 3111
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSimIndicator:Landroid/widget/TextView;

    const v2, 0x7f0200f6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3114
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 3116
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 3119
    :cond_1
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 3121
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 3168
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 3170
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/phone/BannerCallCard;->mCallBannerSidePadding:I

    iget v3, p0, Lcom/android/phone/BannerCallCard;->mCallBannerSidePadding:I

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 3173
    :cond_3
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSimIndicator:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 3175
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSimIndicator:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/BannerCallCard;->mSimIndicatorPaddingLeft:I

    iget v3, p0, Lcom/android/phone/BannerCallCard;->mSimIndicatorPaddingRight:I

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3182
    :cond_4
    :goto_1
    return-void

    .line 3125
    :cond_5
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSimColorMap:[I

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v1, v1, Landroid/provider/Telephony$SIMInfo;->mColor:I

    if-ltz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v1, v1, Landroid/provider/Telephony$SIMInfo;->mColor:I

    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mSimColorMap:[I

    array-length v2, v2

    if-lt v1, v2, :cond_7

    .line 3129
    :cond_6
    const-string v1, "mSimInfo is null or mSimInfo.mColor invalid, do not update background"

    invoke-static {v1}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3134
    :cond_7
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSimIndicator:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    .line 3136
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSimIndicator:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mSimBorderMap:[I

    iget-object v3, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3139
    :cond_8
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    .line 3141
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mSimColorMap:[I

    iget-object v3, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 3144
    :cond_9
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 3146
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mSimColorMap:[I

    iget-object v3, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method private updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 5
    .param p1, "state"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    .line 441
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/ext/ExtensionManager;->getCallCardExtension()Lcom/mediatek/phone/ext/CallCardExtension;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/mediatek/phone/ext/CallCardExtension;->updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    :goto_0
    return-void

    .line 447
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    .line 449
    .local v2, "ringing":Z
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallInfoLayout()...  ringing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 460
    const/4 v1, 0x0

    .line 462
    .local v1, "reservedVerticalSpace":I
    invoke-virtual {p0}, Lcom/android/phone/BannerCallCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 463
    .local v0, "callInfoLp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ==> callInfoLp.bottomMargin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 447
    .end local v0    # "callInfoLp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "reservedVerticalSpace":I
    .end local v2    # "ringing":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V
    .locals 14
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 1146
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateCallStateWidgets(call "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 1148
    .local v8, "state":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1149
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 1150
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 1152
    .local v6, "phoneType":I
    const/4 v1, 0x0

    .line 1154
    .local v1, "callStateLabel":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1157
    .local v0, "bluetoothIconId":I
    sget-object v9, Lcom/android/phone/BannerCallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1216
    const-string v9, "BannerCallCard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateCallStateWidgets: unexpected call state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v9, 0x2

    if-ne v6, v9, :cond_1

    .line 1224
    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_9

    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1229
    const v9, 0x7f0802e7

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1236
    :cond_1
    :goto_1
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1239
    invoke-static {v2, v5}, Lcom/android/phone/PhoneUtils;->getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v1

    .line 1242
    :cond_2
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 1244
    .local v3, "inCallUiState":Lcom/android/phone/InCallUiState;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==> callStateLabel: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', bluetoothIconId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", providerInfoVisible = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v3, Lcom/android/phone/InCallUiState;->providerInfoVisible:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 1256
    sget-object v9, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_3

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_3

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_a

    :cond_3
    const/4 v7, 0x1

    .line 1258
    .local v7, "skipAnimation":Z
    :goto_2
    const/4 v4, 0x0

    .line 1259
    .local v4, "layoutTransition":Landroid/animation/LayoutTransition;
    if-eqz v7, :cond_4

    .line 1261
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v4

    .line 1262
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1265
    :cond_4
    iget-boolean v9, v3, Lcom/android/phone/InCallUiState;->providerInfoVisible:Z

    if-eqz v9, :cond_b

    .line 1266
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mProviderInfo:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1267
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mProviderLabel:Landroid/widget/TextView;

    const v10, 0x7f080347

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v3, Lcom/android/phone/InCallUiState;->providerLabel:Ljava/lang/CharSequence;

    aput-object v13, v11, v12

    invoke-virtual {v2, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1270
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mProviderAddress:Landroid/widget/TextView;

    iget-object v10, v3, Lcom/android/phone/InCallUiState;->providerAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1272
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->requestRemoveProviderInfoWithDelay()V

    .line 1279
    :goto_3
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1284
    if-eqz v1, :cond_5

    .line 1285
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1288
    :cond_5
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1289
    const-string v9, "DualTalkUtils.isSupportDualTalk()"

    invoke-static {v9}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 1303
    :cond_6
    if-eqz v0, :cond_c

    .line 1308
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v0, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1311
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/phone/BannerCallCard;->mDensity:F

    const/high16 v11, 0x40a00000

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1331
    :goto_4
    if-eqz v7, :cond_7

    .line 1333
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1365
    :cond_7
    return-void

    .line 1161
    .end local v3    # "inCallUiState":Lcom/android/phone/InCallUiState;
    .end local v4    # "layoutTransition":Landroid/animation/LayoutTransition;
    .end local v7    # "skipAnimation":Z
    :pswitch_1
    const-string v1, ""

    .line 1163
    goto/16 :goto_0

    .line 1171
    :pswitch_2
    const v9, 0x7f0802ec

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1172
    goto/16 :goto_0

    .line 1176
    :pswitch_3
    const v9, 0x7f0802e7

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1177
    goto/16 :goto_0

    .line 1184
    :pswitch_4
    invoke-static {p1}, Lcom/mediatek/phone/vt/VTCallUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1185
    const v9, 0x7f08018a

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1196
    :goto_5
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->showBluetoothIndication()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1197
    const v0, 0x7f02009c

    goto/16 :goto_0

    .line 1188
    :cond_8
    const v9, 0x7f0802ea

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 1208
    :pswitch_5
    const v9, 0x7f0802ed

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1209
    goto/16 :goto_0

    .line 1212
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/BannerCallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 1213
    goto/16 :goto_0

    .line 1230
    :cond_9
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v9}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1232
    const v9, 0x7f0802e8

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1256
    .restart local v3    # "inCallUiState":Lcom/android/phone/InCallUiState;
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 1274
    .restart local v4    # "layoutTransition":Landroid/animation/LayoutTransition;
    .restart local v7    # "skipAnimation":Z
    :cond_b
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mProviderInfo:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 1314
    :cond_c
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_4

    .line 1157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v1, 0x0

    .line 2396
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2398
    .local v0, "phoneType":I
    :goto_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 2399
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2400
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const v2, 0x7f08030f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2401
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mCallTypeLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/BannerCallCard;->mTextColorCallTypeSip:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2410
    :goto_1
    return-void

    .end local v0    # "phoneType":I
    :cond_0
    move v0, v1

    .line 2396
    goto :goto_0

    .line 2408
    .restart local v0    # "phoneType":I
    :cond_1
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateDisplayForConference(Lcom/android/internal/telephony/Call;)V
    .locals 6
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const v5, 0x7f0200e2

    const v3, 0x7f0200e1

    const/16 v4, 0x8

    .line 2106
    const-string v2, "updateDisplayForConference()..."

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 2108
    const/4 v0, 0x0

    .line 2109
    .local v0, "hasMultipleRingingCalls":Z
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2111
    const/4 v0, 0x1

    .line 2115
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2116
    .local v1, "phoneType":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 2123
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v2, v5}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2125
    if-eqz v0, :cond_1

    .line 2126
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    invoke-static {v2, v5}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2129
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mName:Landroid/widget/TextView;

    const v3, 0x7f0802ee

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2148
    :goto_0
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2154
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2155
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2157
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mPhoneNumberGeoDescription:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 2158
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mPhoneNumberGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2162
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/BannerCallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 2175
    return-void

    .line 2130
    :cond_3
    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 2136
    :cond_4
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2138
    if-eqz v0, :cond_5

    .line 2139
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2142
    :cond_5
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mName:Landroid/widget/TextView;

    const v3, 0x7f0802e9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2144
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 16
    .param p1, "info"    # Lcom/android/internal/telephony/CallerInfo;
    .param p2, "presentation"    # I
    .param p3, "isTemporary"    # Z
    .param p4, "call"    # Lcom/android/internal/telephony/Call;
    .param p5, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1791
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateDisplayForPerson("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")\npresentation:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " isTemporary:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 1795
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 1796
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1801
    const/4 v4, 0x0

    .line 1802
    .local v4, "displayNumber":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1803
    .local v7, "label":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1807
    .local v10, "personUri":Landroid/net/Uri;
    const/4 v9, 0x0

    .line 1808
    .local v9, "numberGeoDescription":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1809
    .local v6, "hasMultipleRingingCalls":Z
    const/4 v2, 0x1

    .line 1811
    .local v2, "bFirstIncoming":Z
    if-eqz p1, :cond_d

    .line 1828
    sget-boolean v12, Lcom/android/phone/BannerCallCard;->mLocaleChanged:Z

    if-eqz v12, :cond_1

    .line 1829
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1830
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x10402e5

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1834
    :cond_0
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/phone/BannerCallCard;->mLocaleChanged:Z

    .line 1846
    :cond_1
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1847
    .local v8, "number":Ljava/lang/String;
    if-eqz v8, :cond_2

    const-string v12, "sip:"

    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1848
    const/4 v12, 0x4

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1852
    :cond_2
    if-eqz v8, :cond_3

    .line 1853
    invoke-static {}, Lcom/mediatek/phone/HyphonManager;->getInstance()Lcom/mediatek/phone/HyphonManager;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/mediatek/phone/HyphonManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1857
    :cond_3
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1863
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1867
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v12

    move/from16 v0, p2

    invoke-static {v12, v0}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 1870
    .local v3, "displayName":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  ==> no name *or* number! displayName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 1959
    :goto_0
    sget-object v12, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v12, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 1962
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "- got personUri: \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\', based on info.person_id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 1969
    .end local v8    # "number":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1970
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mName:Landroid/widget/TextView;

    const v13, 0x7f0802ee

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 1974
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mName:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1991
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v12}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1993
    const/4 v6, 0x1

    .line 1994
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v12}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 1995
    .local v5, "fisrtCall":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v12}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveRingCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    .line 1996
    .local v11, "secondCall":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p4

    if-ne v0, v11, :cond_4

    .line 1997
    const/4 v2, 0x0

    .line 2001
    .end local v5    # "fisrtCall":Lcom/android/internal/telephony/Call;
    .end local v11    # "secondCall":Lcom/android/internal/telephony/Call;
    :cond_4
    if-eqz p3, :cond_f

    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v12, :cond_f

    .line 2002
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2003
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2066
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mPhotoDimEffect:Landroid/view/View;

    const/16 v13, 0x8

    invoke-static {v12, v13}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    .line 2068
    if-eqz v4, :cond_17

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v12

    if-nez v12, :cond_17

    .line 2069
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2070
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2075
    :goto_4
    if-eqz v7, :cond_18

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v12

    if-nez v12, :cond_18

    .line 2076
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2077
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mLabel:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2092
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/phone/BannerCallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 2095
    return-void

    .line 1872
    .end local v3    # "displayName":Ljava/lang/String;
    .restart local v8    # "number":Ljava/lang/String;
    :cond_7
    sget v12, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    if-eq v0, v12, :cond_8

    .line 1878
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v12

    move/from16 v0, p2

    invoke-static {v12, v0}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 1881
    .restart local v3    # "displayName":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  ==> presentation not allowed! displayName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1883
    .end local v3    # "displayName":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 1885
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1886
    .restart local v3    # "displayName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1887
    move-object v4, v8

    .line 1889
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  ==> cnapName available: displayName \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\', displayNumber \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1899
    .end local v3    # "displayName":Ljava/lang/String;
    :cond_9
    move-object v3, v8

    .line 1904
    .restart local v3    # "displayName":Ljava/lang/String;
    if-eqz p5, :cond_a

    .line 1920
    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  ==>  no name; falling back to number: displayName \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\', numberGeoDescription \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1929
    .end local v3    # "displayName":Ljava/lang/String;
    :cond_b
    sget v12, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    if-eq v0, v12, :cond_c

    .line 1935
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v12

    move/from16 v0, p2

    invoke-static {v12, v0}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 1938
    .restart local v3    # "displayName":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  ==> valid name, but presentation not allowed! displayName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1941
    .end local v3    # "displayName":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1942
    .restart local v3    # "displayName":Ljava/lang/String;
    move-object v4, v8

    .line 1943
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 1945
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  ==>  name is present in CallerInfo: displayName \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\', displayNumber \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1965
    .end local v3    # "displayName":Ljava/lang/String;
    .end local v8    # "number":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v12

    move/from16 v0, p2

    invoke-static {v12, v0}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "displayName":Ljava/lang/String;
    goto/16 :goto_1

    .line 1972
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2004
    :cond_f
    if-eqz p1, :cond_11

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v12, :cond_11

    .line 2005
    if-eqz v2, :cond_10

    .line 2006
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-static {v12, v13}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_3

    .line 2008
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-static {v12, v13}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_3

    .line 2010
    :cond_11
    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mPhoto:Landroid/widget/ImageView;

    :goto_6
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/android/phone/BannerCallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 2012
    if-nez v10, :cond_14

    .line 2013
    const-string v12, "BannerCallCard"

    const-string v13, "personPri is null. Just use Unknown picture."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mPhoto:Landroid/widget/ImageView;

    :goto_7
    const v13, 0x7f0200e5

    invoke-static {v12, v13}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2052
    :goto_8
    if-eqz v6, :cond_6

    .line 2053
    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Lcom/android/phone/BannerCallCard$AsyncLoadCookie;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mPhoto:Landroid/widget/ImageView;

    :goto_9
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-direct {v15, v12, v0, v1}, Lcom/android/phone/BannerCallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    move-object/from16 v0, p0

    invoke-static {v13, v14, v10, v0, v15}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2010
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    goto :goto_6

    .line 2014
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    goto :goto_7

    .line 2016
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-virtual {v10, v12}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 2018
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The requested Uri ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") is being loaded already."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Ignoret the duplicate load request."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 2028
    :cond_15
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/phone/BannerCallCard;->mLoadingPersonUri:Landroid/net/Uri;

    .line 2031
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2033
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2037
    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v13

    new-instance v14, Lcom/android/phone/BannerCallCard$AsyncLoadCookie;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/BannerCallCard;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-direct {v14, v15, v0, v1}, Lcom/android/phone/BannerCallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    move-object/from16 v0, p0

    invoke-static {v12, v13, v10, v0, v14}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 2046
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x65

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 2047
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x65

    const-wide/16 v14, 0x1f4

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_8

    .line 2053
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    goto/16 :goto_9

    .line 2072
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 2079
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mLabel:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/widget/TextView;ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 13
    .param p1, "info"    # Lcom/android/internal/telephony/CallerInfo;
    .param p2, "presentation"    # I
    .param p3, "isTemporary"    # Z
    .param p4, "call"    # Lcom/android/internal/telephony/Call;
    .param p5, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p6, "nameView"    # Landroid/widget/TextView;
    .param p7, "isOnHold"    # Z
    .param p8, "numberView"    # Landroid/widget/TextView;
    .param p9, "labelView"    # Landroid/widget/TextView;
    .param p10, "photoView"    # Landroid/widget/ImageView;

    .prologue
    .line 2668
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateDisplayForPerson(), info: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " presentation:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isTemporary: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " call: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " conn: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " nameView: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isOnHold: +"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p7

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " numberView: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " labelView: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "photoView: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p10

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 2677
    if-nez p7, :cond_0

    .line 2678
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v9, p1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 2679
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2685
    :cond_0
    const/4 v3, 0x0

    .line 2686
    .local v3, "displayNumber":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2687
    .local v4, "label":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2688
    .local v6, "personUri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 2689
    .local v8, "socialStatusText":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2691
    .local v7, "socialStatusBadge":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_11

    .line 2707
    sget-boolean v9, Lcom/android/phone/BannerCallCard;->mLocaleChanged:Z

    if-eqz v9, :cond_2

    .line 2708
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2709
    invoke-virtual {p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10402e5

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2713
    :cond_1
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/phone/BannerCallCard;->mLocaleChanged:Z

    .line 2725
    :cond_2
    iget-object v5, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2726
    .local v5, "number":Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v9, "sip:"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2727
    const/4 v9, 0x4

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2729
    :cond_3
    invoke-static {}, Lcom/mediatek/phone/HyphonManager;->getInstance()Lcom/mediatek/phone/HyphonManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/mediatek/phone/HyphonManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2731
    iget-object v9, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 2737
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2741
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v9, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 2744
    .local v2, "displayName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  ==> no name *or* number! displayName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 2837
    :goto_0
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 2840
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- got personUri: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', based on info.person_id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 2848
    .end local v5    # "number":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v9

    if-eqz v9, :cond_12

    if-eqz p6, :cond_12

    .line 2849
    const v9, 0x7f0802ee

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    .line 2853
    :cond_4
    :goto_2
    if-eqz p6, :cond_5

    .line 2854
    const/4 v9, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2870
    :cond_5
    if-eqz p3, :cond_13

    if-eqz p1, :cond_6

    iget-boolean v9, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v9, :cond_13

    .line 2871
    :cond_6
    const/4 v9, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2872
    const/4 v9, 0x4

    move-object/from16 v0, p10

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2909
    :cond_7
    :goto_3
    if-eqz p8, :cond_16

    if-eqz v3, :cond_16

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v9

    if-nez v9, :cond_16

    .line 2910
    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2911
    const/4 v9, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2916
    :cond_8
    :goto_4
    if-eqz p9, :cond_17

    if-eqz v4, :cond_17

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v9

    if-nez v9, :cond_17

    .line 2917
    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2918
    const/4 v9, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2922
    :cond_9
    :goto_5
    return-void

    .line 2747
    .end local v2    # "displayName":Ljava/lang/String;
    .restart local v5    # "number":Ljava/lang/String;
    :cond_a
    sget v9, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v9, :cond_b

    .line 2753
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v9, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 2756
    .restart local v2    # "displayName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  ==> presentation not allowed! displayName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2759
    .end local v2    # "displayName":Ljava/lang/String;
    :cond_b
    iget-object v9, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 2761
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2762
    .restart local v2    # "displayName":Ljava/lang/String;
    iget-object v9, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v9, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2763
    move-object v3, v5

    .line 2765
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  ==> cnapName available: displayName \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', displayNumber \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2776
    .end local v2    # "displayName":Ljava/lang/String;
    :cond_c
    move-object v2, v5

    .line 2781
    .restart local v2    # "displayName":Ljava/lang/String;
    if-eqz p5, :cond_d

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v9, v10, :cond_d

    .line 2790
    iget-object v9, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2791
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mPhoneNumberGeoDescription:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2803
    :cond_d
    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  ==>  no name; falling back to number: displayName \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', displayNumber \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2794
    :cond_e
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mPhoneNumberGeoDescription:Landroid/widget/TextView;

    iget-object v10, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2796
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mPhoneNumberGeoDescription:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 2813
    .end local v2    # "displayName":Ljava/lang/String;
    :cond_f
    sget v9, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v9, :cond_10

    .line 2819
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v9, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 2822
    .restart local v2    # "displayName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  ==> valid name, but presentation not allowed! displayName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2826
    .end local v2    # "displayName":Ljava/lang/String;
    :cond_10
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2827
    .restart local v2    # "displayName":Ljava/lang/String;
    move-object v3, v5

    .line 2828
    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 2830
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  ==>  name is present in CallerInfo: displayName \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', displayNumber \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2844
    .end local v2    # "displayName":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    :cond_11
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v9, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "displayName":Ljava/lang/String;
    goto/16 :goto_1

    .line 2850
    :cond_12
    if-eqz p6, :cond_4

    .line 2851
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2873
    :cond_13
    if-eqz p1, :cond_14

    iget v9, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v9, :cond_14

    .line 2874
    iget v9, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move-object/from16 v0, p10

    invoke-static {v0, v9}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_3

    .line 2875
    :cond_14
    move-object/from16 v0, p10

    invoke-static {v0, p1}, Lcom/android/phone/BannerCallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 2881
    iput-object v6, p0, Lcom/android/phone/BannerCallCard;->mLoadingPersonUri:Landroid/net/Uri;

    .line 2883
    const/4 v9, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2885
    const/4 v9, 0x4

    move-object/from16 v0, p10

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2887
    if-nez v6, :cond_15

    .line 2888
    const-string v9, "BannerCallCard"

    const-string v10, "personPri is null. Just use Unknown picture."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    const v9, 0x7f0200e5

    move-object/from16 v0, p10

    invoke-static {v0, v9}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_3

    .line 2894
    :cond_15
    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Lcom/android/phone/BannerCallCard$AsyncLoadCookie;

    move-object/from16 v0, p10

    move-object/from16 v1, p4

    invoke-direct {v11, v0, p1, v1}, Lcom/android/phone/BannerCallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v9, v10, v6, p0, v11}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 2903
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x65

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2904
    iget-object v9, p0, Lcom/android/phone/BannerCallCard;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x65

    const-wide/16 v11, 0x1f4

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 2912
    :cond_16
    if-eqz p8, :cond_8

    .line 2913
    const/16 v9, 0x8

    move-object/from16 v0, p8

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 2919
    :cond_17
    if-eqz p9, :cond_9

    .line 2920
    const/16 v9, 0x8

    move-object/from16 v0, p9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 10
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 477
    const-string v6, "updateForegroundCall()..."

    invoke-static {v6}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 481
    const/4 v1, 0x0

    .line 482
    .local v1, "fgCall":Lcom/android/internal/telephony/Call;
    const/4 v0, 0x0

    .line 484
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkMultipleHoldCase()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 489
    iget-object v6, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 490
    iget-object v6, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 522
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 523
    .local v5, "ringingCall":Lcom/android/internal/telephony/Call;
    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    .line 524
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 595
    :cond_0
    :goto_1
    return-void

    .line 491
    .end local v5    # "ringingCall":Lcom/android/internal/telephony/Call;
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->hasDualHoldCallsOnly()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 496
    iget-object v6, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 497
    iget-object v6, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    .line 498
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 502
    iget-object v6, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 503
    iget-object v6, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 505
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCdmaAndGsmActive: fgCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  bgCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 509
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 510
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 512
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateForegroundCall: common case : fgCall "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  bgCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 531
    .restart local v5    # "ringingCall":Lcom/android/internal/telephony/Call;
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_5

    .line 533
    const-string v6, "updateForegroundCall: no active call, show holding call"

    invoke-static {v6}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 541
    move-object v1, v0

    .line 544
    const/4 v0, 0x0

    .line 547
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/android/phone/BannerCallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 549
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 552
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 554
    .local v4, "phoneType":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateForegroundCall: fgCall phoneType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 555
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 556
    if-ne v4, v8, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v8, :cond_6

    .line 558
    invoke-direct {p0, p1, v0}, Lcom/android/phone/BannerCallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 559
    iget-object v6, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/phone/BannerCallCard;->displaySecondHoldCallStatus(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 561
    :cond_6
    invoke-direct {p0, p1, v9}, Lcom/android/phone/BannerCallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 562
    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->displaySecondHoldCallStatus(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 564
    :cond_7
    const/4 v6, 0x2

    if-ne v4, v6, :cond_9

    .line 565
    iget-object v6, p0, Lcom/android/phone/BannerCallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v6

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v7, :cond_8

    iget-object v6, p0, Lcom/android/phone/BannerCallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 568
    invoke-direct {p0, p1, v1}, Lcom/android/phone/BannerCallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 573
    :cond_8
    invoke-direct {p0, p1, v0}, Lcom/android/phone/BannerCallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 575
    :cond_9
    if-eq v4, v8, :cond_a

    const/4 v6, 0x3

    if-ne v4, v6, :cond_0

    .line 576
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/phone/BannerCallCard;->isSecondaryCallVisible(Lcom/android/internal/telephony/CallManager;)Z

    move-result v2

    .line 577
    .local v2, "isSecondary":Z
    if-eqz v2, :cond_b

    .line 578
    invoke-direct {p0, p1, v0}, Lcom/android/phone/BannerCallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 583
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/phone/BannerCallCard;->isSecondHoldCallVisible(Lcom/android/internal/telephony/CallManager;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 584
    if-eqz v2, :cond_c

    .line 585
    iget-object v6, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/phone/BannerCallCard;->displaySecondHoldCallStatus(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 580
    :cond_b
    invoke-direct {p0, p1, v9}, Lcom/android/phone/BannerCallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_2

    .line 588
    :cond_c
    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->displaySecondHoldCallStatus(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 591
    :cond_d
    invoke-virtual {p0, v9}, Lcom/android/phone/BannerCallCard;->displaySecondHoldCallStatus(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1
.end method

.method private updateNoCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 3
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v2, 0x0

    .line 732
    const-string v1, "updateNoCall()..."

    invoke-static {v1}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 738
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v1, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    .line 739
    .local v0, "fakeCall":Lcom/android/phone/InCallUiState$FakeCall;
    if-eqz v0, :cond_0

    .line 740
    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->displayFakeCallStatus(Lcom/android/phone/InCallUiState$FakeCall;)V

    .line 747
    :goto_0
    return-void

    .line 742
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/phone/BannerCallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 743
    invoke-direct {p0, p1, v2}, Lcom/android/phone/BannerCallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 744
    invoke-virtual {p0, v2}, Lcom/android/phone/BannerCallCard;->displaySecondHoldCallStatus(Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;Landroid/widget/ImageView;)V
    .locals 13
    .param p1, "call"    # Lcom/android/internal/telephony/Call;
    .param p2, "view"    # Landroid/widget/ImageView;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, -0x2

    .line 2188
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatePhotoForCallState("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 2189
    const/4 v4, 0x0

    .line 2193
    .local v4, "photoImageResource":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 2194
    .local v6, "state":Lcom/android/internal/telephony/Call$State;
    sget-object v7, Lcom/android/phone/BannerCallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    .line 2234
    const/4 v0, 0x0

    .line 2236
    .local v0, "ci":Lcom/android/internal/telephony/CallerInfo;
    const/4 v1, 0x0

    .line 2237
    .local v1, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2238
    .local v3, "phoneType":I
    const/4 v7, 0x2

    if-ne v3, v7, :cond_4

    .line 2239
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2248
    :goto_0
    if-eqz v1, :cond_0

    .line 2249
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 2250
    .local v2, "o":Ljava/lang/Object;
    instance-of v7, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v7, :cond_7

    move-object v0, v2

    .line 2251
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 2258
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 2259
    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 2273
    :cond_1
    if-nez v4, :cond_9

    .line 2274
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2275
    invoke-static {p2, v0}, Lcom/android/phone/BannerCallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/phone/BannerCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v7}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v7

    if-ne v7, v9, :cond_2

    .line 2277
    iget-object v7, p0, Lcom/android/phone/BannerCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v7}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v5

    .line 2278
    .local v5, "photoUri":Landroid/net/Uri;
    if-nez v5, :cond_8

    .line 2279
    const-string v7, "BannerCallCard"

    const-string v8, "photoUri became null. Show default avatar icon"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    const v7, 0x7f0200e5

    invoke-static {p2, v7}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2293
    :goto_2
    iget-object v7, p0, Lcom/android/phone/BannerCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v7, v10}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2306
    .end local v5    # "photoUri":Landroid/net/Uri;
    :cond_2
    if-eqz v4, :cond_3

    .line 2308
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- overrriding photo image: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 2309
    invoke-static {p2, v4}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2311
    iget-object v7, p0, Lcom/android/phone/BannerCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v7, v9}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2314
    :cond_3
    :goto_3
    return-void

    .line 2240
    :cond_4
    if-eq v3, v11, :cond_5

    const/4 v7, 0x3

    if-ne v3, v7, :cond_6

    .line 2242
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 2244
    :cond_6
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected phone type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2252
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_7
    instance-of v7, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v7, :cond_0

    .line 2253
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v2    # "o":Ljava/lang/Object;
    iget-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1

    .line 2284
    .restart local v5    # "photoUri":Landroid/net/Uri;
    :cond_8
    const-string v7, "start asynchronous load inside updatePhotoForCallState()"

    invoke-static {v7}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 2286
    invoke-virtual {p2, v12}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2288
    const/4 v7, 0x4

    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2289
    invoke-virtual {p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lcom/android/phone/BannerCallCard$AsyncLoadCookie;

    invoke-direct {v8, p2, v0, v12}, Lcom/android/phone/BannerCallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v11, v7, v5, p0, v8}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_2

    .line 2298
    .end local v5    # "photoUri":Landroid/net/Uri;
    :cond_9
    invoke-static {p2, v4}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2299
    iget-object v7, p0, Lcom/android/phone/BannerCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v7, v10}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto :goto_3
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 3
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v2, 0x0

    .line 652
    const-string v1, "updateRingingCall()..."

    invoke-static {v1}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 655
    const/4 v0, 0x0

    .line 657
    .local v0, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 665
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/phone/BannerCallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 668
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 670
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveRingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/BannerCallCard;->displaySecondIncomingCallStatus(Lcom/android/internal/telephony/Call;)V

    .line 682
    :cond_0
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/android/phone/BannerCallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 683
    invoke-virtual {p0, v2}, Lcom/android/phone/BannerCallCard;->displaySecondHoldCallStatus(Lcom/android/internal/telephony/Call;)V

    .line 684
    return-void

    .line 661
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    .line 673
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/phone/BannerCallCard;->displaySecondIncomingCallStatus(Lcom/android/internal/telephony/Call;)V

    goto :goto_1
.end method

.method private updateSimInfo(Lcom/android/internal/telephony/Call;)V
    .locals 7
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 2582
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 2583
    .local v0, "phone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    const/4 v1, -0x1

    .line 2585
    .local v1, "slot":I
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_4

    .line 2586
    const/4 v1, 0x1

    .line 2591
    :cond_0
    :goto_0
    if-ne v1, v4, :cond_6

    .line 2592
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPendingMmiCodesGemini(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_5

    .line 2594
    const/4 v1, 0x0

    .line 2599
    :cond_1
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    .line 2601
    if-ne v1, v4, :cond_2

    if-eqz p1, :cond_2

    .line 2602
    invoke-virtual {p0, p1}, Lcom/android/phone/BannerCallCard;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    .line 2606
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSimIndicator, running mmi, slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 2626
    :cond_3
    :goto_2
    return-void

    .line 2587
    :cond_4
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    .line 2588
    const/4 v1, 0x0

    goto :goto_0

    .line 2595
    :cond_5
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPendingMmiCodesGemini(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2597
    const/4 v1, 0x1

    goto :goto_1

    .line 2609
    :cond_6
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    .line 2610
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v2, :cond_3

    .line 2612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSimIndicator slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSimInfo :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 2613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v3, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 2614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "color       = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 2616
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v2, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 2617
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v2, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    .line 2620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v3, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x1

    .line 2461
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 2462
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/BannerCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2463
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/BannerCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2479
    :cond_0
    :goto_0
    return v2

    .line 2467
    :cond_1
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/BannerCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2468
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/BannerCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2469
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/BannerCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2470
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/BannerCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2471
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/BannerCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2473
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2474
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/BannerCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2476
    :cond_2
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2477
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/BannerCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method displayFakeCallStatus(Lcom/android/phone/InCallUiState$FakeCall;)V
    .locals 8
    .param p1, "call"    # Lcom/android/phone/InCallUiState$FakeCall;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2929
    if-nez p1, :cond_0

    .line 2931
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3011
    :goto_0
    return-void

    .line 2936
    :cond_0
    const-string v2, "displayFakeCallStatus..."

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 2939
    invoke-virtual {p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/android/phone/InCallUiState$FakeCall;->conn:Lcom/android/internal/telephony/Connection;

    invoke-static {v2, v3, p0, p1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 2942
    .local v0, "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2945
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2946
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/phone/InCallUiState$FakeCall;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-direct {p0, v3}, Lcom/android/phone/BannerCallCard;->getCallFailedString(Lcom/android/internal/telephony/Connection$DisconnectCause;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2949
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    iget v3, p1, Lcom/android/phone/InCallUiState$FakeCall;->slotId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    .line 2955
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v2, :cond_1

    .line 2956
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mSimIndicator:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v3, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2957
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2960
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v2}, Lcom/android/phone/BannerCallCard;->updateCallBannerBackground(Lcom/android/phone/InCallUiState$FakeCall;Landroid/view/ViewGroup;)V

    .line 2962
    iget v2, p1, Lcom/android/phone/InCallUiState$FakeCall;->phoneType:I

    if-ne v2, v5, :cond_4

    .line 2964
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mOperatorName:Landroid/widget/TextView;

    const v3, 0x7f08030f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2984
    :goto_1
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 2985
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mPhoneNumber:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2987
    :cond_2
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 2988
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mLabel:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2991
    :cond_3
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v2, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget v2, p1, Lcom/android/phone/InCallUiState$FakeCall;->phoneType:I

    if-eq v2, v5, :cond_7

    .line 2993
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mSimIndicator:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v3, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2994
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2998
    :goto_2
    if-eqz v0, :cond_9

    iget-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v2, :cond_9

    .line 2999
    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3001
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3008
    :goto_3
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mPhoto:Landroid/widget/ImageView;

    const v3, 0x7f0200e5

    invoke-static {v2, v3}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 3009
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0, v2, v7}, Lcom/android/phone/BannerCallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 3010
    invoke-virtual {p0, v7}, Lcom/android/phone/BannerCallCard;->displaySecondHoldCallStatus(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 2966
    :cond_4
    const/4 v1, 0x0

    .line 2968
    .local v1, "operatorName":Ljava/lang/String;
    iget v2, p1, Lcom/android/phone/InCallUiState$FakeCall;->slotId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 2969
    const-string v2, "gsm.operator.alpha.2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2979
    :cond_5
    :goto_4
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mOperatorName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2980
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mOperatorName:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2971
    :cond_6
    iget v2, p1, Lcom/android/phone/InCallUiState$FakeCall;->slotId:I

    if-nez v2, :cond_5

    .line 2972
    const-string v2, "gsm.operator.alpha"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 2996
    .end local v1    # "operatorName":Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 3003
    :cond_8
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mName:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/phone/InCallUiState$FakeCall;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 3006
    :cond_9
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mName:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/phone/InCallUiState$FakeCall;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method displaySecondHoldCallStatus(Lcom/android/internal/telephony/Call;)V
    .locals 19
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 3671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displaySecondHoldCallStatus(call ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3674
    if-nez p1, :cond_5

    .line 3675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->m2ndHoldName:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 3676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->m2ndHoldName:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3678
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->m2ndHoldState:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 3679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->m2ndHoldState:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3681
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mPhotoHoldPre:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 3682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mPhotoHoldPre:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3684
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    if-eqz v2, :cond_3

    .line 3685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 3687
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 3688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    .line 3830
    :cond_4
    :goto_0
    return-void

    .line 3693
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    if-nez v2, :cond_7

    .line 3694
    const v2, 0x7f0b010d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/BannerCallCard;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    .line 3695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 3696
    const v2, 0x7f0b008c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/BannerCallCard;->mPhotoHoldPre:Landroid/widget/ImageView;

    .line 3697
    const v2, 0x7f0b008b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/BannerCallCard;->m2ndHoldName:Landroid/widget/TextView;

    .line 3698
    const v2, 0x7f0b0090

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/BannerCallCard;->m2ndHoldState:Landroid/widget/TextView;

    .line 3699
    const v2, 0x7f0b008e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/BannerCallCard;->m2ndHoldCallBanner:Landroid/view/ViewGroup;

    .line 3700
    const v2, 0x7f0b008d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/BannerCallCard;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    .line 3701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 3702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 3703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->callCardListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    new-instance v3, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v3}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3712
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->m2ndHoldName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->m2ndHoldState:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mPhotoHoldPre:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-static {v2}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 3719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displaySecondHoldCallStatus ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3722
    invoke-virtual/range {p0 .. p1}, Lcom/android/phone/BannerCallCard;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v14

    .line 3723
    .local v14, "info":Landroid/provider/Telephony$SIMInfo;
    if-eqz v14, :cond_8

    iget v2, v14, Landroid/provider/Telephony$SIMInfo;->mColor:I

    if-ltz v2, :cond_8

    iget v2, v14, Landroid/provider/Telephony$SIMInfo;->mColor:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->mSimColorMap:[I

    array-length v3, v3

    if-ge v2, v3, :cond_8

    .line 3726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->m2ndHoldCallBanner:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->mSimColorMap:[I

    iget v5, v14, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 3733
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->m2ndHoldCallBanner:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BannerCallCard;->mCallBannerSidePadding:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/BannerCallCard;->mCallBannerSidePadding:I

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v5, v6, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 3736
    const/16 v17, 0x0

    .line 3737
    .local v17, "showSecondaryCallInfo":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    .line 3738
    .local v18, "state":Lcom/android/internal/telephony/Call$State;
    sget-object v2, Lcom/android/phone/BannerCallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 3827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_0

    .line 3710
    .end local v14    # "info":Landroid/provider/Telephony$SIMInfo;
    .end local v17    # "showSecondaryCallInfo":Z
    .end local v18    # "state":Lcom/android/internal/telephony/Call$State;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_1

    .line 3727
    .restart local v14    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_8
    if-nez v14, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 3730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->m2ndHoldCallBanner:Landroid/view/ViewGroup;

    const v3, 0x7f0200d8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_2

    .line 3741
    .restart local v17    # "showSecondaryCallInfo":Z
    .restart local v18    # "state":Lcom/android/internal/telephony/Call$State;
    :pswitch_0
    const-string v2, "displaySecondHoldCallStatus : meet cdma case!"

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3754
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3756
    const-string v2, "==> conference call."

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->m2ndHoldName:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0801c6

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3759
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 3760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mPhotoHoldPre:Landroid/widget/ImageView;

    const v3, 0x7f0200e2

    invoke-static {v2, v3}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 3818
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->m2ndHoldState:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0802ec

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3762
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mPhotoHoldPre:Landroid/widget/ImageView;

    const v3, 0x7f0200e1

    invoke-static {v2, v3}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_3

    .line 3765
    :cond_a
    const/4 v15, 0x0

    .line 3766
    .local v15, "infoToken":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget-boolean v2, Lcom/android/phone/BannerCallCard;->mLCforUserDataSecondHoldCall:Z

    if-eqz v2, :cond_b

    .line 3768
    const-string v2, "- displaySecondHoldCallStatus: the language changed to clear userdata"

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3769
    new-instance v13, Lcom/android/phone/BannerCallCard$CallInfoCookie;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1, v2}, Lcom/android/phone/BannerCallCard$CallInfoCookie;-><init>(Lcom/android/phone/BannerCallCard;Lcom/android/internal/telephony/Call;I)V

    .line 3771
    .local v13, "callInfoCookie":Lcom/android/phone/BannerCallCard$CallInfoCookie;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v2, v0, v1, v13, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v15

    .line 3773
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/BannerCallCard;->mLCforUserDataSecondHoldCall:Z

    .line 3783
    .end local v13    # "callInfoCookie":Lcom/android/phone/BannerCallCard$CallInfoCookie;
    :goto_4
    const-string v2, "==> NOT a conf call; call startGetCallerInfo..."

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->m2ndHoldName:Landroid/widget/TextView;

    iget-object v3, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3795
    iget-boolean v2, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v2, :cond_f

    .line 3796
    const/4 v7, 0x0

    .line 3797
    .local v7, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    .line 3798
    .local v16, "phoneType":I
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_c

    .line 3799
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 3808
    :goto_5
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 3809
    .local v4, "presentation":I
    iget-object v3, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BannerCallCard;->mPhotoHoldPre:Landroid/widget/ImageView;

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v12}, Lcom/android/phone/BannerCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/widget/TextView;ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto/16 :goto_3

    .line 3775
    .end local v4    # "presentation":I
    .end local v7    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v16    # "phoneType":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->m2ndHoldName:Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v2, v0, v1, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v15

    goto :goto_4

    .line 3800
    .restart local v7    # "conn":Lcom/android/internal/telephony/Connection;
    .restart local v16    # "phoneType":I
    :cond_c
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_d

    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_e

    .line 3802
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    goto :goto_5

    .line 3804
    :cond_e
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3815
    .end local v7    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v16    # "phoneType":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mPhotoHoldPre:Landroid/widget/ImageView;

    const v3, 0x7f0200e5

    invoke-static {v2, v3}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_3

    .line 3738
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method displaySecondIncomingCallStatus(Lcom/android/internal/telephony/Call;)V
    .locals 28
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 3267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displaySecondIncomingCallStatus(call ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")..."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3269
    if-nez p1, :cond_6

    .line 3270
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->m2ndIncomingName:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 3271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->m2ndIncomingName:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3273
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->m2ndIncomingState:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 3274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->m2ndIncomingState:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3276
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 3277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3279
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 3280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    const/16 v5, 0x8

    invoke-static {v3, v5}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    .line 3283
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->m2ndIncomingCallBanner:Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    .line 3284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->m2ndIncomingCallBanner:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3286
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->mIncomingCall2Info:Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    .line 3287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->mIncomingCall2Info:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3288
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/BannerCallCard;->mNeedShowIncomingCall2Animator:Z

    .line 3518
    :cond_5
    :goto_0
    return-void

    .line 3294
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displaySecondIncomingCallStatus ==> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->mIncomingCall2Info:Landroid/view/ViewGroup;

    if-eqz v3, :cond_7

    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BannerCallCard;->mIncomingCall2Info:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-ne v3, v5, :cond_7

    .line 3299
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/BannerCallCard;->mNeedShowIncomingCall2Animator:Z

    .line 3301
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/phone/BannerCallCard;->mNeedShowIncomingCall2Animator:Z

    if-eqz v3, :cond_8

    .line 3302
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->displaySecondaryIncomingAnimator()V

    .line 3305
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->mIncomingCall2Info:Landroid/view/ViewGroup;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    if-eqz v3, :cond_9

    .line 3306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->mIncomingCall2Info:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    invoke-static {v3}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 3310
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    if-eqz v3, :cond_a

    .line 3311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3314
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3316
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/BannerCallCard;->updateDisplayForConference(Lcom/android/internal/telephony/Call;)V

    .line 3483
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/phone/BannerCallCard;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v4

    .line 3484
    .local v4, "info":Landroid/provider/Telephony$SIMInfo;
    if-eqz v4, :cond_1c

    iget v3, v4, Landroid/provider/Telephony$SIMInfo;->mColor:I

    if-ltz v3, :cond_1c

    iget v3, v4, Landroid/provider/Telephony$SIMInfo;->mColor:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BannerCallCard;->mSimColorMap:[I

    array-length v5, v5

    if-ge v3, v5, :cond_1c

    .line 3488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->m2ndIncomingCallBanner:Landroid/view/ViewGroup;

    if-eqz v3, :cond_b

    .line 3489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->m2ndIncomingCallBanner:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BannerCallCard;->mSimColorMap:[I

    iget v6, v4, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 3502
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->m2ndIncomingCallBanner:Landroid/view/ViewGroup;

    if-eqz v3, :cond_c

    .line 3503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->m2ndIncomingCallBanner:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3506
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->m2ndIncomingName:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->m2ndIncomingState:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3509
    const-string v21, ""

    .line 3510
    .local v21, "callState":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/mediatek/phone/vt/VTCallUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 3511
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f08018a

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 3517
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->m2ndIncomingState:Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3320
    .end local v4    # "info":Landroid/provider/Telephony$SIMInfo;
    .end local v21    # "callState":Ljava/lang/String;
    :cond_d
    const/4 v8, 0x0

    .line 3321
    .local v8, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v24

    .line 3322
    .local v24, "phoneType":I
    const/4 v3, 0x2

    move/from16 v0, v24

    if-ne v0, v3, :cond_e

    .line 3323
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    .line 3332
    :goto_4
    if-nez v8, :cond_11

    .line 3334
    const-string v3, "displaySecondIncomingCallStatus: connection is null, using default values."

    invoke-static {v3}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3340
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .line 3342
    .local v4, "info":Lcom/android/internal/telephony/CallerInfo;
    sget v5, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BannerCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_1

    .line 3324
    .end local v4    # "info":Lcom/android/internal/telephony/CallerInfo;
    :cond_e
    const/4 v3, 0x1

    move/from16 v0, v24

    if-eq v0, v3, :cond_f

    const/4 v3, 0x3

    move/from16 v0, v24

    if-ne v0, v3, :cond_10

    .line 3326
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    goto :goto_4

    .line 3328
    :cond_10
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3346
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  - CONN: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", state = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3348
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v11

    .line 3352
    .local v11, "presentation":I
    const/16 v25, 0x1

    .line 3353
    .local v25, "runQuery":Z
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v22

    .line 3354
    .local v22, "o":Ljava/lang/Object;
    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_16

    .line 3355
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BannerCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v3, v22

    check-cast v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v3, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v5, v3}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v25

    .line 3364
    :goto_5
    const/4 v3, 0x2

    move/from16 v0, v24

    if-ne v0, v3, :cond_14

    .line 3365
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v23

    .line 3366
    .local v23, "obj":Ljava/lang/Object;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v27

    .line 3367
    .local v27, "updatedNumber":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v26

    .line 3368
    .local v26, "updatedCnapName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3369
    .restart local v4    # "info":Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, v23

    instance-of v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_17

    move-object/from16 v3, v22

    .line 3370
    check-cast v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v4, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 3375
    :cond_12
    :goto_6
    if-eqz v4, :cond_14

    .line 3376
    if-eqz v27, :cond_13

    iget-object v3, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 3379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- displayMainCallStatus: updatedNumber = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3382
    const/16 v25, 0x1

    .line 3384
    :cond_13
    if-eqz v26, :cond_14

    iget-object v3, v4, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 3387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- displayMainCallStatus: updatedCnapName = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3390
    const/16 v25, 0x1

    .line 3395
    .end local v4    # "info":Lcom/android/internal/telephony/CallerInfo;
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v26    # "updatedCnapName":Ljava/lang/String;
    .end local v27    # "updatedNumber":Ljava/lang/String;
    :cond_14
    if-eqz v25, :cond_19

    .line 3397
    const-string v3, "- displaySecondIncomingCallStatus: starting CallerInfo query..."

    invoke-static {v3}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3399
    sget-boolean v3, Lcom/android/phone/BannerCallCard;->mLCforUserData:Z

    if-eqz v3, :cond_15

    .line 3401
    const-string v3, "- displaySecondIncomingCallStatus: the language changed to clear userdata"

    invoke-static {v3}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3403
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->clearUserData()V

    .line 3404
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/phone/BannerCallCard;->mLCforUserData:Z

    .line 3407
    :cond_15
    new-instance v20, Lcom/android/phone/BannerCallCard$CallInfoCookie;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/BannerCallCard$CallInfoCookie;-><init>(Lcom/android/phone/BannerCallCard;Lcom/android/internal/telephony/Call;I)V

    .line 3409
    .local v20, "callInfoCookie":Lcom/android/phone/BannerCallCard$CallInfoCookie;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v3, v8, v0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 3413
    .local v4, "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->m2ndIncomingName:Landroid/widget/TextView;

    iget-object v10, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v5, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v5, :cond_18

    const/4 v12, 0x1

    :goto_7
    move-object/from16 v9, p0

    move-object/from16 v13, p1

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/phone/BannerCallCard;->getCallerName(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3419
    iget-object v10, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BannerCallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v9, p0

    move-object/from16 v13, p1

    move-object v14, v8

    invoke-direct/range {v9 .. v19}, Lcom/android/phone/BannerCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/widget/TextView;ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 3358
    .end local v4    # "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v20    # "callInfoCookie":Lcom/android/phone/BannerCallCard$CallInfoCookie;
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v3, v8}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v25

    goto/16 :goto_5

    .line 3371
    .local v4, "info":Lcom/android/internal/telephony/CallerInfo;
    .restart local v23    # "obj":Ljava/lang/Object;
    .restart local v26    # "updatedCnapName":Ljava/lang/String;
    .restart local v27    # "updatedNumber":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_12

    move-object/from16 v4, v22

    .line 3372
    check-cast v4, Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_6

    .line 3413
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v26    # "updatedCnapName":Ljava/lang/String;
    .end local v27    # "updatedNumber":Ljava/lang/String;
    .local v4, "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v20    # "callInfoCookie":Lcom/android/phone/BannerCallCard$CallInfoCookie;
    :cond_18
    const/4 v12, 0x0

    goto :goto_7

    .line 3427
    .end local v4    # "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v20    # "callInfoCookie":Lcom/android/phone/BannerCallCard$CallInfoCookie;
    :cond_19
    const-string v3, "- displaySecondIncomingCallStatus: using data we already have..."

    invoke-static {v3}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3429
    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_1a

    move-object/from16 v10, v22

    .line 3430
    check-cast v10, Lcom/android/internal/telephony/CallerInfo;

    .line 3433
    .local v10, "ci":Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 3434
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    iput v3, v10, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 3435
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    iput v3, v10, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 3437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- displaySecondIncomingCallStatus: CNAP data from Connection: CNAP name="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v10, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Number/Name Presentation="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v10, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   ==> Got CallerInfo; updating display: ci = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3447
    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BannerCallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v9, p0

    move-object/from16 v13, p1

    move-object v14, v8

    invoke-direct/range {v9 .. v19}, Lcom/android/phone/BannerCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/widget/TextView;ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 3450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->m2ndIncomingName:Landroid/widget/TextView;

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object/from16 v13, p1

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/phone/BannerCallCard;->getCallerName(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3452
    .end local v10    # "ci":Lcom/android/internal/telephony/CallerInfo;
    :cond_1a
    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_1b

    .line 3453
    check-cast v22, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v22    # "o":Ljava/lang/Object;
    move-object/from16 v0, v22

    iget-object v10, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 3455
    .restart local v10    # "ci":Lcom/android/internal/telephony/CallerInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- displaySecondIncomingCallStatus: CNAP data from Connection: CNAP name="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v10, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Number/Name Presentation="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v10, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   ==> Got CallerInfoToken; updating display: ci = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3465
    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BannerCallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v9, p0

    move-object/from16 v13, p1

    move-object v14, v8

    invoke-direct/range {v9 .. v19}, Lcom/android/phone/BannerCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/widget/TextView;ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 3468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->m2ndIncomingName:Landroid/widget/TextView;

    const/4 v12, 0x1

    move-object/from16 v9, p0

    move-object/from16 v13, p1

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/phone/BannerCallCard;->getCallerName(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3471
    .end local v10    # "ci":Lcom/android/internal/telephony/CallerInfo;
    .restart local v22    # "o":Ljava/lang/Object;
    :cond_1b
    const-string v3, "BannerCallCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "displaySecondIncomingCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3492
    .end local v8    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v11    # "presentation":I
    .end local v22    # "o":Ljava/lang/Object;
    .end local v24    # "phoneType":I
    .end local v25    # "runQuery":Z
    .local v4, "info":Landroid/provider/Telephony$SIMInfo;
    :cond_1c
    if-nez v4, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_b

    .line 3496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->m2ndIncomingCallBanner:Landroid/view/ViewGroup;

    if-eqz v3, :cond_b

    .line 3497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BannerCallCard;->m2ndIncomingCallBanner:Landroid/view/ViewGroup;

    const v5, 0x7f0200d8

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 3514
    .restart local v21    # "callState":Ljava/lang/String;
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0802ea

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_3
.end method

.method public getCallInfoName(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 3870
    if-nez p1, :cond_1

    .line 3871
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3872
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3887
    :cond_0
    :goto_0
    return-object v0

    .line 3876
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 3877
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3879
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3884
    :cond_2
    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->m2ndHoldName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->m2ndHoldName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3885
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->m2ndHoldName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getCallerName(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 4
    .param p1, "info"    # Lcom/android/internal/telephony/CallerInfo;
    .param p2, "presentation"    # I
    .param p3, "isTemporary"    # Z
    .param p4, "call"    # Lcom/android/internal/telephony/Call;
    .param p5, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 3522
    const-string v0, ""

    .line 3524
    .local v0, "displayName":Ljava/lang/String;
    if-eqz p1, :cond_a

    .line 3540
    sget-boolean v2, Lcom/android/phone/BannerCallCard;->mLocaleChanged:Z

    if-eqz v2, :cond_1

    .line 3541
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3542
    invoke-virtual {p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10402e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3546
    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/BannerCallCard;->mLocaleChanged:Z

    .line 3557
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3558
    .local v1, "number":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "sip:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3559
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3562
    :cond_2
    if-eqz v1, :cond_3

    .line 3563
    invoke-static {}, Lcom/mediatek/phone/HyphonManager;->getInstance()Lcom/mediatek/phone/HyphonManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/phone/HyphonManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3566
    :cond_3
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3572
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3576
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v2, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 3579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> no name *or* number! displayName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3666
    .end local v1    # "number":Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v0

    .line 3582
    .restart local v1    # "number":Ljava/lang/String;
    :cond_5
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v2, :cond_6

    .line 3588
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v2, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 3591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> presentation not allowed! displayName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3594
    :cond_6
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 3596
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 3597
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 3599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> cnapName available: displayName \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3609
    :cond_7
    move-object v0, v1

    .line 3614
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3622
    const-string v2, " (conn != null) && (conn.isIncoming())"

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3635
    :cond_8
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v2, :cond_9

    .line 3641
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v2, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 3644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> valid name, but presentation not allowed! displayName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3648
    :cond_9
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 3662
    .end local v1    # "number":Ljava/lang/String;
    :cond_a
    iget-object v2, p0, Lcom/android/phone/BannerCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v2, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method getOperatorColorByCall(Lcom/android/internal/telephony/Call;)I
    .locals 4
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v1, -0x1

    .line 3249
    if-nez p1, :cond_1

    .line 3262
    :cond_0
    :goto_0
    return v1

    .line 3254
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/phone/BannerCallCard;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 3255
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 3258
    iget v1, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    goto :goto_0
.end method

.method getOperatorNameByCall(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 4
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x3

    .line 3226
    if-nez p1, :cond_1

    .line 3245
    :cond_0
    :goto_0
    return-object v1

    .line 3231
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/phone/BannerCallCard;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 3232
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 3235
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 3236
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 3237
    invoke-virtual {p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08030f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getSimInfoByCall(Lcom/android/internal/telephony/Call;)Landroid/provider/Telephony$SIMInfo;
    .locals 8
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 3193
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_0
    move-object v0, v4

    .line 3219
    :cond_1
    :goto_0
    return-object v0

    .line 3197
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 3199
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 3200
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    goto :goto_0

    .line 3204
    :cond_3
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v3

    .line 3205
    .local v3, "serialNumber":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 3207
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_4

    iget-object v5, v0, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v0, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3212
    :cond_4
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 3214
    .local v1, "info2":Landroid/provider/Telephony$SIMInfo;
    if-eqz v1, :cond_5

    iget-object v5, v1, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, v1, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v0, v1

    .line 3216
    goto :goto_0

    :cond_5
    move-object v0, v4

    .line 3219
    goto :goto_0
.end method

.method public hasMultiplePhoneActive()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3913
    iget-object v7, p0, Lcom/android/phone/BannerCallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v7, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 3914
    .local v0, "cm":Lcom/android/internal/telephony/CallManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v7, v8, :cond_1

    .line 3916
    :cond_0
    const-string v5, "CallManager says in idle state!"

    invoke-static {v5}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    move v5, v6

    .line 3942
    :goto_0
    return v5

    .line 3921
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v4

    .line 3922
    .local v4, "phoneList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CallManager says in idle state!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3923
    const/4 v1, 0x0

    .line 3925
    .local v1, "count":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    .line 3926
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v7, v8, :cond_2

    .line 3927
    add-int/lit8 v1, v1, 0x1

    .line 3929
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "non IDLE phone = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3931
    if-le v1, v5, :cond_2

    .line 3933
    const-string v6, "More than one phone active!"

    invoke-static {v6}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3940
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_3
    const-string v5, "Strange! no phone active but we go here!"

    invoke-static {v5}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    move v5, v6

    .line 3942
    goto :goto_0
.end method

.method public hideCallCardElements()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2441
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2442
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2443
    return-void
.end method

.method public hideCallStates(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/16 v1, 0x8

    .line 3893
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v0, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3895
    const-string v0, "mSimIndicator GONE"

    invoke-static {v0}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3897
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3899
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3901
    const-string v0, "mSecondaryCallInfo GONE"

    invoke-static {v0}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 3903
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 3905
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 258
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallCard onFinishInflate(this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 263
    const v0, 0x7f0b000c

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    .line 264
    const v0, 0x7f0b000d

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 265
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 267
    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    .line 268
    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mProviderInfo:Landroid/view/ViewGroup;

    .line 269
    const v0, 0x7f0b0038

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mProviderLabel:Landroid/widget/TextView;

    .line 270
    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mProviderAddress:Landroid/widget/TextView;

    .line 271
    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mCallStateLabel:Landroid/widget/TextView;

    .line 276
    invoke-virtual {p0}, Lcom/android/phone/BannerCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/BannerCallCard;->mTextColorCallTypeSip:I

    .line 280
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mPhoto:Landroid/widget/ImageView;

    .line 281
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mPhotoDimEffect:Landroid/view/View;

    .line 283
    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mName:Landroid/widget/TextView;

    .line 284
    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 285
    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mLabel:Landroid/widget/TextView;

    .line 286
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mCallTypeLabel:Landroid/widget/TextView;

    .line 290
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    .line 293
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mOperatorName:Landroid/widget/TextView;

    .line 294
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mSimIndicator:Landroid/widget/TextView;

    .line 295
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mPhoneNumberGeoDescription:Landroid/widget/TextView;

    .line 297
    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mSimCardImage:Landroid/widget/ImageView;

    .line 299
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const v0, 0x7f0b010e

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mIncomingCall2Info:Landroid/view/ViewGroup;

    .line 302
    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    .line 303
    const v0, 0x7f0b003d

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->m2ndIncomingName:Landroid/widget/TextView;

    .line 304
    const v0, 0x7f0b003e

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->m2ndIncomingState:Landroid/widget/TextView;

    .line 305
    const v0, 0x7f0b00ba

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->m2ndIncomingCallBanner:Landroid/view/ViewGroup;

    .line 307
    const v0, 0x7f0b00b9

    invoke-virtual {p0, v0}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BannerCallCard;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    .line 308
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 309
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 310
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/BannerCallCard;->callCardListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    new-instance v1, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/BannerCallCard;->mIncomingCallInfoWidth:I

    .line 318
    invoke-virtual {p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/BannerCallCard;->mIncomingCallInfoHeight:I

    .line 321
    invoke-virtual {p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/BannerCallCard;->mIncomingCallInfoTopMargin:I

    .line 326
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->getCallCardExtension()Lcom/mediatek/phone/ext/CallCardExtension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/phone/ext/CallCardExtension;->onFinishInflate(Landroid/view/View;)V

    .line 329
    return-void
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p3, "photoIcon"    # Landroid/graphics/Bitmap;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 1097
    iget-object v4, p0, Lcom/android/phone/BannerCallCard;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1098
    iget-object v4, p0, Lcom/android/phone/BannerCallCard;->mLoadingPersonUri:Landroid/net/Uri;

    if-eqz v4, :cond_1

    .line 1106
    iget-object v4, p0, Lcom/android/phone/BannerCallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, p0, Lcom/android/phone/BannerCallCard;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->sendViewNotificationAsync(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1114
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/BannerCallCard;->mLoadingPersonUri:Landroid/net/Uri;

    move-object v0, p4

    .line 1116
    check-cast v0, Lcom/android/phone/BannerCallCard$AsyncLoadCookie;

    .line 1117
    .local v0, "asyncLoadCookie":Lcom/android/phone/BannerCallCard$AsyncLoadCookie;
    iget-object v2, v0, Lcom/android/phone/BannerCallCard$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1118
    .local v2, "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    iget-object v3, v0, Lcom/android/phone/BannerCallCard$AsyncLoadCookie;->imageView:Landroid/widget/ImageView;

    .line 1119
    .local v3, "imageView":Landroid/widget/ImageView;
    iget-object v1, v0, Lcom/android/phone/BannerCallCard$AsyncLoadCookie;->call:Lcom/android/internal/telephony/Call;

    .line 1121
    .local v1, "call":Lcom/android/internal/telephony/Call;
    iput-object p2, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 1122
    iput-object p3, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    .line 1123
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 1127
    if-eqz p2, :cond_2

    .line 1128
    invoke-static {v3, p2}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1135
    :goto_1
    if-nez p1, :cond_0

    .line 1136
    invoke-direct {p0, v1, v3}, Lcom/android/phone/BannerCallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;Landroid/widget/ImageView;)V

    .line 1138
    :cond_0
    return-void

    .line 1111
    .end local v0    # "asyncLoadCookie":Lcom/android/phone/BannerCallCard$AsyncLoadCookie;
    .end local v1    # "call":Lcom/android/internal/telephony/Call;
    .end local v2    # "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    .end local v3    # "imageView":Landroid/widget/ImageView;
    :cond_1
    const-string v4, "BannerCallCard"

    const-string v5, "Person Uri isn\'t available while Image is successfully loaded."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1129
    .restart local v0    # "asyncLoadCookie":Lcom/android/phone/BannerCallCard$AsyncLoadCookie;
    .restart local v1    # "call":Lcom/android/internal/telephony/Call;
    .restart local v2    # "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    .restart local v3    # "imageView":Landroid/widget/ImageView;
    :cond_2
    if-eqz p3, :cond_3

    .line 1130
    invoke-static {v3, p3}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1132
    :cond_3
    const v4, 0x7f0200e5

    invoke-static {v3, v4}, Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_1
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 17
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "ci"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete: token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cookie "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ci "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 997
    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/android/phone/BannerCallCard$CallInfoCookie;

    if-eqz v1, :cond_8

    .line 1003
    const-string v1, "callerinfo query complete, cookie is CallInfo"

    invoke-static {v1}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    move-object/from16 v13, p2

    .line 1004
    check-cast v13, Lcom/android/phone/BannerCallCard$CallInfoCookie;

    .line 1005
    .local v13, "callInfo":Lcom/android/phone/BannerCallCard$CallInfoCookie;
    iget v12, v13, Lcom/android/phone/BannerCallCard$CallInfoCookie;->bannerNumber:I

    .line 1006
    .local v12, "bannerNumber":I
    iget-object v5, v13, Lcom/android/phone/BannerCallCard$CallInfoCookie;->call:Lcom/android/internal/telephony/Call;

    .line 1007
    .local v5, "call":Lcom/android/internal/telephony/Call;
    const/4 v6, 0x0

    .line 1008
    .local v6, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    .line 1009
    .local v16, "phoneType":I
    const/4 v1, 0x2

    move/from16 v0, v16

    if-ne v0, v1, :cond_2

    .line 1010
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 1021
    :goto_0
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .line 1022
    .local v3, "presentation":I
    if-eqz v6, :cond_0

    .line 1023
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    .line 1025
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onQueryComplete: presentation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contactExists="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 1034
    if-nez v12, :cond_6

    .line 1036
    const-string v1, "banner number is PRIMARY_CALL_BANNER"

    invoke-static {v1}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 1037
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v1, v6, v0, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v14

    .line 1039
    .local v14, "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    move-object/from16 v0, p3

    iget-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_5

    .line 1040
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .end local v3    # "presentation":I
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/BannerCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 1047
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BannerCallCard;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v1}, Lcom/android/phone/BannerCallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;Landroid/widget/ImageView;)V

    .line 1087
    .end local v5    # "call":Lcom/android/internal/telephony/Call;
    .end local v6    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v12    # "bannerNumber":I
    .end local v13    # "callInfo":Lcom/android/phone/BannerCallCard$CallInfoCookie;
    .end local v14    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v16    # "phoneType":I
    .end local p2    # "cookie":Ljava/lang/Object;
    :cond_1
    :goto_2
    return-void

    .line 1011
    .restart local v5    # "call":Lcom/android/internal/telephony/Call;
    .restart local v6    # "conn":Lcom/android/internal/telephony/Connection;
    .restart local v12    # "bannerNumber":I
    .restart local v13    # "callInfo":Lcom/android/phone/BannerCallCard$CallInfoCookie;
    .restart local v16    # "phoneType":I
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x1

    move/from16 v0, v16

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    move/from16 v0, v16

    if-ne v0, v1, :cond_4

    .line 1013
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    goto :goto_0

    .line 1015
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1044
    .restart local v3    # "presentation":I
    .restart local v14    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_5
    iget-object v2, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/BannerCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto :goto_1

    .line 1048
    .end local v14    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_6
    const/4 v1, 0x1

    if-ne v1, v12, :cond_7

    .line 1050
    const-string v1, "banner number is SECONDARY_CALL_BANNER"

    invoke-static {v1}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 1051
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-static {v1, v5, v0, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v15

    .line 1054
    .local v15, "infoToken":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BannerCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    iget-object v2, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1057
    iget-object v2, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/BannerCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/BannerCallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/phone/BannerCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/widget/TextView;ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 1060
    .end local v15    # "infoToken":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_7
    const/4 v1, 0x2

    if-ne v1, v12, :cond_1

    .line 1061
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BannerCallCard;->m2ndHoldName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-static {v1, v5, v0, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v15

    .line 1064
    .restart local v15    # "infoToken":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BannerCallCard;->m2ndHoldName:Landroid/widget/TextView;

    iget-object v2, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    iget-object v2, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/BannerCallCard;->m2ndHoldName:Landroid/widget/TextView;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/BannerCallCard;->mPhotoHoldPre:Landroid/widget/ImageView;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/phone/BannerCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/widget/TextView;ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto/16 :goto_2

    .line 1072
    .end local v3    # "presentation":I
    .end local v5    # "call":Lcom/android/internal/telephony/Call;
    .end local v6    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v12    # "bannerNumber":I
    .end local v13    # "callInfo":Lcom/android/phone/BannerCallCard$CallInfoCookie;
    .end local v15    # "infoToken":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v16    # "phoneType":I
    :cond_8
    move-object/from16 v0, p2

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_9

    .line 1074
    const-string v1, "callerinfo query complete, updating ui from ongoing or onhold"

    invoke-static {v1}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 1075
    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "cookie":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BannerCallCard;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1077
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/android/phone/InCallUiState$FakeCall;

    if-eqz v1, :cond_1

    .line 1078
    const-string v1, "callerinfo query complete, updating fake call ui!"

    invoke-static {v1}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 1079
    if-eqz p3, :cond_1

    .line 1080
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ci.name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ci.phoneNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 1082
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1083
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BannerCallCard;->mName:Landroid/widget/TextView;

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 0
    .param p1, "timeElapsed"    # J

    .prologue
    .line 249
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/BannerCallCard;->updateElapsedTimeWidget(J)V

    .line 250
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .param p1, "inCallScreen"    # Lcom/android/phone/InCallScreen;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/phone/BannerCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 243
    return-void
.end method

.method setIncomingCallWidgetHint(II)V
    .locals 0
    .param p1, "hintTextResId"    # I
    .param p2, "hintColorResId"    # I

    .prologue
    .line 2451
    iput p1, p0, Lcom/android/phone/BannerCallCard;->mIncomingCallWidgetHintTextResId:I

    .line 2452
    iput p2, p0, Lcom/android/phone/BannerCallCard;->mIncomingCallWidgetHintColorResId:I

    .line 2453
    return-void
.end method

.method setSecondaryCallClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1690
    :cond_0
    return-void
.end method

.method public updateElapsedTimeWidget(J)V
    .locals 2
    .param p1, "timeElapsed"    # J

    .prologue
    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateElapsedTimeWidget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 1387
    iget-object v0, p0, Lcom/android/phone/BannerCallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1388
    return-void
.end method

.method updateElapsedTimeWidget(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 1375
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    .line 1376
    .local v0, "duration":J
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/BannerCallCard;->updateElapsedTimeWidget(J)V

    .line 1379
    return-void
.end method

.method public updateForLanguageChange()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2574
    sput-boolean v0, Lcom/android/phone/BannerCallCard;->mLocaleChanged:Z

    .line 2575
    sput-boolean v0, Lcom/android/phone/BannerCallCard;->mLCforUserData:Z

    .line 2576
    sput-boolean v0, Lcom/android/phone/BannerCallCard;->mLCforUserDataHoldCall:Z

    .line 2577
    sput-boolean v0, Lcom/android/phone/BannerCallCard;->mLCforUserDataSecondHoldCall:Z

    .line 2578
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 7
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateState("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateState: current active call is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    .line 347
    .local v4, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 348
    .local v2, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 349
    .local v1, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 352
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/phone/BannerCallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 353
    invoke-direct {p0, v4}, Lcom/android/phone/BannerCallCard;->updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 361
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v5}, Lcom/mediatek/phone/DualTalkUtils;->isRingingWhenOutgoing()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 378
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_3

    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v3, 0x1

    .line 383
    .local v3, "skipUpdateRingingCall":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 384
    invoke-direct {p0, p1}, Lcom/android/phone/BannerCallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    .line 433
    .end local v3    # "skipUpdateRingingCall":Z
    :goto_1
    return-void

    .line 378
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 389
    .restart local v3    # "skipUpdateRingingCall":Z
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/phone/BannerCallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;)V

    .line 432
    .end local v3    # "skipUpdateRingingCall":Z
    :goto_2
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/phone/ext/ExtensionManager;->getCallCardExtension()Lcom/mediatek/phone/ext/CallCardExtension;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/mediatek/phone/ext/CallCardExtension;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_1

    .line 390
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_7

    .line 400
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/phone/BannerCallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_2

    .line 404
    :cond_7
    iget-object v5, p0, Lcom/android/phone/BannerCallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v5, v5, Lcom/android/phone/InCallUiState;->showAlreadyDisconnectedState:Z

    if-eqz v5, :cond_8

    .line 413
    invoke-direct {p0, p1}, Lcom/android/phone/BannerCallCard;->updateAlreadyDisconnected(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_2

    .line 428
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/phone/BannerCallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_2
.end method
