.class public Lcom/android/phone/CallCard;
.super Landroid/widget/LinearLayout;
.source "CallCard.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/CallTime$OnTickListener;
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCard$4;,
        Lcom/android/phone/CallCard$CallInfoCookie;,
        Lcom/android/phone/CallCard$AsyncLoadCookie;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "CallCard"

.field private static final MESSAGE_DELAY:I = 0x1f4

.field private static final MESSAGE_SHOW_UNKNOWN_PHOTO:I = 0x65

.field private static final PRIMARY_CALL_BANNER:I = 0x0

.field private static final SECONDARY_CALL_BANNER:I = 0x1

.field private static final SECOND_HOLD_CALL_BANNER:I = 0x2

.field private static final TOKEN_DO_NOTHING:I = 0x1

.field private static final TOKEN_UPDATE_PHOTO_FOR_CALL_STATE:I

.field private static mLCforUserData:Z

.field private static mLCforUserDataHoldCall:Z

.field private static mLocaleChanged:Z

.field private static sLCforUserDataSecondHoldCall:Z


# instance fields
.field callCardListener:Landroid/view/View$OnClickListener;

.field m2ndHoldName:Landroid/widget/TextView;

.field m2ndHoldState:Landroid/widget/TextView;

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

.field private mSecondHoldCallBanner:Landroid/view/ViewGroup;

.field private mSecondIncomingCallBanner:Landroid/view/ViewGroup;

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

.field private mSimColorMap:[I

.field private mSimIndicator:Landroid/widget/TextView;

.field private mSimIndicatorPaddingLeft:I

.field private mSimIndicatorPaddingRight:I

.field private mSimInfo:Landroid/provider/Telephony$SIMInfo;

.field private mTextColorCallTypeSip:I

.field private switchToBanner:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2316
    sput-boolean v0, Lcom/android/phone/CallCard;->mLocaleChanged:Z

    .line 2317
    sput-boolean v0, Lcom/android/phone/CallCard;->mLCforUserData:Z

    .line 2318
    sput-boolean v0, Lcom/android/phone/CallCard;->mLCforUserDataHoldCall:Z

    .line 2320
    sput-boolean v0, Lcom/android/phone/CallCard;->sLCforUserDataSecondHoldCall:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 202
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 184
    new-instance v0, Lcom/android/phone/CallCard$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallCard$1;-><init>(Lcom/android/phone/CallCard;)V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    .line 2322
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSimColorMap:[I

    .line 2329
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSimBorderMap:[I

    .line 2372
    iput v1, p0, Lcom/android/phone/CallCard;->mShowAnimator2End:I

    .line 3547
    new-instance v0, Lcom/android/phone/CallCard$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CallCard$2;-><init>(Lcom/android/phone/CallCard;)V

    iput-object v0, p0, Lcom/android/phone/CallCard;->callCardListener:Landroid/view/View$OnClickListener;

    .line 3653
    new-instance v0, Lcom/android/phone/CallCard$3;

    invoke-direct {v0, p0}, Lcom/android/phone/CallCard$3;-><init>(Lcom/android/phone/CallCard;)V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 204
    const-class v0, Lcom/mediatek/common/telephony/IServiceStateExt;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/IServiceStateExt;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    .line 207
    const-string v0, "CallCard constructor..."

    invoke-static {v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 209
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

    invoke-static {v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    .line 216
    new-instance v0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    .line 218
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/phone/CallCard;->mDensity:F

    .line 223
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mCallBannerSidePadding:I

    .line 224
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mCallBannerTopBottomPadding:I

    .line 225
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mSimIndicatorPaddingLeft:I

    .line 226
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mSimIndicatorPaddingRight:I

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Density: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CallCard;->mDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 228
    return-void

    .line 2322
    :array_0
    .array-data 4
        0x7f0200d4
        0x7f0200d5
        0x7f0200d6
        0x7f0200d7
    .end array-data

    .line 2329
    :array_1
    .array-data 4
        0x7f0200f4
        0x7f0200f7
        0x7f0200f5
        0x7f0200f8
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/CallCard;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallCard;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/ImageView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ImageView;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallCard;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallCard;

    .prologue
    .line 75
    iget v0, p0, Lcom/android/phone/CallCard;->mIncomingCallInfoTopMargin:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/CallCard;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallCard;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/phone/CallCard;->mIncomingCall2Info:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/CallCard;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallCard;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/phone/CallCard;->mNeedShowIncomingCall2Animator:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/phone/CallCard;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallCard;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/phone/CallCard;->mNeedShowIncomingCall2Animator:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/CallCard;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallCard;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/phone/CallCard;->mShowSwtchCall2Animator:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/CallCard;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallCard;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/phone/CallCard;->mShowSwtchCall2Animator:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/CallCard;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallCard;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/phone/CallCard;->displaySwitchIncomingAnimator()V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CallCard;)Lcom/android/phone/InCallScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallCard;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallCard;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallCard;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/CallCard;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallCard;

    .prologue
    .line 75
    iget v0, p0, Lcom/android/phone/CallCard;->mShowAnimator2End:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/CallCard;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallCard;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/phone/CallCard;->mShowAnimator2End:I

    return p1
.end method

.method static synthetic access$708(Lcom/android/phone/CallCard;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/phone/CallCard;

    .prologue
    .line 75
    iget v0, p0, Lcom/android/phone/CallCard;->mShowAnimator2End:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/CallCard;->mShowAnimator2End:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallCard;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallCard;

    .prologue
    .line 75
    iget v0, p0, Lcom/android/phone/CallCard;->mIncomingCallInfoWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/CallCard;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallCard;

    .prologue
    .line 75
    iget v0, p0, Lcom/android/phone/CallCard;->mIncomingCallInfoHeight:I

    return v0
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 2283
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 2284
    .local v0, "eventText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2285
    .local v1, "size":I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2287
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2288
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2290
    :cond_0
    return-void
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 23
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;
    .param p2, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 703
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

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 705
    if-nez p2, :cond_1

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    const/16 v19, 0x0

    .line 712
    .local v19, "showBannerButton":Z
    invoke-static {}, Lcom/android/phone/Util;->isShellUiStyle()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 713
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 714
    const/16 v19, 0x1

    .line 716
    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/mediatek/phone/vt/VTCallUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isSipCall()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 717
    :cond_3
    const/16 v19, 0x0

    .line 719
    :cond_4
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallCard;->showSwitchBaneerButton(Ljava/lang/Boolean;)V

    .line 723
    :cond_5
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

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 727
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V

    .line 731
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v20

    .line 732
    .local v20, "simInfo":Landroid/provider/Telephony$SIMInfo;
    if-eqz v20, :cond_6

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_6

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 749
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->updateCallBannerBackground(Lcom/android/internal/telephony/Call;Landroid/view/ViewGroup;)V

    .line 750
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_8

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mOperatorName:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mOperatorName:Landroid/widget/TextView;

    const v4, 0x7f08030f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 764
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 766
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateDisplayForConference(Lcom/android/internal/telephony/Call;)V

    .line 884
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;Landroid/widget/ImageView;)V

    .line 889
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    if-eqz v2, :cond_0

    .line 891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintColorResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 741
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_7

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    const v4, 0x7f08030f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 745
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 755
    :cond_8
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isEccCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mOperatorName:Landroid/widget/TextView;

    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->getNetworkOperatorName(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mOperatorName:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 759
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mOperatorName:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 770
    :cond_a
    const/4 v7, 0x0

    .line 771
    .local v7, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v17

    .line 772
    .local v17, "phoneType":I
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_b

    .line 773
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 781
    :goto_4
    if-nez v7, :cond_e

    .line 782
    const-string v2, "displayMainCallStatus: connection is null, using default values."

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 787
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 788
    .local v3, "info":Lcom/android/internal/telephony/CallerInfo;
    sget v4, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_3

    .line 774
    .end local v3    # "info":Lcom/android/internal/telephony/CallerInfo;
    :cond_b
    const/4 v2, 0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_c

    const/4 v2, 0x3

    move/from16 v0, v17

    if-ne v0, v2, :cond_d

    .line 776
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    goto :goto_4

    .line 778
    :cond_d
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

    .line 790
    :cond_e
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

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 791
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v10

    .line 795
    .local v10, "presentation":I
    const/16 v18, 0x1

    .line 796
    .local v18, "runQuery":Z
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v15

    .line 797
    .local v15, "o":Ljava/lang/Object;
    instance-of v2, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_13

    .line 798
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object v2, v15

    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v2, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v4, v2}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v18

    .line 806
    :goto_5
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_11

    .line 807
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v16

    .line 808
    .local v16, "obj":Ljava/lang/Object;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v22

    .line 809
    .local v22, "updatedNumber":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v21

    .line 810
    .local v21, "updatedCnapName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 811
    .restart local v3    # "info":Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_14

    move-object v2, v15

    .line 812
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 817
    :cond_f
    :goto_6
    if-eqz v3, :cond_11

    .line 818
    if-eqz v22, :cond_10

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 819
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- displayMainCallStatus: updatedNumber = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 821
    const/16 v18, 0x1

    .line 823
    :cond_10
    if-eqz v21, :cond_11

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 824
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- displayMainCallStatus: updatedCnapName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 826
    const/16 v18, 0x1

    .line 831
    .end local v3    # "info":Lcom/android/internal/telephony/CallerInfo;
    .end local v16    # "obj":Ljava/lang/Object;
    .end local v21    # "updatedCnapName":Ljava/lang/String;
    .end local v22    # "updatedNumber":Ljava/lang/String;
    :cond_11
    if-eqz v18, :cond_16

    .line 832
    const-string v2, "- displayMainCallStatus: starting CallerInfo query..."

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 834
    sget-boolean v2, Lcom/android/phone/CallCard;->mLCforUserData:Z

    if-eqz v2, :cond_12

    .line 835
    const-string v2, "- displayMainCallStatus: the language changed to clear userdata"

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->clearUserData()V

    .line 837
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/CallCard;->mLCforUserData:Z

    .line 840
    :cond_12
    new-instance v14, Lcom/android/phone/CallCard$CallInfoCookie;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v14, v0, v1, v2}, Lcom/android/phone/CallCard$CallInfoCookie;-><init>(Lcom/android/phone/CallCard;Lcom/android/internal/telephony/Call;I)V

    .line 842
    .local v14, "callInfoCookie":Lcom/android/phone/CallCard$CallInfoCookie;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v2, v7, v0, v14}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v3

    .line 844
    .local v3, "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v9, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v2, :cond_15

    const/4 v11, 0x1

    :goto_7
    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_3

    .line 801
    .end local v3    # "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v14    # "callInfoCookie":Lcom/android/phone/CallCard$CallInfoCookie;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v2, v7}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v18

    goto/16 :goto_5

    .line 813
    .local v3, "info":Lcom/android/internal/telephony/CallerInfo;
    .restart local v16    # "obj":Ljava/lang/Object;
    .restart local v21    # "updatedCnapName":Ljava/lang/String;
    .restart local v22    # "updatedNumber":Ljava/lang/String;
    :cond_14
    instance-of v2, v15, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_f

    move-object v3, v15

    .line 814
    check-cast v3, Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_6

    .line 844
    .end local v16    # "obj":Ljava/lang/Object;
    .end local v21    # "updatedCnapName":Ljava/lang/String;
    .end local v22    # "updatedNumber":Ljava/lang/String;
    .local v3, "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v14    # "callInfoCookie":Lcom/android/phone/CallCard$CallInfoCookie;
    :cond_15
    const/4 v11, 0x0

    goto :goto_7

    .line 850
    .end local v3    # "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v14    # "callInfoCookie":Lcom/android/phone/CallCard$CallInfoCookie;
    :cond_16
    const-string v2, "- displayMainCallStatus: using data we already have..."

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 851
    instance-of v2, v15, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_17

    move-object v9, v15

    .line 852
    check-cast v9, Lcom/android/internal/telephony/CallerInfo;

    .line 854
    .local v9, "ci":Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 855
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 856
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 857
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

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 860
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ==> Got CallerInfo; updating display: ci = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 861
    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_3

    .line 862
    .end local v9    # "ci":Lcom/android/internal/telephony/CallerInfo;
    :cond_17
    instance-of v2, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_18

    .line 863
    check-cast v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v15    # "o":Ljava/lang/Object;
    iget-object v9, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 864
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

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 867
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ==> Got CallerInfoToken; updating display: ci = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 868
    const/4 v11, 0x1

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_3

    .line 870
    .end local v9    # "ci":Lcom/android/internal/telephony/CallerInfo;
    .restart local v15    # "o":Ljava/lang/Object;
    :cond_18
    const-string v2, "CallCard"

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

    goto/16 :goto_3
.end method

.method private displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 23
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;
    .param p2, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 1275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displaySecondaryCallStatus(call ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1277
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isOtaCallInActiveState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1278
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1482
    :goto_0
    return-void

    .line 1282
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    .line 1284
    .local v22, "state":Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v21

    .line 1285
    .local v21, "simInfo":Landroid/provider/Telephony$SIMInfo;
    sget-object v2, Lcom/android/phone/CallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 1293
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->showSecondaryCallInfo()V

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->updateCallBannerBackground(Lcom/android/internal/telephony/Call;Landroid/view/ViewGroup;)V

    .line 1314
    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1315
    const-string v2, "==> conference call."

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0801c6

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    const v3, 0x7f0200e1

    invoke-static {v2, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1364
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-static {v2}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    goto :goto_0

    .line 1324
    :cond_3
    const-string v2, "==> NOT a conf call; call startGetCallerInfo..."

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1325
    const/16 v17, 0x0

    .line 1326
    .local v17, "infoToken":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget-boolean v2, Lcom/android/phone/CallCard;->mLCforUserDataHoldCall:Z

    if-eqz v2, :cond_4

    .line 1327
    const-string v2, "- displaySecondaryCallStatus: the language changed to clear userdata"

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1328
    new-instance v13, Lcom/android/phone/CallCard$CallInfoCookie;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v13, v0, v1, v2}, Lcom/android/phone/CallCard$CallInfoCookie;-><init>(Lcom/android/phone/CallCard;Lcom/android/internal/telephony/Call;I)V

    .line 1329
    .local v13, "callInfoCookie":Lcom/android/phone/CallCard$CallInfoCookie;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-static {v2, v0, v1, v13, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v17

    .line 1330
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/CallCard;->mLCforUserDataHoldCall:Z

    .line 1334
    .end local v13    # "callInfoCookie":Lcom/android/phone/CallCard$CallInfoCookie;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v2, :cond_8

    .line 1344
    const/4 v7, 0x0

    .line 1345
    .local v7, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v20

    .line 1346
    .local v20, "phoneType":I
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_5

    .line 1347
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 1355
    :goto_3
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 1356
    .local v4, "presentation":I
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v12}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/widget/TextView;ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 1332
    .end local v4    # "presentation":I
    .end local v7    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v20    # "phoneType":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-static {v2, v0, v1, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v17

    goto :goto_2

    .line 1348
    .restart local v7    # "conn":Lcom/android/internal/telephony/Connection;
    .restart local v20    # "phoneType":I
    :cond_5
    const/4 v2, 0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    move/from16 v0, v20

    if-ne v0, v2, :cond_7

    .line 1350
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    goto :goto_3

    .line 1352
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1360
    .end local v7    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v20    # "phoneType":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    const v3, 0x7f0200e5

    invoke-static {v2, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_1

    .line 1369
    .end local v17    # "infoToken":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->showSecondaryCallInfo()V

    .line 1370
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 1379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v2, :cond_9

    .line 1380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->updateCallBannerBackground(Lcom/android/internal/telephony/Call;Landroid/view/ViewGroup;)V

    .line 1388
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    .line 1389
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->showSecondaryCallInfo()V

    .line 1391
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v14

    .line 1392
    .local v14, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_a

    .line 1397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0802ee

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    const v3, 0x7f0200e5

    invoke-static {v2, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1472
    .end local v14    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1403
    .restart local v14    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 1404
    .restart local v7    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-static {v2, v7, v0, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v17

    .line 1410
    .restart local v17    # "infoToken":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v16, v0

    .line 1412
    .local v16, "info":Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 1413
    .local v18, "name":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1414
    .local v15, "forceGenericPhoto":Z
    if-eqz v16, :cond_b

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v2, v3, :cond_b

    .line 1416
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    .line 1418
    const/4 v15, 0x1

    .line 1420
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1423
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v2, :cond_d

    .line 1424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v2, v3}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1428
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-wide v5, v3, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 1433
    .local v19, "personUri":Landroid/net/Uri;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    .line 1435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1440
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Lcom/android/phone/CallCard$AsyncLoadCookie;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v5, v6, v0, v1}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-static {v2, v3, v0, v1, v5}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    const-wide/16 v5, 0x1f4

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1448
    .end local v19    # "personUri":Landroid/net/Uri;
    :cond_c
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 1449
    .restart local v4    # "presentation":I
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v12}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/widget/TextView;ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 1460
    .end local v4    # "presentation":I
    :cond_d
    if-nez v15, :cond_e

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v2, :cond_e

    .line 1461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto/16 :goto_4

    .line 1463
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    const v3, 0x7f0200e5

    invoke-static {v2, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_4

    .line 1468
    .end local v7    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v14    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v15    # "forceGenericPhoto":Z
    .end local v16    # "info":Lcom/android/internal/telephony/CallerInfo;
    .end local v17    # "infoToken":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v18    # "name":Ljava/lang/String;
    :cond_f
    const-string v2, "CallCard"

    const-string v3, "displaySecondaryCallStatus: ACTIVE state on non-CDMA device"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_4

    .line 1285
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private displaySecondaryIncomingAnimator()V
    .locals 13

    .prologue
    const v2, 0x3ecccccd

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 3703
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3705
    .local v9, "animationSet":Landroid/view/animation/AnimationSet;
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    iget v4, p0, Lcom/android/phone/CallCard;->mIncomingCallInfoWidth:I

    add-int v10, v3, v4

    .line 3706
    .local v10, "dx":I
    iget v3, p0, Lcom/android/phone/CallCard;->mIncomingCallInfoTopMargin:I

    iget v4, p0, Lcom/android/phone/CallCard;->mIncomingCallInfoHeight:I

    add-int v11, v3, v4

    .line 3707
    .local v11, "dy":I
    new-instance v12, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v10

    int-to-float v4, v11

    invoke-direct {v12, v1, v3, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 3708
    .local v12, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0x12c

    invoke-virtual {v12, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 3709
    invoke-virtual {v9, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3711
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v1

    move v7, v5

    move v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 3713
    .local v0, "myAnimationScale":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 3714
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3716
    iget-object v1, p0, Lcom/android/phone/CallCard;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3717
    iget-object v1, p0, Lcom/android/phone/CallCard;->mIncomingCall2Info:Landroid/view/ViewGroup;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3718
    return-void
.end method

.method private displaySwitchIncomingAnimator()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1f4

    const v1, 0x3ecccccd

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 3722
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    iget v4, p0, Lcom/android/phone/CallCard;->mIncomingCallInfoWidth:I

    sub-int v10, v3, v4

    .line 3724
    .local v10, "dx":I
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3725
    .local v9, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v11, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v10

    iget v4, p0, Lcom/android/phone/CallCard;->mIncomingCallInfoTopMargin:I

    int-to-float v4, v4

    invoke-direct {v11, v3, v2, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 3726
    .local v11, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v11, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 3727
    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3729
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 3731
    .local v0, "myAnimationScale":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 3732
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3733
    iget-object v1, p0, Lcom/android/phone/CallCard;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3735
    iget-object v1, p0, Lcom/android/phone/CallCard;->mIncomingCall2Info:Landroid/view/ViewGroup;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3736
    return-void
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 1522
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1525
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    .line 1526
    const-string v3, "getCallFailedString: connection is null, using default values."

    invoke-static {v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1529
    const v2, 0x7f0802eb

    .line 1606
    .local v2, "resID":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1532
    .end local v2    # "resID":I
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 1538
    .local v1, "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v3, Lcom/android/phone/CallCard$4;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1602
    const v2, 0x7f0802eb

    .restart local v2    # "resID":I
    goto :goto_0

    .line 1540
    .end local v2    # "resID":I
    :pswitch_0
    const v2, 0x7f0801b1

    .line 1541
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1544
    .end local v2    # "resID":I
    :pswitch_1
    const v2, 0x7f0801b2

    .line 1545
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1548
    .end local v2    # "resID":I
    :pswitch_2
    const v2, 0x7f0801b3

    .line 1549
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1552
    .end local v2    # "resID":I
    :pswitch_3
    const v2, 0x7f0801b4

    .line 1553
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1556
    .end local v2    # "resID":I
    :pswitch_4
    const v2, 0x7f0801b5

    .line 1557
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1560
    .end local v2    # "resID":I
    :pswitch_5
    const v2, 0x7f0801b6

    .line 1561
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1564
    .end local v2    # "resID":I
    :pswitch_6
    const v2, 0x7f0801b8

    .line 1565
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1568
    .end local v2    # "resID":I
    :pswitch_7
    const v2, 0x7f0801b7

    .line 1569
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1573
    .end local v2    # "resID":I
    :pswitch_8
    const v2, 0x7f0801b9

    .line 1574
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1577
    .end local v2    # "resID":I
    :pswitch_9
    const v2, 0x7f0801ba

    .line 1578
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1581
    .end local v2    # "resID":I
    :pswitch_a
    const v2, 0x7f0801bb

    .line 1582
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1586
    .end local v2    # "resID":I
    :pswitch_b
    iget-object v3, p0, Lcom/android/phone/CallCard;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v3}, Lcom/mediatek/common/telephony/IServiceStateExt;->isImeiLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    const v2, 0x7f0801c4

    .line 1590
    .restart local v2    # "resID":I
    :goto_1
    goto :goto_0

    .line 1586
    .end local v2    # "resID":I
    :cond_1
    const v2, 0x7f0801bc

    goto :goto_1

    .line 1593
    :pswitch_c
    const v2, 0x7f0801bd

    .line 1594
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1598
    .end local v2    # "resID":I
    :pswitch_d
    const v2, 0x7f0801c5

    .line 1599
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1538
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
    .line 2831
    if-nez p1, :cond_0

    .line 2832
    const-string v1, "getCallFailedString: connection is null, using default values."

    invoke-static {v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2835
    const v0, 0x7f0802eb

    .line 2905
    .local v0, "resID":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2837
    .end local v0    # "resID":I
    :cond_0
    sget-object v1, Lcom/android/phone/CallCard$4;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2901
    const v0, 0x7f0802eb

    .restart local v0    # "resID":I
    goto :goto_0

    .line 2839
    .end local v0    # "resID":I
    :pswitch_0
    const v0, 0x7f0801b1

    .line 2840
    .restart local v0    # "resID":I
    goto :goto_0

    .line 2843
    .end local v0    # "resID":I
    :pswitch_1
    const v0, 0x7f0801b2

    .line 2844
    .restart local v0    # "resID":I
    goto :goto_0

    .line 2847
    .end local v0    # "resID":I
    :pswitch_2
    const v0, 0x7f0801b3

    .line 2848
    .restart local v0    # "resID":I
    goto :goto_0

    .line 2851
    .end local v0    # "resID":I
    :pswitch_3
    const v0, 0x7f0801b4

    .line 2852
    .restart local v0    # "resID":I
    goto :goto_0

    .line 2855
    .end local v0    # "resID":I
    :pswitch_4
    const v0, 0x7f0801b5

    .line 2856
    .restart local v0    # "resID":I
    goto :goto_0

    .line 2859
    .end local v0    # "resID":I
    :pswitch_5
    const v0, 0x7f0801b6

    .line 2860
    .restart local v0    # "resID":I
    goto :goto_0

    .line 2863
    .end local v0    # "resID":I
    :pswitch_6
    const v0, 0x7f0801b8

    .line 2864
    .restart local v0    # "resID":I
    goto :goto_0

    .line 2867
    .end local v0    # "resID":I
    :pswitch_7
    const v0, 0x7f0801b7

    .line 2868
    .restart local v0    # "resID":I
    goto :goto_0

    .line 2872
    .end local v0    # "resID":I
    :pswitch_8
    const v0, 0x7f0801b9

    .line 2873
    .restart local v0    # "resID":I
    goto :goto_0

    .line 2876
    .end local v0    # "resID":I
    :pswitch_9
    const v0, 0x7f0801ba

    .line 2877
    .restart local v0    # "resID":I
    goto :goto_0

    .line 2880
    .end local v0    # "resID":I
    :pswitch_a
    const v0, 0x7f0801bb

    .line 2881
    .restart local v0    # "resID":I
    goto :goto_0

    .line 2885
    .end local v0    # "resID":I
    :pswitch_b
    iget-object v1, p0, Lcom/android/phone/CallCard;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IServiceStateExt;->isImeiLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0801c4

    .line 2889
    .restart local v0    # "resID":I
    :goto_1
    goto :goto_0

    .line 2885
    .end local v0    # "resID":I
    :cond_1
    const v0, 0x7f0801bc

    goto :goto_1

    .line 2892
    :pswitch_c
    const v0, 0x7f0801bd

    .line 2893
    .restart local v0    # "resID":I
    goto :goto_0

    .line 2897
    .end local v0    # "resID":I
    :pswitch_d
    const v0, 0x7f0801c5

    .line 2898
    .restart local v0    # "resID":I
    goto :goto_0

    .line 2837
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

    .line 582
    const/4 v3, 0x0

    .line 583
    .local v3, "result":Z
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v7}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkMultipleHoldCase()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 587
    const/4 v3, 0x1

    .line 603
    :cond_0
    :goto_0
    return v3

    .line 588
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v7}, Lcom/mediatek/phone/DualTalkUtils;->hasDualHoldCallsOnly()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 592
    iget-object v7, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v7}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 593
    .local v2, "firstHold":Lcom/android/internal/telephony/Call;
    iget-object v7, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v7}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 594
    .local v4, "secondHold":Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    if-eq v7, v8, :cond_2

    move v3, v5

    .line 595
    :goto_1
    goto :goto_0

    :cond_2
    move v3, v6

    .line 594
    goto :goto_1

    .line 596
    .end local v2    # "firstHold":Lcom/android/internal/telephony/Call;
    .end local v4    # "secondHold":Lcom/android/internal/telephony/Call;
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 597
    .local v1, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 598
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

    .line 599
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

    .line 557
    const/4 v3, 0x0

    .line 558
    .local v3, "result":Z
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v7}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkMultipleHoldCase()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 562
    const/4 v3, 0x1

    .line 578
    :cond_0
    :goto_0
    return v3

    .line 563
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v7}, Lcom/mediatek/phone/DualTalkUtils;->hasDualHoldCallsOnly()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 567
    iget-object v7, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v7}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 568
    .local v2, "firstHold":Lcom/android/internal/telephony/Call;
    iget-object v7, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v7}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 569
    .local v4, "secondHold":Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    if-ne v7, v8, :cond_2

    move v3, v5

    .line 570
    :goto_1
    goto :goto_0

    :cond_2
    move v3, v6

    .line 569
    goto :goto_1

    .line 571
    .end local v2    # "firstHold":Lcom/android/internal/telephony/Call;
    .end local v4    # "secondHold":Lcom/android/internal/telephony/Call;
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 572
    .local v1, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 573
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

    .line 574
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
    .line 2298
    const-string v0, "CallCard"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    return-void
.end method

.method private static final showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "ci"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 2123
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_1

    .line 2124
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2125
    const-string v0, "showCachedImage: using the cachedPhoto!"

    invoke-static {v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2126
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2131
    :goto_0
    const/4 v0, 0x1

    .line 2134
    :goto_1
    return v0

    .line 2128
    :cond_0
    const-string v0, "showCachedImage: using picture_unknown!"

    invoke-static {v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2129
    const v0, 0x7f0200e5

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 2133
    :cond_1
    const-string v0, "showCachedImage: return false!"

    invoke-static {v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2134
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static final showImage(Landroid/widget/ImageView;I)V
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "resource"    # I

    .prologue
    .line 2139
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2140
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2143
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2144
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2148
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2149
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 2151
    .local v0, "current":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 2152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start fade-in animation for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2153
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2154
    invoke-static {p0}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 2155
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2160
    :goto_0
    return-void

    .line 2157
    :cond_0
    invoke-static {p0, v0, p1}, Lcom/android/phone/AnimationUtils;->startCrossFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2158
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSecondaryCallInfo()V
    .locals 2

    .prologue
    .line 1485
    const-string v0, "showSecondaryCallInfo()"

    invoke-static {v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1487
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1488
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1489
    const v0, 0x7f0b010f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    .line 1491
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1492
    const v0, 0x7f0b0114

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    .line 1494
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    .line 1495
    const v0, 0x7f0b0110

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    .line 1497
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    if-nez v0, :cond_3

    .line 1498
    const v0, 0x7f0b0111

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    .line 1499
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1501
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    new-instance v1, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1504
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-nez v0, :cond_4

    .line 1505
    const v0, 0x7f0b0112

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    .line 1508
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateButtonStateOutsideInCallTouchUi()V

    .line 1509
    return-void
.end method

.method private updateAlreadyDisconnected(Lcom/android/internal/telephony/CallManager;)V
    .locals 4
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 659
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 660
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 661
    iget-object v0, p0, Lcom/android/phone/CallCard;->mProviderInfo:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    const v2, 0x7f0802eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    invoke-direct {p0, p1, v3}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 672
    invoke-virtual {p0, v3}, Lcom/android/phone/CallCard;->displaySecondHoldCallStatus(Lcom/android/internal/telephony/Call;)V

    .line 673
    return-void
.end method

.method private updateCallBannerBackground(Lcom/android/internal/telephony/Call;Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "call"    # Lcom/android/internal/telephony/Call;
    .param p2, "callBanner"    # Landroid/view/ViewGroup;

    .prologue
    const v5, 0x7f0200d8

    const/4 v6, 0x0

    .line 2433
    invoke-virtual {p0, p1}, Lcom/android/phone/CallCard;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 2435
    .local v2, "simInfo":Landroid/provider/Telephony$SIMInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2436
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2437
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

    invoke-static {v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2439
    const/4 v3, 0x3

    if-ne v3, v1, :cond_5

    .line 2441
    iget-object v3, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 2442
    iget-object v3, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    const v4, 0x7f0200f6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2444
    :cond_0
    iget-object v3, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 2445
    iget-object v3, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 2447
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 2448
    iget-object v3, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 2500
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 2501
    iget-object v3, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    iget v4, p0, Lcom/android/phone/CallCard;->mCallBannerSidePadding:I

    iget v5, p0, Lcom/android/phone/CallCard;->mCallBannerSidePadding:I

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2503
    :cond_3
    iget-object v3, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 2504
    iget-object v3, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/phone/CallCard;->mSimIndicatorPaddingLeft:I

    iget v5, p0, Lcom/android/phone/CallCard;->mSimIndicatorPaddingRight:I

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2510
    :cond_4
    :goto_1
    return-void

    .line 2451
    :cond_5
    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/android/phone/CallCard;->mSimColorMap:[I

    if-eqz v3, :cond_6

    iget v3, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    if-ltz v3, :cond_6

    iget v3, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    iget-object v4, p0, Lcom/android/phone/CallCard;->mSimColorMap:[I

    array-length v4, v4

    if-lt v3, v4, :cond_7

    .line 2453
    :cond_6
    const-string v3, "mSimInfo is null or mSimInfo.mColor invalid, do not update background"

    invoke-static {v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2457
    :cond_7
    iget-object v3, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8

    .line 2458
    iget-object v3, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/CallCard;->mSimBorderMap:[I

    iget v5, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2460
    :cond_8
    iget-object v3, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_9

    .line 2461
    iget-object v3, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/phone/CallCard;->mSimColorMap:[I

    iget v5, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 2463
    :cond_9
    iget-object v3, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 2464
    iget-object v3, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/phone/CallCard;->mSimColorMap:[I

    iget v5, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method private updateCallBannerBackground(Lcom/android/phone/InCallUiState$FakeCall;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "call"    # Lcom/android/phone/InCallUiState$FakeCall;
    .param p2, "callBanner"    # Landroid/view/ViewGroup;

    .prologue
    const v3, 0x7f0200d8

    const/4 v4, 0x0

    .line 2913
    const-string v1, "displayFakeCallStatus..."

    invoke-static {v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2916
    iget v0, p1, Lcom/android/phone/InCallUiState$FakeCall;->phoneType:I

    .line 2918
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

    invoke-static {v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2920
    const/4 v1, 0x3

    if-ne v1, v0, :cond_5

    .line 2922
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2923
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    const v2, 0x7f0200f6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2925
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 2926
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 2928
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 2929
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 2962
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 2963
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/phone/CallCard;->mCallBannerSidePadding:I

    iget v3, p0, Lcom/android/phone/CallCard;->mCallBannerSidePadding:I

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2965
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 2966
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/CallCard;->mSimIndicatorPaddingLeft:I

    iget v3, p0, Lcom/android/phone/CallCard;->mSimIndicatorPaddingRight:I

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2972
    :cond_4
    :goto_1
    return-void

    .line 2932
    :cond_5
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimColorMap:[I

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v1, v1, Landroid/provider/Telephony$SIMInfo;->mColor:I

    if-ltz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v1, v1, Landroid/provider/Telephony$SIMInfo;->mColor:I

    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimColorMap:[I

    array-length v2, v2

    if-lt v1, v2, :cond_7

    .line 2935
    :cond_6
    const-string v1, "mSimInfo is null or mSimInfo.mColor invalid, do not update background"

    invoke-static {v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2940
    :cond_7
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    .line 2941
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimBorderMap:[I

    iget-object v3, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2943
    :cond_8
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    .line 2944
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimColorMap:[I

    iget-object v3, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 2946
    :cond_9
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 2947
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimColorMap:[I

    iget-object v3, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method private updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 5
    .param p1, "state"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    .line 413
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/ext/ExtensionManager;->getCallCardExtension()Lcom/mediatek/phone/ext/CallCardExtension;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/mediatek/phone/ext/CallCardExtension;->updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 446
    :goto_0
    return-void

    .line 419
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    .line 420
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

    invoke-static {v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 434
    const/4 v1, 0x0

    .line 440
    .local v1, "reservedVerticalSpace":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 442
    .local v0, "callInfoLp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ==> callInfoLp.bottomMargin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 419
    .end local v0    # "callInfoLp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "reservedVerticalSpace":I
    .end local v2    # "ringing":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 437
    .restart local v2    # "ringing":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "reservedVerticalSpace":I
    goto :goto_2
.end method

.method private updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V
    .locals 14
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 1034
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

    invoke-static {v9}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 1036
    .local v8, "state":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1037
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 1038
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 1040
    .local v6, "phoneType":I
    const/4 v1, 0x0

    .line 1041
    .local v1, "callStateLabel":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1043
    .local v0, "bluetoothIconId":I
    sget-object v9, Lcom/android/phone/CallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1099
    const-string v9, "CallCard"

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

    .line 1105
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v9, 0x2

    if-ne v6, v9, :cond_1

    .line 1106
    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_9

    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1110
    const v9, 0x7f0802e7

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1115
    :cond_1
    :goto_1
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1118
    invoke-static {v2, v5}, Lcom/android/phone/PhoneUtils;->getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v1

    .line 1121
    :cond_2
    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 1123
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

    invoke-static {v9}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1132
    sget-object v9, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_3

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_3

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_a

    :cond_3
    const/4 v7, 0x1

    .line 1135
    .local v7, "skipAnimation":Z
    :goto_2
    const/4 v4, 0x0

    .line 1136
    .local v4, "layoutTransition":Landroid/animation/LayoutTransition;
    if-eqz v7, :cond_4

    .line 1138
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v4

    .line 1139
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1142
    :cond_4
    iget-boolean v9, v3, Lcom/android/phone/InCallUiState;->providerInfoVisible:Z

    if-eqz v9, :cond_b

    .line 1143
    iget-object v9, p0, Lcom/android/phone/CallCard;->mProviderInfo:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1144
    iget-object v9, p0, Lcom/android/phone/CallCard;->mProviderLabel:Landroid/widget/TextView;

    const v10, 0x7f080347

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v3, Lcom/android/phone/InCallUiState;->providerLabel:Ljava/lang/CharSequence;

    aput-object v13, v11, v12

    invoke-virtual {v2, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    iget-object v9, p0, Lcom/android/phone/CallCard;->mProviderAddress:Landroid/widget/TextView;

    iget-object v10, v3, Lcom/android/phone/InCallUiState;->providerAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1148
    iget-object v9, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->requestRemoveProviderInfoWithDelay()V

    .line 1155
    :goto_3
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1157
    if-eqz v1, :cond_5

    .line 1158
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1161
    :cond_5
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1162
    const-string v9, "DualTalkUtils.isSupportDualTalk()"

    invoke-static {v9}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1176
    :cond_6
    if-eqz v0, :cond_c

    .line 1180
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v0, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1182
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/phone/CallCard;->mDensity:F

    const/high16 v11, 0x40a00000

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1200
    :goto_4
    if-eqz v7, :cond_7

    .line 1202
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1244
    :cond_7
    return-void

    .line 1047
    .end local v3    # "inCallUiState":Lcom/android/phone/InCallUiState;
    .end local v4    # "layoutTransition":Landroid/animation/LayoutTransition;
    .end local v7    # "skipAnimation":Z
    :pswitch_1
    const-string v1, ""

    .line 1049
    goto/16 :goto_0

    .line 1057
    :pswitch_2
    const v9, 0x7f0802ec

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1058
    goto/16 :goto_0

    .line 1062
    :pswitch_3
    const v9, 0x7f0802e7

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1063
    goto/16 :goto_0

    .line 1068
    :pswitch_4
    invoke-static {p1}, Lcom/mediatek/phone/vt/VTCallUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1069
    const v9, 0x7f08018a

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1079
    :goto_5
    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->showBluetoothIndication()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1080
    const v0, 0x7f02009c

    goto/16 :goto_0

    .line 1072
    :cond_8
    const v9, 0x7f0802ea

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 1091
    :pswitch_5
    const v9, 0x7f0802ed

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1092
    goto/16 :goto_0

    .line 1095
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 1096
    goto/16 :goto_0

    .line 1111
    :cond_9
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v9}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1112
    const v9, 0x7f0802e8

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1132
    .restart local v3    # "inCallUiState":Lcom/android/phone/InCallUiState;
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 1150
    .restart local v4    # "layoutTransition":Landroid/animation/LayoutTransition;
    .restart local v7    # "skipAnimation":Z
    :cond_b
    iget-object v9, p0, Lcom/android/phone/CallCard;->mProviderInfo:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 1185
    :cond_c
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_4

    .line 1043
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

    .line 2191
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2192
    .local v0, "phoneType":I
    :goto_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 2193
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2194
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const v2, 0x7f08030f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2195
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2203
    :goto_1
    return-void

    .end local v0    # "phoneType":I
    :cond_0
    move v0, v1

    .line 2191
    goto :goto_0

    .line 2201
    .restart local v0    # "phoneType":I
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

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

    .line 1915
    const-string v2, "updateDisplayForConference()..."

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1917
    const/4 v0, 0x0

    .line 1918
    .local v0, "hasMultipleRingingCalls":Z
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1919
    const/4 v0, 0x1

    .line 1923
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 1924
    .local v1, "phoneType":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1931
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v2, v5}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1933
    if-eqz v0, :cond_1

    .line 1934
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    invoke-static {v2, v5}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1937
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v3, 0x7f0802ee

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1955
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1961
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1962
    iget-object v2, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1964
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumberGeoDescription:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 1965
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumberGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1969
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 1981
    return-void

    .line 1938
    :cond_3
    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 1944
    :cond_4
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1946
    if-eqz v0, :cond_5

    .line 1947
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1950
    :cond_5
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v3, 0x7f0802e9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1952
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
    .locals 21
    .param p1, "info"    # Lcom/android/internal/telephony/CallerInfo;
    .param p2, "presentation"    # I
    .param p3, "isTemporary"    # Z
    .param p4, "call"    # Lcom/android/internal/telephony/Call;
    .param p5, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1621
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateDisplayForPerson("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")\npresentation:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " isTemporary:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1629
    const/4 v6, 0x0

    .line 1631
    .local v6, "displayNameIsNumber":Z
    const/4 v7, 0x0

    .line 1632
    .local v7, "displayNumber":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1633
    .local v10, "label":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1637
    .local v13, "personUri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 1638
    .local v12, "numberGeoDescription":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1639
    .local v9, "hasMultipleRingingCalls":Z
    const/4 v4, 0x1

    .line 1641
    .local v4, "bFirstIncoming":Z
    if-eqz p1, :cond_12

    .line 1658
    sget-boolean v17, Lcom/android/phone/CallCard;->mLocaleChanged:Z

    if-eqz v17, :cond_1

    .line 1659
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1660
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x10402e5

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1663
    :cond_0
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/phone/CallCard;->mLocaleChanged:Z

    .line 1675
    :cond_1
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1676
    .local v11, "number":Ljava/lang/String;
    if-eqz v11, :cond_2

    const-string v17, "sip:"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1677
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 1681
    :cond_2
    if-eqz v11, :cond_3

    .line 1682
    invoke-static {}, Lcom/mediatek/phone/HyphonManager;->getInstance()Lcom/mediatek/phone/HyphonManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/mediatek/phone/HyphonManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1686
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 1692
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 1695
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 1696
    .local v5, "displayName":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "  ==> no name *or* number! displayName = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1764
    :goto_0
    sget-object v17, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 1765
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "- got personUri: \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\', based on info.person_id: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1771
    .end local v11    # "number":Ljava/lang/String;
    :goto_1
    const/4 v15, 0x1

    .line 1774
    .local v15, "updateNameAndNumber":Z
    if-eqz v6, :cond_7

    .line 1779
    const/16 v16, 0x0

    .line 1780
    .local v16, "visiblePhoneNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getVisibility()I

    move-result v17

    if-nez v17, :cond_4

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1783
    :cond_4
    if-eqz v16, :cond_5

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 1787
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "chose not to update display {"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "} with number "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1789
    const/4 v15, 0x0

    .line 1793
    .end local v16    # "visiblePhoneNumber":Ljava/lang/String;
    :cond_7
    if-eqz v15, :cond_8

    .line 1794
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 1795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, 0x7f0802ee

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(I)V

    .line 1799
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1801
    if-eqz v7, :cond_14

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v17

    if-nez v17, :cond_14

    .line 1802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1808
    :goto_3
    if-eqz v10, :cond_15

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v17

    if-nez v17, :cond_15

    .line 1809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1828
    :cond_8
    :goto_4
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1829
    const/4 v9, 0x1

    .line 1830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 1831
    .local v8, "fisrtCall":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveRingCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    .line 1832
    .local v14, "secondCall":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p4

    if-ne v0, v14, :cond_9

    .line 1833
    const/4 v4, 0x0

    .line 1837
    .end local v8    # "fisrtCall":Lcom/android/internal/telephony/Call;
    .end local v14    # "secondCall":Lcom/android/internal/telephony/Call;
    :cond_9
    if-eqz p3, :cond_16

    if-eqz p1, :cond_a

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    move/from16 v17, v0

    if-nez v17, :cond_16

    .line 1838
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1887
    :cond_b
    :goto_5
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1e

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoDimEffect:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 1894
    :goto_6
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 1895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumberGeoDescription:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1903
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 1905
    return-void

    .line 1697
    .end local v5    # "displayName":Ljava/lang/String;
    .end local v15    # "updateNameAndNumber":Z
    .restart local v11    # "number":Ljava/lang/String;
    :cond_c
    sget v17, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    .line 1701
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 1702
    .restart local v5    # "displayName":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "  ==> presentation not allowed! displayName = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1703
    .end local v5    # "displayName":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_e

    .line 1705
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1706
    .restart local v5    # "displayName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1707
    move-object v7, v11

    .line 1708
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "  ==> cnapName available: displayName \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\', displayNumber \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1717
    .end local v5    # "displayName":Ljava/lang/String;
    :cond_e
    move-object v5, v11

    .line 1718
    .restart local v5    # "displayName":Ljava/lang/String;
    const/4 v6, 0x1

    .line 1722
    if-eqz p5, :cond_f

    .line 1735
    :cond_f
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "  ==>  no name; falling back to number: displayName \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\', numberGeoDescription \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1741
    .end local v5    # "displayName":Ljava/lang/String;
    :cond_10
    sget v17, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    move/from16 v1, v17

    if-eq v0, v1, :cond_11

    .line 1745
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 1746
    .restart local v5    # "displayName":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "  ==> valid name, but presentation not allowed! displayName = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1749
    .end local v5    # "displayName":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1750
    .restart local v5    # "displayName":Ljava/lang/String;
    move-object v7, v11

    .line 1751
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 1752
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "  ==>  name is present in CallerInfo: displayName \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\', displayNumber \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1768
    .end local v5    # "displayName":Ljava/lang/String;
    .end local v11    # "number":Ljava/lang/String;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "displayName":Ljava/lang/String;
    goto/16 :goto_1

    .line 1797
    .restart local v15    # "updateNameAndNumber":Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1805
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1812
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 1840
    :cond_16
    if-eqz p1, :cond_18

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move/from16 v17, v0

    if-eqz v17, :cond_18

    .line 1841
    if-eqz v4, :cond_17

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_5

    .line 1844
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_5

    .line 1846
    :cond_18
    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    :goto_8
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 1847
    if-nez v13, :cond_1b

    .line 1848
    const-string v17, "CallCard"

    const-string v18, "personPri is null. Just use Unknown picture."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    :goto_9
    const v18, 0x7f0200e5

    invoke-static/range {v17 .. v18}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1876
    :goto_a
    if-eqz v9, :cond_b

    .line 1877
    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v19

    new-instance v20, Lcom/android/phone/CallCard$AsyncLoadCookie;

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    :goto_b
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    invoke-static {v0, v1, v13, v2, v3}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1846
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    goto :goto_8

    .line 1849
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    goto :goto_9

    .line 1850
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 1852
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "The requested Uri ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ") is being loaded already."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " Ignoret the duplicate load request."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto :goto_a

    .line 1859
    :cond_1c
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1867
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v18

    new-instance v19, Lcom/android/phone/CallCard$AsyncLoadCookie;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v3, v19

    invoke-static {v0, v1, v13, v2, v3}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x65

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 1873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x65

    const-wide/16 v19, 0x1f4

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_a

    .line 1877
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    goto/16 :goto_b

    .line 1890
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoDimEffect:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-static/range {v17 .. v18}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    goto/16 :goto_6

    .line 1897
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumberGeoDescription:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumberGeoDescription:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7
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
    .line 2516
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

    invoke-static {v9}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2524
    if-nez p7, :cond_0

    .line 2525
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v9, p1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 2526
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2531
    :cond_0
    const/4 v3, 0x0

    .line 2532
    .local v3, "displayNumber":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2533
    .local v4, "label":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2534
    .local v6, "personUri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 2535
    .local v8, "socialStatusText":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2537
    .local v7, "socialStatusBadge":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_11

    .line 2553
    sget-boolean v9, Lcom/android/phone/CallCard;->mLocaleChanged:Z

    if-eqz v9, :cond_2

    .line 2554
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2555
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10402e5

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2558
    :cond_1
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/phone/CallCard;->mLocaleChanged:Z

    .line 2570
    :cond_2
    iget-object v5, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2571
    .local v5, "number":Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v9, "sip:"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2572
    const/4 v9, 0x4

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2574
    :cond_3
    invoke-static {}, Lcom/mediatek/phone/HyphonManager;->getInstance()Lcom/mediatek/phone/HyphonManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/mediatek/phone/HyphonManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2576
    iget-object v9, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 2582
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2586
    iget-object v9, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v9, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 2588
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

    invoke-static {v9}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2668
    :goto_0
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 2670
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

    invoke-static {v9}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2677
    .end local v5    # "number":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v9

    if-eqz v9, :cond_12

    if-eqz p6, :cond_12

    .line 2678
    const v9, 0x7f0802ee

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    .line 2682
    :cond_4
    :goto_2
    if-eqz p6, :cond_5

    .line 2683
    const/4 v9, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2699
    :cond_5
    if-eqz p3, :cond_13

    if-eqz p1, :cond_6

    iget-boolean v9, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v9, :cond_13

    .line 2700
    :cond_6
    const/4 v9, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2701
    const/4 v9, 0x4

    move-object/from16 v0, p10

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2730
    :cond_7
    :goto_3
    if-eqz p8, :cond_16

    if-eqz v3, :cond_16

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v9

    if-nez v9, :cond_16

    .line 2731
    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2732
    const/4 v9, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2737
    :cond_8
    :goto_4
    if-eqz p9, :cond_17

    if-eqz v4, :cond_17

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v9

    if-nez v9, :cond_17

    .line 2738
    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2739
    const/4 v9, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2743
    :cond_9
    :goto_5
    return-void

    .line 2590
    .end local v2    # "displayName":Ljava/lang/String;
    .restart local v5    # "number":Ljava/lang/String;
    :cond_a
    sget v9, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v9, :cond_b

    .line 2596
    iget-object v9, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v9, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 2598
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

    invoke-static {v9}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2600
    .end local v2    # "displayName":Ljava/lang/String;
    :cond_b
    iget-object v9, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 2602
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2603
    .restart local v2    # "displayName":Ljava/lang/String;
    iget-object v9, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v9, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2604
    move-object v3, v5

    .line 2606
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

    invoke-static {v9}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2616
    .end local v2    # "displayName":Ljava/lang/String;
    :cond_c
    move-object v2, v5

    .line 2621
    .restart local v2    # "displayName":Ljava/lang/String;
    if-eqz p5, :cond_d

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v9, v10, :cond_d

    .line 2629
    iget-object v9, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2630
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoneNumberGeoDescription:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2639
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

    invoke-static {v9}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2632
    :cond_e
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoneNumberGeoDescription:Landroid/widget/TextView;

    iget-object v10, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2633
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoneNumberGeoDescription:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 2647
    .end local v2    # "displayName":Ljava/lang/String;
    :cond_f
    sget v9, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v9, :cond_10

    .line 2653
    iget-object v9, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v9, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 2655
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

    invoke-static {v9}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2659
    .end local v2    # "displayName":Ljava/lang/String;
    :cond_10
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2660
    .restart local v2    # "displayName":Ljava/lang/String;
    move-object v3, v5

    .line 2661
    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 2663
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

    invoke-static {v9}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2674
    .end local v2    # "displayName":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    :cond_11
    iget-object v9, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v9, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "displayName":Ljava/lang/String;
    goto/16 :goto_1

    .line 2679
    :cond_12
    if-eqz p6, :cond_4

    .line 2680
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2702
    :cond_13
    if-eqz p1, :cond_14

    iget v9, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v9, :cond_14

    .line 2703
    iget v9, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move-object/from16 v0, p10

    invoke-static {v0, v9}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_3

    .line 2704
    :cond_14
    move-object/from16 v0, p10

    invoke-static {v0, p1}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 2708
    iput-object v6, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    .line 2710
    const/4 v9, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2712
    const/4 v9, 0x4

    move-object/from16 v0, p10

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2714
    if-nez v6, :cond_15

    .line 2715
    const-string v9, "CallCard"

    const-string v10, "personPri is null. Just use Unknown picture."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    const v9, 0x7f0200e5

    move-object/from16 v0, p10

    invoke-static {v0, v9}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_3

    .line 2720
    :cond_15
    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Lcom/android/phone/CallCard$AsyncLoadCookie;

    move-object/from16 v0, p10

    move-object/from16 v1, p4

    invoke-direct {v11, v0, p1, v1}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v9, v10, v6, p0, v11}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 2725
    iget-object v9, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x65

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2726
    iget-object v9, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x65

    const-wide/16 v11, 0x1f4

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 2733
    :cond_16
    if-eqz p8, :cond_8

    .line 2734
    const/16 v9, 0x8

    move-object/from16 v0, p8

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 2740
    :cond_17
    if-eqz p9, :cond_9

    .line 2741
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

    .line 452
    const-string v6, "updateForegroundCall()..."

    invoke-static {v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 456
    const/4 v1, 0x0

    .line 457
    .local v1, "fgCall":Lcom/android/internal/telephony/Call;
    const/4 v0, 0x0

    .line 459
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkMultipleHoldCase()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 462
    iget-object v6, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 463
    iget-object v6, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 486
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 487
    .local v5, "ringingCall":Lcom/android/internal/telephony/Call;
    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    .line 488
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 554
    :cond_0
    :goto_1
    return-void

    .line 464
    .end local v5    # "ringingCall":Lcom/android/internal/telephony/Call;
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->hasDualHoldCallsOnly()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 467
    iget-object v6, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 468
    iget-object v6, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    .line 469
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 471
    iget-object v6, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 472
    iget-object v6, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 474
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

    invoke-static {v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 478
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 480
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

    invoke-static {v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 495
    .restart local v5    # "ringingCall":Lcom/android/internal/telephony/Call;
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_5

    .line 496
    const-string v6, "updateForegroundCall: no active call, show holding call"

    invoke-static {v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 503
    move-object v1, v0

    .line 506
    const/4 v0, 0x0

    .line 509
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 511
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 514
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 515
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

    invoke-static {v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 517
    if-ne v4, v8, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v8, :cond_6

    .line 519
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 520
    iget-object v6, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/phone/CallCard;->displaySecondHoldCallStatus(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 522
    :cond_6
    invoke-direct {p0, p1, v9}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 523
    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->displaySecondHoldCallStatus(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 525
    :cond_7
    const/4 v6, 0x2

    if-ne v4, v6, :cond_9

    .line 526
    iget-object v6, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v6

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v7, :cond_8

    iget-object v6, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 529
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 533
    :cond_8
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 535
    :cond_9
    if-eq v4, v8, :cond_a

    const/4 v6, 0x3

    if-ne v4, v6, :cond_0

    .line 536
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->isSecondaryCallVisible(Lcom/android/internal/telephony/CallManager;)Z

    move-result v2

    .line 537
    .local v2, "isSecondary":Z
    if-eqz v2, :cond_b

    .line 538
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 543
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->isSecondHoldCallVisible(Lcom/android/internal/telephony/CallManager;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 544
    if-eqz v2, :cond_c

    .line 545
    iget-object v6, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/phone/CallCard;->displaySecondHoldCallStatus(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 540
    :cond_b
    invoke-direct {p0, p1, v9}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_2

    .line 547
    :cond_c
    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->displaySecondHoldCallStatus(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 550
    :cond_d
    invoke-virtual {p0, v9}, Lcom/android/phone/CallCard;->displaySecondHoldCallStatus(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1
.end method

.method private updateNoCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 3
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v2, 0x0

    .line 684
    const-string v1, "updateNoCall()..."

    invoke-static {v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 687
    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v1, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    .line 688
    .local v0, "fakeCall":Lcom/android/phone/InCallUiState$FakeCall;
    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->displayFakeCallStatus(Lcom/android/phone/InCallUiState$FakeCall;)V

    .line 696
    :goto_0
    return-void

    .line 691
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 692
    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 693
    invoke-virtual {p0, v2}, Lcom/android/phone/CallCard;->displaySecondHoldCallStatus(Lcom/android/internal/telephony/Call;)V

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

    .line 1994
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

    invoke-static {v7}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1995
    const/4 v4, 0x0

    .line 1999
    .local v4, "photoImageResource":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 2000
    .local v6, "state":Lcom/android/internal/telephony/Call$State;
    sget-object v7, Lcom/android/phone/CallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    .line 2043
    const/4 v0, 0x0

    .line 2045
    .local v0, "ci":Lcom/android/internal/telephony/CallerInfo;
    const/4 v1, 0x0

    .line 2046
    .local v1, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2047
    .local v3, "phoneType":I
    const/4 v7, 0x2

    if-ne v3, v7, :cond_4

    .line 2048
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2056
    :goto_0
    if-eqz v1, :cond_0

    .line 2057
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 2058
    .local v2, "o":Ljava/lang/Object;
    instance-of v7, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v7, :cond_7

    move-object v0, v2

    .line 2059
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 2066
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 2067
    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 2078
    :cond_1
    if-nez v4, :cond_9

    .line 2079
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2080
    invoke-static {p2, v0}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v7}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v7

    if-ne v7, v9, :cond_2

    .line 2082
    iget-object v7, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v7}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v5

    .line 2083
    .local v5, "photoUri":Landroid/net/Uri;
    if-nez v5, :cond_8

    .line 2084
    const-string v7, "CallCard"

    const-string v8, "photoUri became null. Show default avatar icon"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    const v7, 0x7f0200e5

    invoke-static {p2, v7}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2097
    :goto_2
    iget-object v7, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v7, v10}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2109
    .end local v5    # "photoUri":Landroid/net/Uri;
    :cond_2
    if-eqz v4, :cond_3

    .line 2110
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- overrriding photo image: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2111
    invoke-static {p2, v4}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2113
    iget-object v7, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v7, v9}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2115
    :cond_3
    :goto_3
    return-void

    .line 2049
    :cond_4
    if-eq v3, v11, :cond_5

    const/4 v7, 0x3

    if-ne v3, v7, :cond_6

    .line 2051
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 2053
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

    .line 2060
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_7
    instance-of v7, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v7, :cond_0

    .line 2061
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v2    # "o":Ljava/lang/Object;
    iget-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1

    .line 2088
    .restart local v5    # "photoUri":Landroid/net/Uri;
    :cond_8
    const-string v7, "start asynchronous load inside updatePhotoForCallState()"

    invoke-static {v7}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2090
    invoke-virtual {p2, v12}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2092
    const/4 v7, 0x4

    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2093
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lcom/android/phone/CallCard$AsyncLoadCookie;

    invoke-direct {v8, p2, v0, v12}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v11, v7, v5, p0, v8}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_2

    .line 2102
    .end local v5    # "photoUri":Landroid/net/Uri;
    :cond_9
    invoke-static {p2, v4}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2103
    iget-object v7, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v7, v10}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto :goto_3
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 3
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v2, 0x0

    .line 611
    const-string v1, "updateRingingCall()..."

    invoke-static {v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 614
    const/4 v0, 0x0

    .line 616
    .local v0, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 617
    iget-object v1, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 623
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 626
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    iget-object v1, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 628
    iget-object v1, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveRingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->displaySecondIncomingCallStatus(Lcom/android/internal/telephony/Call;)V

    .line 639
    :cond_0
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 640
    invoke-virtual {p0, v2}, Lcom/android/phone/CallCard;->displaySecondHoldCallStatus(Lcom/android/internal/telephony/Call;)V

    .line 641
    return-void

    .line 619
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    .line 630
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/phone/CallCard;->displaySecondIncomingCallStatus(Lcom/android/internal/telephony/Call;)V

    goto :goto_1
.end method

.method private updateSimInfo(Lcom/android/internal/telephony/Call;)V
    .locals 7
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 2389
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 2390
    .local v0, "phone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    const/4 v1, -0x1

    .line 2392
    .local v1, "slot":I
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_4

    .line 2393
    const/4 v1, 0x1

    .line 2398
    :cond_0
    :goto_0
    if-ne v1, v4, :cond_6

    .line 2399
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPendingMmiCodesGemini(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_5

    .line 2400
    const/4 v1, 0x0

    .line 2404
    :cond_1
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    .line 2406
    if-ne v1, v4, :cond_2

    if-eqz p1, :cond_2

    .line 2407
    invoke-virtual {p0, p1}, Lcom/android/phone/CallCard;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    .line 2411
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

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2430
    :cond_3
    :goto_2
    return-void

    .line 2394
    :cond_4
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    .line 2395
    const/4 v1, 0x0

    goto :goto_0

    .line 2401
    :cond_5
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPendingMmiCodesGemini(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2402
    const/4 v1, 0x1

    goto :goto_1

    .line 2414
    :cond_6
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    .line 2415
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v2, :cond_3

    .line 2417
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

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v3, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "color       = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2421
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v2, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 2422
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v2, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    .line 2424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v3, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x1

    .line 2261
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 2262
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2263
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2279
    :cond_0
    :goto_0
    return v2

    .line 2267
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2268
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2269
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2270
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2271
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2273
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2274
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2276
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2277
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

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

    .line 2749
    if-nez p1, :cond_0

    .line 2751
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2826
    :goto_0
    return-void

    .line 2756
    :cond_0
    const-string v2, "displayFakeCallStatus..."

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2759
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/android/phone/InCallUiState$FakeCall;->conn:Lcom/android/internal/telephony/Connection;

    invoke-static {v2, v3, p0, p1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 2762
    .local v0, "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2765
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2766
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/phone/InCallUiState$FakeCall;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Connection$DisconnectCause;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2769
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    iget v3, p1, Lcom/android/phone/InCallUiState$FakeCall;->slotId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    .line 2774
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v2, :cond_1

    .line 2775
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v3, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2776
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2779
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallCard;->updateCallBannerBackground(Lcom/android/phone/InCallUiState$FakeCall;Landroid/view/ViewGroup;)V

    .line 2781
    iget v2, p1, Lcom/android/phone/InCallUiState$FakeCall;->phoneType:I

    if-ne v2, v5, :cond_4

    .line 2783
    iget-object v2, p0, Lcom/android/phone/CallCard;->mOperatorName:Landroid/widget/TextView;

    const v3, 0x7f08030f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2800
    :goto_1
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 2801
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2803
    :cond_2
    iget-object v2, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 2804
    iget-object v2, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2807
    :cond_3
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v2, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget v2, p1, Lcom/android/phone/InCallUiState$FakeCall;->phoneType:I

    if-eq v2, v5, :cond_7

    .line 2809
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v3, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2810
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2814
    :goto_2
    if-eqz v0, :cond_9

    iget-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v2, :cond_9

    .line 2815
    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2816
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2823
    :goto_3
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v3, 0x7f0200e5

    invoke-static {v2, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2824
    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0, v2, v7}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 2825
    invoke-virtual {p0, v7}, Lcom/android/phone/CallCard;->displaySecondHoldCallStatus(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 2785
    :cond_4
    const/4 v1, 0x0

    .line 2787
    .local v1, "operatorName":Ljava/lang/String;
    iget v2, p1, Lcom/android/phone/InCallUiState$FakeCall;->slotId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 2788
    const-string v2, "gsm.operator.alpha.2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2795
    :cond_5
    :goto_4
    iget-object v2, p0, Lcom/android/phone/CallCard;->mOperatorName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2796
    iget-object v2, p0, Lcom/android/phone/CallCard;->mOperatorName:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2789
    :cond_6
    iget v2, p1, Lcom/android/phone/InCallUiState$FakeCall;->slotId:I

    if-nez v2, :cond_5

    .line 2790
    const-string v2, "gsm.operator.alpha"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 2812
    .end local v1    # "operatorName":Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 2818
    :cond_8
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/phone/InCallUiState$FakeCall;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2821
    :cond_9
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/phone/InCallUiState$FakeCall;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method displaySecondHoldCallStatus(Lcom/android/internal/telephony/Call;)V
    .locals 19
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 3399
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

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3402
    if-nez p1, :cond_5

    .line 3403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->m2ndHoldName:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 3404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->m2ndHoldName:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3406
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->m2ndHoldState:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 3407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->m2ndHoldState:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3409
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhotoHoldPre:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 3410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhotoHoldPre:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3412
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    if-eqz v2, :cond_3

    .line 3413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 3415
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 3416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    .line 3545
    :cond_4
    :goto_0
    return-void

    .line 3420
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    if-nez v2, :cond_7

    .line 3421
    const v2, 0x7f0b010d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCard;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    .line 3422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 3423
    const v2, 0x7f0b008c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCard;->mPhotoHoldPre:Landroid/widget/ImageView;

    .line 3424
    const v2, 0x7f0b008b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCard;->m2ndHoldName:Landroid/widget/TextView;

    .line 3425
    const v2, 0x7f0b0090

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCard;->m2ndHoldState:Landroid/widget/TextView;

    .line 3426
    const v2, 0x7f0b008e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCard;->mSecondHoldCallBanner:Landroid/view/ViewGroup;

    .line 3427
    const v2, 0x7f0b008d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCard;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    .line 3428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 3429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 3430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->callCardListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    new-instance v3, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v3}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3438
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->m2ndHoldName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->m2ndHoldState:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhotoHoldPre:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-static {v2}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 3445
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

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3448
    invoke-virtual/range {p0 .. p1}, Lcom/android/phone/CallCard;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v14

    .line 3449
    .local v14, "info":Landroid/provider/Telephony$SIMInfo;
    if-eqz v14, :cond_8

    iget v2, v14, Landroid/provider/Telephony$SIMInfo;->mColor:I

    if-ltz v2, :cond_8

    iget v2, v14, Landroid/provider/Telephony$SIMInfo;->mColor:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mSimColorMap:[I

    array-length v3, v3

    if-ge v2, v3, :cond_8

    .line 3451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondHoldCallBanner:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mSimColorMap:[I

    iget v5, v14, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 3456
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondHoldCallBanner:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/CallCard;->mCallBannerSidePadding:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/CallCard;->mCallBannerSidePadding:I

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v5, v6, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 3458
    const/16 v17, 0x0

    .line 3459
    .local v17, "showSecondaryCallInfo":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    .line 3460
    .local v18, "state":Lcom/android/internal/telephony/Call$State;
    sget-object v2, Lcom/android/phone/CallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 3542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_0

    .line 3436
    .end local v14    # "info":Landroid/provider/Telephony$SIMInfo;
    .end local v17    # "showSecondaryCallInfo":Z
    .end local v18    # "state":Lcom/android/internal/telephony/Call$State;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_1

    .line 3452
    .restart local v14    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_8
    if-nez v14, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 3454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondHoldCallBanner:Landroid/view/ViewGroup;

    const v3, 0x7f0200d8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_2

    .line 3463
    .restart local v17    # "showSecondaryCallInfo":Z
    .restart local v18    # "state":Lcom/android/internal/telephony/Call$State;
    :pswitch_0
    const-string v2, "displaySecondHoldCallStatus : meet cdma case!"

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3476
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3478
    const-string v2, "==> conference call."

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->m2ndHoldName:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0801c6

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3481
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 3482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhotoHoldPre:Landroid/widget/ImageView;

    const v3, 0x7f0200e2

    invoke-static {v2, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 3534
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->m2ndHoldState:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0802ec

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3484
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhotoHoldPre:Landroid/widget/ImageView;

    const v3, 0x7f0200e1

    invoke-static {v2, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_3

    .line 3487
    :cond_a
    const/4 v15, 0x0

    .line 3488
    .local v15, "infoToken":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget-boolean v2, Lcom/android/phone/CallCard;->sLCforUserDataSecondHoldCall:Z

    if-eqz v2, :cond_b

    .line 3489
    const-string v2, "- displaySecondHoldCallStatus: the language changed to clear userdata"

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3490
    new-instance v13, Lcom/android/phone/CallCard$CallInfoCookie;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1, v2}, Lcom/android/phone/CallCard$CallInfoCookie;-><init>(Lcom/android/phone/CallCard;Lcom/android/internal/telephony/Call;I)V

    .line 3491
    .local v13, "callInfoCookie":Lcom/android/phone/CallCard$CallInfoCookie;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v2, v0, v1, v13, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v15

    .line 3492
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/CallCard;->sLCforUserDataSecondHoldCall:Z

    .line 3501
    .end local v13    # "callInfoCookie":Lcom/android/phone/CallCard$CallInfoCookie;
    :goto_4
    const-string v2, "==> NOT a conf call; call startGetCallerInfo..."

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->m2ndHoldName:Landroid/widget/TextView;

    iget-object v3, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3514
    iget-boolean v2, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v2, :cond_f

    .line 3515
    const/4 v7, 0x0

    .line 3516
    .local v7, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    .line 3517
    .local v16, "phoneType":I
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_c

    .line 3518
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 3526
    :goto_5
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 3527
    .local v4, "presentation":I
    iget-object v3, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mPhotoHoldPre:Landroid/widget/ImageView;

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v12}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/widget/TextView;ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto/16 :goto_3

    .line 3494
    .end local v4    # "presentation":I
    .end local v7    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v16    # "phoneType":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->m2ndHoldName:Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v2, v0, v1, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v15

    goto :goto_4

    .line 3519
    .restart local v7    # "conn":Lcom/android/internal/telephony/Connection;
    .restart local v16    # "phoneType":I
    :cond_c
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_d

    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_e

    .line 3521
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    goto :goto_5

    .line 3523
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

    .line 3531
    .end local v7    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v16    # "phoneType":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhotoHoldPre:Landroid/widget/ImageView;

    const v3, 0x7f0200e5

    invoke-static {v2, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_3

    .line 3460
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
    .line 3047
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

    invoke-static {v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3049
    if-nez p1, :cond_6

    .line 3050
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->m2ndIncomingName:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 3051
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->m2ndIncomingName:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3053
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->m2ndIncomingState:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 3054
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->m2ndIncomingState:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3056
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 3057
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3059
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 3060
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    const/16 v5, 0x8

    invoke-static {v3, v5}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    .line 3062
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mSecondIncomingCallBanner:Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    .line 3063
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mSecondIncomingCallBanner:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3065
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mIncomingCall2Info:Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    .line 3066
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mIncomingCall2Info:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3067
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/CallCard;->mNeedShowIncomingCall2Animator:Z

    .line 3263
    :cond_5
    :goto_0
    return-void

    .line 3073
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

    invoke-static {v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3076
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mIncomingCall2Info:Landroid/view/ViewGroup;

    if-eqz v3, :cond_7

    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallCard;->mIncomingCall2Info:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-ne v3, v5, :cond_7

    .line 3077
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/CallCard;->mNeedShowIncomingCall2Animator:Z

    .line 3079
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/phone/CallCard;->mNeedShowIncomingCall2Animator:Z

    if-eqz v3, :cond_8

    .line 3080
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->displaySecondaryIncomingAnimator()V

    .line 3083
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mIncomingCall2Info:Landroid/view/ViewGroup;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    if-eqz v3, :cond_9

    .line 3084
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mIncomingCall2Info:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3085
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    invoke-static {v3}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 3088
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    if-eqz v3, :cond_a

    .line 3089
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3092
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3094
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/CallCard;->updateDisplayForConference(Lcom/android/internal/telephony/Call;)V

    .line 3234
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/phone/CallCard;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v4

    .line 3235
    .local v4, "info":Landroid/provider/Telephony$SIMInfo;
    if-eqz v4, :cond_1c

    iget v3, v4, Landroid/provider/Telephony$SIMInfo;->mColor:I

    if-ltz v3, :cond_1c

    iget v3, v4, Landroid/provider/Telephony$SIMInfo;->mColor:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallCard;->mSimColorMap:[I

    array-length v5, v5

    if-ge v3, v5, :cond_1c

    .line 3238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mSecondIncomingCallBanner:Landroid/view/ViewGroup;

    if-eqz v3, :cond_b

    .line 3239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mSecondIncomingCallBanner:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallCard;->mSimColorMap:[I

    iget v6, v4, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 3249
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mSecondIncomingCallBanner:Landroid/view/ViewGroup;

    if-eqz v3, :cond_c

    .line 3250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mSecondIncomingCallBanner:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3253
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->m2ndIncomingName:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->m2ndIncomingState:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3256
    const-string v21, ""

    .line 3257
    .local v21, "callState":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/mediatek/phone/vt/VTCallUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 3258
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f08018a

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 3262
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->m2ndIncomingState:Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3098
    .end local v4    # "info":Landroid/provider/Telephony$SIMInfo;
    .end local v21    # "callState":Ljava/lang/String;
    :cond_d
    const/4 v8, 0x0

    .line 3099
    .local v8, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v24

    .line 3100
    .local v24, "phoneType":I
    const/4 v3, 0x2

    move/from16 v0, v24

    if-ne v0, v3, :cond_e

    .line 3101
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    .line 3109
    :goto_4
    if-nez v8, :cond_11

    .line 3111
    const-string v3, "displaySecondIncomingCallStatus: connection is null, using default values."

    invoke-static {v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3117
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .line 3118
    .local v4, "info":Lcom/android/internal/telephony/CallerInfo;
    sget v5, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_1

    .line 3102
    .end local v4    # "info":Lcom/android/internal/telephony/CallerInfo;
    :cond_e
    const/4 v3, 0x1

    move/from16 v0, v24

    if-eq v0, v3, :cond_f

    const/4 v3, 0x3

    move/from16 v0, v24

    if-ne v0, v3, :cond_10

    .line 3104
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    goto :goto_4

    .line 3106
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

    .line 3121
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

    invoke-static {v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3123
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v11

    .line 3127
    .local v11, "presentation":I
    const/16 v25, 0x1

    .line 3128
    .local v25, "runQuery":Z
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v22

    .line 3129
    .local v22, "o":Ljava/lang/Object;
    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_16

    .line 3130
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v3, v22

    check-cast v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v3, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v5, v3}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v25

    .line 3138
    :goto_5
    const/4 v3, 0x2

    move/from16 v0, v24

    if-ne v0, v3, :cond_14

    .line 3139
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v23

    .line 3140
    .local v23, "obj":Ljava/lang/Object;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v27

    .line 3141
    .local v27, "updatedNumber":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v26

    .line 3142
    .local v26, "updatedCnapName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3143
    .restart local v4    # "info":Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, v23

    instance-of v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_17

    move-object/from16 v3, v22

    .line 3144
    check-cast v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v4, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 3149
    :cond_12
    :goto_6
    if-eqz v4, :cond_14

    .line 3150
    if-eqz v27, :cond_13

    iget-object v3, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 3152
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

    invoke-static {v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3154
    const/16 v25, 0x1

    .line 3156
    :cond_13
    if-eqz v26, :cond_14

    iget-object v3, v4, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 3158
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

    invoke-static {v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3161
    const/16 v25, 0x1

    .line 3166
    .end local v4    # "info":Lcom/android/internal/telephony/CallerInfo;
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v26    # "updatedCnapName":Ljava/lang/String;
    .end local v27    # "updatedNumber":Ljava/lang/String;
    :cond_14
    if-eqz v25, :cond_19

    .line 3168
    const-string v3, "- displaySecondIncomingCallStatus: starting CallerInfo query..."

    invoke-static {v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3170
    sget-boolean v3, Lcom/android/phone/CallCard;->mLCforUserData:Z

    if-eqz v3, :cond_15

    .line 3172
    const-string v3, "- displaySecondIncomingCallStatus: the language changed to clear userdata"

    invoke-static {v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3174
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->clearUserData()V

    .line 3175
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/phone/CallCard;->mLCforUserData:Z

    .line 3178
    :cond_15
    new-instance v20, Lcom/android/phone/CallCard$CallInfoCookie;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallCard$CallInfoCookie;-><init>(Lcom/android/phone/CallCard;Lcom/android/internal/telephony/Call;I)V

    .line 3179
    .local v20, "callInfoCookie":Lcom/android/phone/CallCard$CallInfoCookie;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v3, v8, v0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 3183
    .local v4, "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->m2ndIncomingName:Landroid/widget/TextView;

    iget-object v10, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v5, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v5, :cond_18

    const/4 v12, 0x1

    :goto_7
    move-object/from16 v9, p0

    move-object/from16 v13, p1

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/phone/CallCard;->getCallerName(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3186
    iget-object v10, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v9, p0

    move-object/from16 v13, p1

    move-object v14, v8

    invoke-direct/range {v9 .. v19}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/widget/TextView;ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 3133
    .end local v4    # "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v20    # "callInfoCookie":Lcom/android/phone/CallCard$CallInfoCookie;
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v3, v8}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v25

    goto/16 :goto_5

    .line 3145
    .local v4, "info":Lcom/android/internal/telephony/CallerInfo;
    .restart local v23    # "obj":Ljava/lang/Object;
    .restart local v26    # "updatedCnapName":Ljava/lang/String;
    .restart local v27    # "updatedNumber":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_12

    move-object/from16 v4, v22

    .line 3146
    check-cast v4, Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_6

    .line 3183
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v26    # "updatedCnapName":Ljava/lang/String;
    .end local v27    # "updatedNumber":Ljava/lang/String;
    .local v4, "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v20    # "callInfoCookie":Lcom/android/phone/CallCard$CallInfoCookie;
    :cond_18
    const/4 v12, 0x0

    goto :goto_7

    .line 3193
    .end local v4    # "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v20    # "callInfoCookie":Lcom/android/phone/CallCard$CallInfoCookie;
    :cond_19
    const-string v3, "- displaySecondIncomingCallStatus: using data we already have..."

    invoke-static {v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3195
    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_1a

    move-object/from16 v10, v22

    .line 3196
    check-cast v10, Lcom/android/internal/telephony/CallerInfo;

    .line 3198
    .local v10, "ci":Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 3199
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    iput v3, v10, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 3200
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    iput v3, v10, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 3202
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

    invoke-static {v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   ==> Got CallerInfo; updating display: ci = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3208
    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v9, p0

    move-object/from16 v13, p1

    move-object v14, v8

    invoke-direct/range {v9 .. v19}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/widget/TextView;ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 3210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->m2ndIncomingName:Landroid/widget/TextView;

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object/from16 v13, p1

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/phone/CallCard;->getCallerName(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3211
    .end local v10    # "ci":Lcom/android/internal/telephony/CallerInfo;
    :cond_1a
    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_1b

    .line 3212
    check-cast v22, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v22    # "o":Ljava/lang/Object;
    move-object/from16 v0, v22

    iget-object v10, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 3214
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

    invoke-static {v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   ==> Got CallerInfoToken; updating display: ci = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3220
    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v9, p0

    move-object/from16 v13, p1

    move-object v14, v8

    invoke-direct/range {v9 .. v19}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/widget/TextView;ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 3222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->m2ndIncomingName:Landroid/widget/TextView;

    const/4 v12, 0x1

    move-object/from16 v9, p0

    move-object/from16 v13, p1

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/phone/CallCard;->getCallerName(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3224
    .end local v10    # "ci":Lcom/android/internal/telephony/CallerInfo;
    .restart local v22    # "o":Ljava/lang/Object;
    :cond_1b
    const-string v3, "CallCard"

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

    .line 3241
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

    .line 3244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mSecondIncomingCallBanner:Landroid/view/ViewGroup;

    if-eqz v3, :cond_b

    .line 3245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mSecondIncomingCallBanner:Landroid/view/ViewGroup;

    const v5, 0x7f0200d8

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 3260
    .restart local v21    # "callState":Ljava/lang/String;
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

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

    .line 3579
    if-nez p1, :cond_1

    .line 3580
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3581
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3595
    :cond_0
    :goto_0
    return-object v0

    .line 3585
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 3586
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3587
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3592
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallCard;->m2ndHoldName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallCard;->m2ndHoldName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3593
    iget-object v0, p0, Lcom/android/phone/CallCard;->m2ndHoldName:Landroid/widget/TextView;

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
    .line 3270
    const-string v0, ""

    .line 3272
    .local v0, "displayName":Ljava/lang/String;
    if-eqz p1, :cond_a

    .line 3288
    sget-boolean v2, Lcom/android/phone/CallCard;->mLocaleChanged:Z

    if-eqz v2, :cond_1

    .line 3289
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3290
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10402e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3293
    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/CallCard;->mLocaleChanged:Z

    .line 3304
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3305
    .local v1, "number":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "sip:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3306
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3309
    :cond_2
    if-eqz v1, :cond_3

    .line 3310
    invoke-static {}, Lcom/mediatek/phone/HyphonManager;->getInstance()Lcom/mediatek/phone/HyphonManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/phone/HyphonManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3313
    :cond_3
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3319
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3322
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v2, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 3324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> no name *or* number! displayName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3393
    .end local v1    # "number":Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v0

    .line 3326
    .restart local v1    # "number":Ljava/lang/String;
    :cond_5
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v2, :cond_6

    .line 3330
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v2, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 3332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> presentation not allowed! displayName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3334
    :cond_6
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 3336
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 3337
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 3339
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

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3349
    :cond_7
    move-object v0, v1

    .line 3353
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3359
    const-string v2, " (conn != null) && (conn.isIncoming())"

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3369
    :cond_8
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v2, :cond_9

    .line 3373
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v2, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 3375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> valid name, but presentation not allowed! displayName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3379
    :cond_9
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 3390
    .end local v1    # "number":Ljava/lang/String;
    :cond_a
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v2, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method getOperatorColorByCall(Lcom/android/internal/telephony/Call;)I
    .locals 4
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v1, -0x1

    .line 3030
    if-nez p1, :cond_1

    .line 3042
    :cond_0
    :goto_0
    return v1

    .line 3035
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallCard;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 3036
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

    .line 3038
    iget v1, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    goto :goto_0
.end method

.method getOperatorNameByCall(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 4
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x3

    .line 3010
    if-nez p1, :cond_1

    .line 3026
    :cond_0
    :goto_0
    return-object v1

    .line 3015
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallCard;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 3016
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

    .line 3018
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 3019
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 3020
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

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

    .line 2982
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_0
    move-object v0, v4

    .line 3003
    :cond_1
    :goto_0
    return-object v0

    .line 2986
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2988
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 2989
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    goto :goto_0

    .line 2992
    :cond_3
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v3

    .line 2993
    .local v3, "serialNumber":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 2994
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_4

    iget-object v5, v0, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v0, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2998
    :cond_4
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 2999
    .local v1, "info2":Landroid/provider/Telephony$SIMInfo;
    if-eqz v1, :cond_5

    iget-object v5, v1, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, v1, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v0, v1

    .line 3000
    goto :goto_0

    :cond_5
    move-object v0, v4

    .line 3003
    goto :goto_0
.end method

.method public hasMultiplePhoneActive()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3621
    iget-object v7, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v7, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 3622
    .local v0, "cm":Lcom/android/internal/telephony/CallManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v7, v8, :cond_1

    .line 3624
    :cond_0
    const-string v5, "CallManager says in idle state!"

    invoke-static {v5}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move v5, v6

    .line 3650
    :goto_0
    return v5

    .line 3629
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v4

    .line 3630
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

    invoke-static {v7}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3631
    const/4 v1, 0x0

    .line 3633
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

    .line 3634
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v7, v8, :cond_2

    .line 3635
    add-int/lit8 v1, v1, 0x1

    .line 3637
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

    invoke-static {v7}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3639
    if-le v1, v5, :cond_2

    .line 3641
    const-string v6, "More than one phone active!"

    invoke-static {v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3648
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_3
    const-string v5, "Strange! no phone active but we go here!"

    invoke-static {v5}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move v5, v6

    .line 3650
    goto :goto_0
.end method

.method public hideCallCardElements()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2242
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2243
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2244
    return-void
.end method

.method public hideCallStates(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/16 v1, 0x8

    .line 3601
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v0, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3603
    const-string v0, "mSimIndicator GONE"

    invoke-static {v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3605
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3607
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3609
    const-string v0, "mSecondaryCallInfo GONE"

    invoke-static {v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 3611
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 3613
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 247
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 249
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

    invoke-static {v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 251
    const v0, 0x7f0b000c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    .line 252
    const v0, 0x7f0b000d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 253
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 255
    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    .line 256
    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mProviderInfo:Landroid/view/ViewGroup;

    .line 257
    const v0, 0x7f0b0038

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mProviderLabel:Landroid/widget/TextView;

    .line 258
    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mProviderAddress:Landroid/widget/TextView;

    .line 259
    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    .line 264
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    .line 267
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    .line 268
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhotoDimEffect:Landroid/view/View;

    .line 270
    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    .line 271
    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 272
    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    .line 273
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    .line 277
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    .line 280
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mOperatorName:Landroid/widget/TextView;

    .line 281
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    .line 282
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumberGeoDescription:Landroid/widget/TextView;

    .line 284
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const v0, 0x7f0b010e

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mIncomingCall2Info:Landroid/view/ViewGroup;

    .line 287
    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhotoIncomingPre:Landroid/widget/ImageView;

    .line 289
    const v0, 0x7f0b003d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->m2ndIncomingName:Landroid/widget/TextView;

    .line 290
    const v0, 0x7f0b003e

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->m2ndIncomingState:Landroid/widget/TextView;

    .line 291
    const v0, 0x7f0b00ba

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondIncomingCallBanner:Landroid/view/ViewGroup;

    .line 293
    const v0, 0x7f0b00b9

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    .line 294
    iget-object v0, p0, Lcom/android/phone/CallCard;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 295
    iget-object v0, p0, Lcom/android/phone/CallCard;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 296
    iget-object v0, p0, Lcom/android/phone/CallCard;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/CallCard;->callCardListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v0, p0, Lcom/android/phone/CallCard;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    new-instance v1, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 302
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mIncomingCallInfoWidth:I

    .line 304
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mIncomingCallInfoHeight:I

    .line 306
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mIncomingCallInfoTopMargin:I

    .line 310
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->getCallCardExtension()Lcom/mediatek/phone/ext/CallCardExtension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/phone/ext/CallCardExtension;->onFinishInflate(Landroid/view/View;)V

    .line 312
    return-void
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p3, "photoIcon"    # Landroid/graphics/Bitmap;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 991
    iget-object v4, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 992
    iget-object v4, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    if-eqz v4, :cond_1

    .line 998
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->sendViewNotificationAsync(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1003
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    move-object v0, p4

    .line 1005
    check-cast v0, Lcom/android/phone/CallCard$AsyncLoadCookie;

    .line 1006
    .local v0, "asyncLoadCookie":Lcom/android/phone/CallCard$AsyncLoadCookie;
    iget-object v2, v0, Lcom/android/phone/CallCard$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1007
    .local v2, "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    iget-object v3, v0, Lcom/android/phone/CallCard$AsyncLoadCookie;->imageView:Landroid/widget/ImageView;

    .line 1008
    .local v3, "imageView":Landroid/widget/ImageView;
    iget-object v1, v0, Lcom/android/phone/CallCard$AsyncLoadCookie;->call:Lcom/android/internal/telephony/Call;

    .line 1010
    .local v1, "call":Lcom/android/internal/telephony/Call;
    iput-object p2, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 1011
    iput-object p3, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    .line 1012
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 1016
    if-eqz p2, :cond_2

    .line 1017
    invoke-static {v3, p2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1024
    :goto_1
    if-nez p1, :cond_0

    .line 1025
    invoke-direct {p0, v1, v3}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;Landroid/widget/ImageView;)V

    .line 1027
    :cond_0
    return-void

    .line 1001
    .end local v0    # "asyncLoadCookie":Lcom/android/phone/CallCard$AsyncLoadCookie;
    .end local v1    # "call":Lcom/android/internal/telephony/Call;
    .end local v2    # "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    .end local v3    # "imageView":Landroid/widget/ImageView;
    :cond_1
    const-string v4, "CallCard"

    const-string v5, "Person Uri isn\'t available while Image is successfully loaded."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1018
    .restart local v0    # "asyncLoadCookie":Lcom/android/phone/CallCard$AsyncLoadCookie;
    .restart local v1    # "call":Lcom/android/internal/telephony/Call;
    .restart local v2    # "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    .restart local v3    # "imageView":Landroid/widget/ImageView;
    :cond_2
    if-eqz p3, :cond_3

    .line 1019
    invoke-static {v3, p3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1021
    :cond_3
    const v4, 0x7f0200e5

    invoke-static {v3, v4}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_1
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 17
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "ci"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 908
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

    invoke-static {v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 911
    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/android/phone/CallCard$CallInfoCookie;

    if-eqz v1, :cond_8

    .line 915
    const-string v1, "callerinfo query complete, cookie is CallInfo"

    invoke-static {v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move-object/from16 v13, p2

    .line 916
    check-cast v13, Lcom/android/phone/CallCard$CallInfoCookie;

    .line 917
    .local v13, "callInfo":Lcom/android/phone/CallCard$CallInfoCookie;
    iget v12, v13, Lcom/android/phone/CallCard$CallInfoCookie;->bannerNumber:I

    .line 918
    .local v12, "bannerNumber":I
    iget-object v5, v13, Lcom/android/phone/CallCard$CallInfoCookie;->call:Lcom/android/internal/telephony/Call;

    .line 919
    .local v5, "call":Lcom/android/internal/telephony/Call;
    const/4 v6, 0x0

    .line 920
    .local v6, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    .line 921
    .local v16, "phoneType":I
    const/4 v1, 0x2

    move/from16 v0, v16

    if-ne v0, v1, :cond_2

    .line 922
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 932
    :goto_0
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .line 933
    .local v3, "presentation":I
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    .line 934
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

    invoke-static {v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 940
    if-nez v12, :cond_6

    .line 941
    const-string v1, "banner number is PRIMARY_CALL_BANNER"

    invoke-static {v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 942
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v1, v6, v0, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v14

    .line 944
    .local v14, "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    move-object/from16 v0, p3

    iget-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_5

    .line 945
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .end local v3    # "presentation":I
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 949
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;Landroid/widget/ImageView;)V

    .line 983
    .end local v5    # "call":Lcom/android/internal/telephony/Call;
    .end local v6    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v12    # "bannerNumber":I
    .end local v13    # "callInfo":Lcom/android/phone/CallCard$CallInfoCookie;
    .end local v14    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v16    # "phoneType":I
    .end local p2    # "cookie":Ljava/lang/Object;
    :cond_1
    :goto_2
    return-void

    .line 923
    .restart local v5    # "call":Lcom/android/internal/telephony/Call;
    .restart local v6    # "conn":Lcom/android/internal/telephony/Connection;
    .restart local v12    # "bannerNumber":I
    .restart local v13    # "callInfo":Lcom/android/phone/CallCard$CallInfoCookie;
    .restart local v16    # "phoneType":I
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x1

    move/from16 v0, v16

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    move/from16 v0, v16

    if-ne v0, v1, :cond_4

    .line 925
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    goto :goto_0

    .line 927
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

    .line 947
    .restart local v3    # "presentation":I
    .restart local v14    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_5
    iget-object v2, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto :goto_1

    .line 950
    .end local v14    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_6
    const/4 v1, 0x1

    if-ne v1, v12, :cond_7

    .line 951
    const-string v1, "banner number is SECONDARY_CALL_BANNER"

    invoke-static {v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 952
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-static {v1, v5, v0, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v15

    .line 954
    .local v15, "infoToken":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    iget-object v2, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 957
    iget-object v2, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/widget/TextView;ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 959
    .end local v15    # "infoToken":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_7
    const/4 v1, 0x2

    if-ne v1, v12, :cond_1

    .line 960
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->m2ndHoldName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-static {v1, v5, v0, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v15

    .line 962
    .restart local v15    # "infoToken":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallCard;->m2ndHoldName:Landroid/widget/TextView;

    iget-object v2, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    iget-object v2, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/CallCard;->m2ndHoldName:Landroid/widget/TextView;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/CallCard;->mPhotoHoldPre:Landroid/widget/ImageView;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/widget/TextView;ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto/16 :goto_2

    .line 970
    .end local v3    # "presentation":I
    .end local v5    # "call":Lcom/android/internal/telephony/Call;
    .end local v6    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v12    # "bannerNumber":I
    .end local v13    # "callInfo":Lcom/android/phone/CallCard$CallInfoCookie;
    .end local v15    # "infoToken":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v16    # "phoneType":I
    :cond_8
    move-object/from16 v0, p2

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_9

    .line 971
    const-string v1, "callerinfo query complete, updating ui from ongoing or onhold"

    invoke-static {v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 972
    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "cookie":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 973
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/android/phone/InCallUiState$FakeCall;

    if-eqz v1, :cond_1

    .line 974
    const-string v1, "callerinfo query complete, updating fake call ui!"

    invoke-static {v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 975
    if-eqz p3, :cond_1

    .line 976
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

    invoke-static {v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 977
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

    invoke-static {v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 978
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 979
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 0
    .param p1, "timeElapsed"    # J

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 239
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .param p1, "inCallScreen"    # Lcom/android/phone/InCallScreen;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 232
    return-void
.end method

.method setIncomingCallWidgetHint(II)V
    .locals 0
    .param p1, "hintTextResId"    # I
    .param p2, "hintColorResId"    # I

    .prologue
    .line 2251
    iput p1, p0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    .line 2252
    iput p2, p0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintColorResId:I

    .line 2253
    return-void
.end method

.method setSecondaryCallClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1519
    :cond_0
    return-void
.end method

.method public showSwitchBaneerButton(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "show"    # Ljava/lang/Boolean;

    .prologue
    .line 3739
    iget-object v0, p0, Lcom/android/phone/CallCard;->switchToBanner:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 3740
    const v0, 0x7f0b010c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->switchToBanner:Landroid/widget/ImageView;

    .line 3741
    iget-object v0, p0, Lcom/android/phone/CallCard;->switchToBanner:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3743
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3744
    iget-object v0, p0, Lcom/android/phone/CallCard;->switchToBanner:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3748
    :goto_0
    return-void

    .line 3746
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->switchToBanner:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateElapsedTimeWidget(J)V
    .locals 2
    .param p1, "timeElapsed"    # J

    .prologue
    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateElapsedTimeWidget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1264
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1265
    return-void
.end method

.method updateElapsedTimeWidget(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 1253
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    .line 1254
    .local v0, "duration":J
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 1257
    return-void
.end method

.method public updateForLanguageChange()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2381
    sput-boolean v0, Lcom/android/phone/CallCard;->mLocaleChanged:Z

    .line 2382
    sput-boolean v0, Lcom/android/phone/CallCard;->mLCforUserData:Z

    .line 2383
    sput-boolean v0, Lcom/android/phone/CallCard;->mLCforUserDataHoldCall:Z

    .line 2384
    sput-boolean v0, Lcom/android/phone/CallCard;->sLCforUserDataSecondHoldCall:Z

    .line 2385
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 7
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 319
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

    invoke-static {v5}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 323
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

    invoke-static {v5}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    .line 327
    .local v4, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 328
    .local v2, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 329
    .local v1, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 332
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 333
    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 341
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

    iget-object v5, p0, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v5}, Lcom/mediatek/phone/DualTalkUtils;->isRingingWhenOutgoing()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 352
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

    .line 357
    .local v3, "skipUpdateRingingCall":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 358
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    .line 405
    .end local v3    # "skipUpdateRingingCall":Z
    :goto_1
    return-void

    .line 352
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 363
    .restart local v3    # "skipUpdateRingingCall":Z
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;)V

    .line 404
    .end local v3    # "skipUpdateRingingCall":Z
    :goto_2
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/phone/ext/ExtensionManager;->getCallCardExtension()Lcom/mediatek/phone/ext/CallCardExtension;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/mediatek/phone/ext/CallCardExtension;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_1

    .line 364
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_7

    .line 374
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_2

    .line 378
    :cond_7
    iget-object v5, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v5, v5, Lcom/android/phone/InCallUiState;->showAlreadyDisconnectedState:Z

    if-eqz v5, :cond_8

    .line 386
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateAlreadyDisconnected(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_2

    .line 400
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_2
.end method
