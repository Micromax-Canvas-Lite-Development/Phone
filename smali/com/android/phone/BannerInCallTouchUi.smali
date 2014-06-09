.class public Lcom/android/phone/BannerInCallTouchUi;
.super Landroid/widget/FrameLayout;
.source "BannerInCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;
.implements Lcom/android/phone/FlipBubble$UnlockListener;


# static fields
.field private static final ANSWER_CALL_ID:I = 0x0

.field private static final DBG:Z = false

.field private static final DECLINE_CALL_ID:I = 0x2

.field private static final ENABLE_PING_AUTO_REPEAT:Z = true

.field private static final ENABLE_PING_ON_RING_EVENTS:Z = false

.field private static final INCOMING_CALL_ACTION_DURATION:I = 0x1f4

.field private static final INCOMING_CALL_WIDGET_PING:I = 0x65

.field private static final LOG_TAG:Ljava/lang/String; = "BannerInCallTouchUi"

.field private static final PING_AUTO_REPEAT_DELAY_MSEC:J = 0x4b0L

.field private static final SEND_SMS_ID:I = 0x1


# instance fields
.field private mAddButton:Landroid/widget/ImageButton;

.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mAudioButton:Landroid/widget/CompoundButton;

.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mCdmaMergeButton:Landroid/view/ViewGroup;

.field private mDialpadButton:Landroid/widget/CompoundButton;

.field private mEndButton:Landroid/widget/ImageButton;

.field private mExtraButtonRow:Landroid/view/ViewStub;

.field private mExtraButtonRowInflated:Landroid/view/ViewGroup;

.field private mFlipIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

.field private mHandler:Landroid/os/Handler;

.field protected mHasPermanentMenuKey:Z

.field private mHoldButton:Landroid/widget/CompoundButton;

.field private mHoldSwapSpacer:Landroid/view/View;

.field private mInCallControls:Landroid/view/View;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingCallBackButton:Landroid/widget/ImageButton;

.field private mIncomingCallRespondViaSMSButton:Landroid/widget/ImageButton;

.field private mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field private mIncomingCallWidgetIsFadingOut:Z

.field private mIncomingCallWidgetShouldBeReset:Z

.field private mIncomingMenuButton:Landroid/widget/ImageButton;

.field private mIncomingVTCallIconMap:[I

.field private mIncomingVoiceCallMap:[I

.field private mLastIncomingCallActionTime:J

.field private mManageConferenceButton:Landroid/view/ViewGroup;

.field private mManageConferenceButtonImage:Landroid/widget/ImageButton;

.field private mMenuButton:Landroid/widget/ImageButton;

.field private mMergeButton:Landroid/widget/ImageButton;

.field private mMuteButton:Landroid/widget/CompoundButton;

.field private mRejectCallNoti:Landroid/widget/TextView;

.field private mShowInCallControlsDuringHidingAnimation:Z

.field private mSmsButtonSeparator:Landroid/view/View;

.field private mSwapButton:Landroid/widget/ImageButton;

.field private notShowDualTalkConference:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    iput-boolean v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z

    .line 133
    iput-boolean v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioModePopupVisible:Z

    .line 138
    iput-boolean v0, p0, Lcom/android/phone/BannerInCallTouchUi;->notShowDualTalkConference:Z

    .line 148
    new-instance v0, Lcom/android/phone/BannerInCallTouchUi$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BannerInCallTouchUi$1;-><init>(Lcom/android/phone/BannerInCallTouchUi;)V

    iput-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mHandler:Landroid/os/Handler;

    .line 1726
    iput-boolean v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mHasPermanentMenuKey:Z

    .line 1728
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingVoiceCallMap:[I

    .line 1736
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingVTCallIconMap:[I

    .line 173
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 174
    return-void

    .line 1728
    :array_0
    .array-data 4
        0x7f020091
        0x7f020093
        0x7f020092
        0x7f020094
        0x7f02008f
    .end array-data

    .line 1736
    :array_1
    .array-data 4
        0x7f020096
        0x7f020098
        0x7f020097
        0x7f020099
        0x7f02009a
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/BannerInCallTouchUi;)Lcom/android/phone/InCallScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BannerInCallTouchUi;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/BannerInCallTouchUi;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BannerInCallTouchUi;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/BannerInCallTouchUi;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BannerInCallTouchUi;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/phone/BannerInCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/BannerInCallTouchUi;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BannerInCallTouchUi;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/BannerInCallTouchUi;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BannerInCallTouchUi;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallControls:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/BannerInCallTouchUi;)Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BannerInCallTouchUi;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/BannerInCallTouchUi;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BannerInCallTouchUi;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallWidgetIsFadingOut:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/phone/BannerInCallTouchUi;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BannerInCallTouchUi;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z

    return p1
.end method

.method private dumpBottomButtonState()V
    .locals 2

    .prologue
    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - dialpad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-static {v1}, Lcom/android/phone/BannerInCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/BannerInCallTouchUi;->log(Ljava/lang/String;)V

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - speaker: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-static {v1}, Lcom/android/phone/BannerInCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/BannerInCallTouchUi;->log(Ljava/lang/String;)V

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-static {v1}, Lcom/android/phone/BannerInCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/BannerInCallTouchUi;->log(Ljava/lang/String;)V

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - hold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-static {v1}, Lcom/android/phone/BannerInCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/BannerInCallTouchUi;->log(Ljava/lang/String;)V

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - swap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-static {v1}, Lcom/android/phone/BannerInCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/BannerInCallTouchUi;->log(Ljava/lang/String;)V

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-static {v1}, Lcom/android/phone/BannerInCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/BannerInCallTouchUi;->log(Ljava/lang/String;)V

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - merge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-static {v1}, Lcom/android/phone/BannerInCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/BannerInCallTouchUi;->log(Ljava/lang/String;)V

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - cdmaMerge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/phone/BannerInCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/BannerInCallTouchUi;->log(Ljava/lang/String;)V

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - swap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-static {v1}, Lcom/android/phone/BannerInCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/BannerInCallTouchUi;->log(Ljava/lang/String;)V

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - manageConferenceButton: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/phone/BannerInCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/BannerInCallTouchUi;->log(Ljava/lang/String;)V

    .line 954
    return-void
.end method

.method private static getButtonState(Landroid/view/View;)Ljava/lang/String;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 957
    if-nez p0, :cond_0

    .line 958
    const-string v1, "(null)"

    .line 969
    .end local p0    # "view":Landroid/view/View;
    :goto_0
    return-object v1

    .line 960
    .restart local p0    # "view":Landroid/view/View;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 961
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "VISIBLE"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    instance-of v1, p0, Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    .line 964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p0, Landroid/widget/ImageButton;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 961
    .restart local p0    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    const-string v1, "INVISIBLE"

    goto :goto_1

    :cond_3
    const-string v1, "GONE"

    goto :goto_1

    .line 965
    :cond_4
    instance-of v1, p0, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_1

    .line 966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v1, p0

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", checked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p0, Landroid/widget/CompoundButton;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private getColorIndexByCall(Lcom/android/internal/telephony/Call;)I
    .locals 3
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 1695
    const/4 v0, 0x5

    .line 1696
    .local v0, "index":I
    invoke-virtual {p0, p1}, Lcom/android/phone/BannerInCallTouchUi;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 1697
    .local v1, "info":Landroid/provider/Telephony$SIMInfo;
    if-eqz v1, :cond_0

    .line 1698
    iget v0, v1, Landroid/provider/Telephony$SIMInfo;->mColor:I

    .line 1700
    :cond_0
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 1701
    const/4 v0, 0x4

    .line 1703
    :cond_1
    return v0
.end method

.method private getExtraButtonVisibility()I
    .locals 1

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mExtraButtonRowInflated:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1759
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mExtraButtonRowInflated:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 1761
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method private handleAudioButtonClick()V
    .locals 3

    .prologue
    .line 1104
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 1105
    .local v0, "inCallControlState":Lcom/android/phone/InCallControlState;
    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v1, :cond_0

    .line 1107
    invoke-direct {p0}, Lcom/android/phone/BannerInCallTouchUi;->showAudioModePopup()V

    .line 1110
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1115
    :goto_0
    return-void

    .line 1113
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->toggleSpeaker()V

    goto :goto_0
.end method

.method private hideIncomingCallWidget()V
    .locals 3

    .prologue
    .line 1409
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mFlipIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget;->setVisibility(I)V

    .line 1411
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallWidgetIsFadingOut:Z

    if-eqz v1, :cond_1

    .line 1456
    :cond_0
    :goto_0
    return-void

    .line 1418
    :cond_1
    const-string v1, "hideIncomingCallWidget()"

    invoke-direct {p0, v1}, Lcom/android/phone/BannerInCallTouchUi;->log(Ljava/lang/String;)V

    .line 1421
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallWidgetIsFadingOut:Z

    .line 1422
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1423
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1424
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1425
    new-instance v1, Lcom/android/phone/BannerInCallTouchUi$2;

    invoke-direct {v1, p0}, Lcom/android/phone/BannerInCallTouchUi$2;-><init>(Lcom/android/phone/BannerInCallTouchUi;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1455
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1684
    const-string v0, "BannerInCallTouchUi"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    return-void
.end method

.method private okToShowInCallControls()Z
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setExtraButtonVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 1746
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1747
    if-nez p1, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mExtraButtonRowInflated:Landroid/view/ViewGroup;

    .line 1749
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mExtraButtonRowInflated:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1750
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    .line 1755
    :cond_0
    :goto_0
    return-void

    .line 1752
    :cond_1
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mExtraButtonRowInflated:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1753
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mExtraButtonRowInflated:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupExtraButtons()V
    .locals 2

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0b00a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    .line 930
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 931
    const-string v0, "BannerInCallTouchUi"

    const-string v1, "CDMA Merge button is null even after ViewStub being inflated."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :goto_0
    return-void

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 936
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0b009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    .line 938
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 939
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0b009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    goto :goto_0
.end method

.method private showAudioModePopup()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1123
    new-instance v7, Landroid/widget/PopupMenu;

    iget-object v10, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-direct {v7, v10, v11}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 1125
    iget-object v7, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const v10, 0x7f100001

    iget-object v11, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v11}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1127
    iget-object v7, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1128
    iget-object v7, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1132
    iget-object v7, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v2

    .line 1134
    .local v2, "inCallControlState":Lcom/android/phone/InCallControlState;
    iget-object v7, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 1141
    .local v3, "menu":Landroid/view/Menu;
    const v7, 0x7f0b015a

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1142
    .local v4, "speakerItem":Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1148
    const v7, 0x7f0b015b

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1149
    .local v1, "earpieceItem":Landroid/view/MenuItem;
    const v7, 0x7f0b015c

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1150
    .local v6, "wiredHeadsetItem":Landroid/view/MenuItem;
    iget-object v7, p0, Lcom/android/phone/BannerInCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v5

    .line 1156
    .local v5, "usingHeadset":Z
    if-nez v5, :cond_1

    move v7, v8

    :goto_0
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1157
    if-nez v5, :cond_0

    move v9, v8

    :cond_0
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1159
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1160
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1165
    const v7, 0x7f0b015d

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1166
    .local v0, "bluetoothItem":Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1170
    iget-object v7, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    .line 1175
    iput-boolean v8, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioModePopupVisible:Z

    .line 1176
    return-void

    .end local v0    # "bluetoothItem":Landroid/view/MenuItem;
    :cond_1
    move v7, v9

    .line 1156
    goto :goto_0
.end method

.method private showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .param p1, "ringingCall"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 1462
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/phone/RespondViaSmsManager;->allowRespondViaSmsForCall(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 1463
    .local v0, "allowViaSms":Z
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mFlipIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v1, v0}, Lcom/android/phone/IncomingCallWidget;->showRespondViaSMS(Z)V

    .line 1464
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mFlipIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget;->setVisibility(I)V

    .line 1465
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mFlipIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget;->resetLayout()V

    .line 1467
    return-void
.end method

.method private updateAudioButton(Lcom/android/phone/InCallControlState;)V
    .locals 11
    .param p1, "inCallControlState"    # Lcom/android/phone/InCallControlState;

    .prologue
    .line 995
    const/4 v8, 0x0

    .line 998
    .local v8, "showToggleStateIndication":Z
    const/4 v5, 0x0

    .line 1001
    .local v5, "showMoreIndicator":Z
    const/4 v7, 0x0

    .line 1002
    .local v7, "showSpeakerOnIcon":Z
    const/4 v6, 0x0

    .line 1003
    .local v6, "showSpeakerOffIcon":Z
    const/4 v4, 0x0

    .line 1004
    .local v4, "showHandsetIcon":Z
    const/4 v3, 0x0

    .line 1006
    .local v3, "showBluetoothIcon":Z
    iget-boolean v9, p1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v9, :cond_2

    .line 1009
    iget-object v9, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 1014
    iget-object v9, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1017
    const/4 v5, 0x1

    .line 1018
    iget-boolean v9, p1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v9, :cond_0

    .line 1019
    const/4 v3, 0x1

    .line 1059
    :goto_0
    const/4 v0, 0x0

    .line 1060
    .local v0, "HIDDEN":I
    const/16 v1, 0xff

    .line 1062
    .local v1, "VISIBLE":I
    iget-object v9, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v9}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 1070
    .local v2, "layers":Landroid/graphics/drawable/LayerDrawable;
    if-eqz v5, :cond_8

    .line 1071
    const v9, 0x7f0b014f

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1072
    const v9, 0x7f0b0152

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v3, :cond_5

    const/16 v9, 0xff

    :goto_1
    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1075
    const v9, 0x7f0b0150

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1076
    const v9, 0x7f0b0154

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v4, :cond_6

    const/16 v9, 0xff

    :goto_2
    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1079
    const v9, 0x7f0b0151

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1080
    const v9, 0x7f0b0153

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v7, :cond_7

    const/16 v9, 0xff

    :goto_3
    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1094
    :goto_4
    return-void

    .line 1020
    .end local v0    # "HIDDEN":I
    .end local v1    # "VISIBLE":I
    .end local v2    # "layers":Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    iget-boolean v9, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v9, :cond_1

    .line 1021
    const/4 v7, 0x1

    goto :goto_0

    .line 1023
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 1029
    :cond_2
    iget-boolean v9, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v9, :cond_4

    .line 1032
    iget-object v9, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 1036
    iget-object v9, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    iget-boolean v10, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1039
    const/4 v8, 0x1

    .line 1041
    iget-boolean v7, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 1042
    iget-boolean v9, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-nez v9, :cond_3

    const/4 v6, 0x1

    :goto_5
    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_5

    .line 1048
    :cond_4
    iget-object v9, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 1049
    iget-object v9, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1052
    const/4 v8, 0x1

    .line 1053
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1072
    .restart local v0    # "HIDDEN":I
    .restart local v1    # "VISIBLE":I
    .restart local v2    # "layers":Landroid/graphics/drawable/LayerDrawable;
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 1076
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 1080
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 1083
    :cond_8
    const v9, 0x7f0b014f

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v3, :cond_9

    const/16 v9, 0xff

    :goto_6
    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1085
    const v9, 0x7f0b0152

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1087
    const v9, 0x7f0b0150

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v4, :cond_a

    const/16 v9, 0xff

    :goto_7
    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1089
    const v9, 0x7f0b0154

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1091
    const v9, 0x7f0b0151

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/16 v10, 0xff

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1092
    const v9, 0x7f0b0153

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_4

    .line 1083
    :cond_9
    const/4 v9, 0x0

    goto :goto_6

    .line 1087
    :cond_a
    const/4 v9, 0x0

    goto :goto_7
.end method

.method private updateBannerBackground(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    check-cast v0, Lcom/android/phone/FakeInCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/FakeInCallScreen;->updateBannerBackground(I)V

    .line 1825
    return-void
.end method


# virtual methods
.method public cancelIncomingCallActionTime()V
    .locals 4

    .prologue
    .line 1690
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mLastIncomingCallActionTime:J

    .line 1691
    return-void
.end method

.method public dismissAudioModePopup()V
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 1188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioModePopupVisible:Z

    .line 1190
    :cond_0
    return-void
.end method

.method getSimInfoByCall(Lcom/android/internal/telephony/Call;)Landroid/provider/Telephony$SIMInfo;
    .locals 7
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v4, 0x0

    .line 1707
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_0
    move-object v0, v4

    .line 1723
    :cond_1
    :goto_0
    return-object v0

    .line 1711
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1712
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v3

    .line 1713
    .local v3, "serialNumber":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1714
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_3

    iget-object v5, v0, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v0, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1718
    :cond_3
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 1719
    .local v1, "info2":Landroid/provider/Telephony$SIMInfo;
    if-eqz v1, :cond_4

    iget-object v5, v1, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v1, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, v1

    .line 1720
    goto :goto_0

    :cond_4
    move-object v0, v4

    .line 1723
    goto :goto_0
.end method

.method public getSmsView()Landroid/view/View;
    .locals 0

    .prologue
    .line 1782
    return-object p0
.end method

.method public getTouchUiHeight()I
    .locals 4

    .prologue
    const v3, 0x7f070010

    .line 1277
    const/4 v0, 0x0

    .line 1280
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/phone/BannerInCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1283
    invoke-virtual {p0}, Lcom/android/phone/BannerInCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1285
    invoke-direct {p0}, Lcom/android/phone/BannerInCallTouchUi;->getExtraButtonVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/BannerInCallTouchUi;->notShowDualTalkConference:Z

    if-eqz v1, :cond_1

    .line 1287
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/BannerInCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1294
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/BannerInCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1296
    return v0
.end method

.method public hideUnSupportButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1767
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1768
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1769
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 1770
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 1771
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1772
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1773
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1776
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1777
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1778
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1779
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 524
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 527
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 564
    const-string v1, "BannerInCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :goto_0
    return-void

    .line 539
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 543
    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/BannerInCallTouchUi;->handleAudioButtonClick()V

    goto :goto_0

    .line 547
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/phone/BannerInCallTouchUi;->showInCallScreen()V

    goto :goto_0

    .line 555
    :sswitch_3
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 561
    :sswitch_4
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 527
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0017 -> :sswitch_0
        0x7f0b0018 -> :sswitch_1
        0x7f0b0019 -> :sswitch_0
        0x7f0b001a -> :sswitch_0
        0x7f0b001f -> :sswitch_0
        0x7f0b0020 -> :sswitch_0
        0x7f0b0022 -> :sswitch_0
        0x7f0b0023 -> :sswitch_0
        0x7f0b0024 -> :sswitch_3
        0x7f0b0027 -> :sswitch_3
        0x7f0b009e -> :sswitch_0
        0x7f0b00a1 -> :sswitch_0
        0x7f0b00b2 -> :sswitch_2
        0x7f0b00b5 -> :sswitch_4
    .end sparse-switch
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 1251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioModePopupVisible:Z

    .line 1252
    return-void
.end method

.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 1403
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const v6, 0x7f0b0023

    const v5, 0x7f0b0022

    const/16 v4, 0x8

    .line 182
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 185
    invoke-virtual {p0}, Lcom/android/phone/BannerInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mHasPermanentMenuKey:Z

    .line 189
    const v2, 0x7f0b0026

    invoke-virtual {p0, v2}, Lcom/android/phone/BannerInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iput-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 190
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v2, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 191
    const v2, 0x7f0b0025

    invoke-virtual {p0, v2}, Lcom/android/phone/BannerInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IncomingCallWidget;

    iput-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mFlipIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    .line 192
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mFlipIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v2, p0}, Lcom/android/phone/IncomingCallWidget;->setUnlockListener(Lcom/android/phone/FlipBubble$UnlockListener;)V

    .line 194
    const v2, 0x7f0b000f

    invoke-virtual {p0, v2}, Lcom/android/phone/BannerInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 195
    const v2, 0x7f0b0028

    invoke-virtual {p0, v2}, Lcom/android/phone/BannerInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mRejectCallNoti:Landroid/widget/TextView;

    .line 206
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f0b0024

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    .line 207
    iget-boolean v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mHasPermanentMenuKey:Z

    if-eqz v2, :cond_3

    .line 208
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    .line 209
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    .line 214
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 218
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    .line 219
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 253
    :cond_2
    :goto_0
    const v2, 0x7f0b0027

    invoke-virtual {p0, v2}, Lcom/android/phone/BannerInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingMenuButton:Landroid/widget/ImageButton;

    .line 254
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f0b001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    .line 260
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f0b0017

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    iput-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    .line 262
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 264
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f0b0019

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    iput-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    .line 265
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 267
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f0b0018

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    iput-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    .line 268
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 270
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f0b001f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    iput-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    .line 271
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 273
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f0b0020

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    .line 274
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 276
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f0b0021

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    .line 293
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f0b0011

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    .line 296
    new-instance v1, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    .line 297
    .local v1, "smallerHitTargetTouchListener":Landroid/view/View$OnTouchListener;
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 298
    const v2, 0x7f0b00b2

    invoke-virtual {p0, v2}, Lcom/android/phone/BannerInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallBackButton:Landroid/widget/ImageButton;

    .line 299
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    const v2, 0x7f0b00b5

    invoke-virtual {p0, v2}, Lcom/android/phone/BannerInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallRespondViaSMSButton:Landroid/widget/ImageButton;

    .line 301
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallRespondViaSMSButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    const v2, 0x7f0b00b4

    invoke-virtual {p0, v2}, Lcom/android/phone/BannerInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mSmsButtonSeparator:Landroid/view/View;

    .line 304
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/ext/ExtensionManager;->getInCallTouchUiExtension()Lcom/mediatek/phone/ext/InCallTouchUiExtension;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/mediatek/phone/ext/InCallTouchUiExtension;->onFinishInflate(Landroid/view/View;)V

    .line 305
    return-void

    .line 222
    .end local v1    # "smallerHitTargetTouchListener":Landroid/view/View$OnTouchListener;
    :cond_3
    const-string v2, "ro.build.characteristics"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "ProductCharacteristic":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    .line 228
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_4

    .line 230
    if-eqz v0, :cond_6

    const-string v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 231
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    .line 240
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_5

    .line 242
    if-eqz v0, :cond_7

    const-string v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 243
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    .line 249
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 233
    :cond_6
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 245
    :cond_7
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 1307
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "grabbedState"    # I

    .prologue
    .line 1583
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_0

    .line 1589
    packed-switch p2, :pswitch_data_0

    .line 1596
    const-string v2, "BannerInCallTouchUi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGrabbedStateChange: unexpected grabbedState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    const/4 v1, 0x0

    .line 1599
    .local v1, "hintTextResId":I
    const/4 v0, 0x0

    .line 1605
    .local v0, "hintColorResId":I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v1, v0}, Lcom/android/phone/InCallScreen;->updateIncomingCallWidgetHint(II)V

    .line 1607
    .end local v0    # "hintColorResId":I
    .end local v1    # "hintTextResId":I
    :cond_0
    return-void

    .line 1592
    :pswitch_0
    const/4 v1, 0x0

    .line 1593
    .restart local v1    # "hintTextResId":I
    const/4 v0, 0x0

    .line 1594
    .restart local v0    # "hintColorResId":I
    goto :goto_0

    .line 1589
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onIncomingRing()V
    .locals 0

    .prologue
    .line 1620
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 622
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 625
    .local v2, "id":I
    packed-switch v2, :pswitch_data_0

    .line 646
    :pswitch_0
    const-string v4, "BannerInCallTouchUi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLongClick() with unexpected View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Ignoring it."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :goto_0
    return v3

    .line 633
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 634
    .local v1, "description":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 637
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 639
    .local v0, "cheatSheet":Landroid/widget/Toast;
    const/16 v4, 0x51

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0, v4, v3, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 641
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 643
    .end local v0    # "cheatSheet":Landroid/widget/Toast;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0017
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 1217
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 1218
    const-string v0, "BannerInCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :goto_0
    return v3

    .line 1222
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1236
    const-string v0, "BannerInCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick:  unexpected View ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (MenuItem = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1224
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 1230
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 1233
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 1222
    :pswitch_data_0
    .packed-switch 0x7f0b015a
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 1312
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "whichHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 1323
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 1324
    const-string v0, "BannerInCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrigger("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") from incoming-call widget, but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :goto_0
    return-void

    .line 1335
    :cond_0
    iput-boolean v3, p0, Lcom/android/phone/BannerInCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    .line 1336
    packed-switch p2, :pswitch_data_0

    .line 1386
    const-string v0, "BannerInCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/BannerInCallTouchUi;->hideIncomingCallWidget()V

    .line 1398
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3, v3}, Lcom/android/phone/InCallScreen;->updateIncomingCallWidgetHint(II)V

    goto :goto_0

    .line 1339
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 1340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    .line 1345
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mLastIncomingCallActionTime:J

    goto :goto_1

    .line 1350
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 1379
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 1382
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mLastIncomingCallActionTime:J

    goto :goto_1

    .line 1336
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1206
    invoke-direct {p0}, Lcom/android/phone/BannerInCallTouchUi;->showAudioModePopup()V

    .line 1208
    :cond_0
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .param p1, "inCallScreen"    # Lcom/android/phone/InCallScreen;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 178
    return-void
.end method

.method public showInCallScreen()V
    .locals 7

    .prologue
    .line 571
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->createInCallIntent(Z)Landroid/content/Intent;

    move-result-object v1

    .line 572
    .local v1, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/phone/BannerInCallTouchUi;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/phone/BannerInCallTouchUi;->getMeasuredHeight()I

    move-result v6

    invoke-static {p0, v3, v4, v5, v6}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 574
    .local v2, "ops":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Lcom/android/phone/BannerInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ops":Landroid/app/ActivityOptions;
    :goto_0
    return-void

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "BannerInCallTouchUi"

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

.method public touchDown()V
    .locals 1

    .prologue
    .line 1814
    const v0, 0x7f020005

    invoke-direct {p0, v0}, Lcom/android/phone/BannerInCallTouchUi;->updateBannerBackground(I)V

    .line 1815
    return-void
.end method

.method public touchUp()V
    .locals 1

    .prologue
    .line 1820
    const v0, 0x7f020004

    invoke-direct {p0, v0}, Lcom/android/phone/BannerInCallTouchUi;->updateBannerBackground(I)V

    .line 1821
    return-void
.end method

.method public triggerPing()V
    .locals 4

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1635
    const-string v0, "- triggerPing: InCallScreen no longer in foreground; ignoring..."

    invoke-direct {p0, v0}, Lcom/android/phone/BannerInCallTouchUi;->log(Ljava/lang/String;)V

    .line 1679
    :cond_0
    :goto_0
    return-void

    .line 1639
    :cond_1
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    if-nez v0, :cond_2

    .line 1642
    const-string v0, "BannerInCallTouchUi"

    const-string v1, "- triggerPing: null mIncomingCallWidget!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1649
    :cond_2
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->ping()V

    .line 1676
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public unLockFail(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mFlipIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->resetLayout()V

    .line 1809
    return-void
.end method

.method public unLockSuccess(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1788
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1798
    const-string v0, "BannerInCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    :goto_0
    return-void

    .line 1791
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 1795
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 1788
    :pswitch_data_0
    .packed-switch 0x7f0b00b7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method updateInCallControls(Lcom/android/internal/telephony/CallManager;)V
    .locals 8
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 656
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 657
    invoke-virtual {p0}, Lcom/android/phone/BannerInCallTouchUi;->updateInCallControlsDuringDMLocked()V

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 674
    .local v1, "phoneType":I
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 691
    .local v0, "inCallControlState":Lcom/android/phone/InCallControlState;
    iget-boolean v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mHasPermanentMenuKey:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_3

    .line 692
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v2, :cond_5

    .line 693
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 694
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 695
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 722
    :goto_1
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v2, :cond_3

    .line 723
    if-eq v1, v6, :cond_2

    if-ne v1, v3, :cond_a

    .line 730
    :cond_2
    const-string v2, "BannerInCallTouchUi"

    const-string v3, "updateInCallControls: Add *and* Merge enabled, but can\'t show both!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_3
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 750
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 751
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 754
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 755
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 758
    invoke-direct {p0, v0}, Lcom/android/phone/BannerInCallTouchUi;->updateAudioButton(Lcom/android/phone/InCallControlState;)V

    .line 764
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v2, :cond_b

    .line 765
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 766
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v6}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 767
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 768
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 796
    :goto_2
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->updateButtonStateOutsideInCallTouchUi()V

    .line 797
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v2, :cond_4

    .line 803
    const-string v2, "BannerInCallTouchUi"

    const-string v3, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_4
    if-ne v1, v7, :cond_0

    .line 840
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v2, :cond_0

    .line 846
    const-string v2, "BannerInCallTouchUi"

    const-string v3, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 696
    :cond_5
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v2, :cond_9

    .line 697
    if-ne v1, v7, :cond_6

    .line 701
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 702
    :cond_6
    if-eq v1, v6, :cond_7

    if-ne v1, v3, :cond_8

    .line 704
    :cond_7
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 705
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 706
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 708
    :cond_8
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

    .line 718
    :cond_9
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 719
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 720
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 732
    :cond_a
    if-eq v1, v7, :cond_3

    .line 737
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

    .line 769
    :cond_b
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v2, :cond_c

    .line 770
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 771
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 772
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 784
    :cond_c
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    if-eqz v2, :cond_d

    .line 785
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 786
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 787
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 788
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 789
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 791
    :cond_d
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 792
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 793
    iget-object v2, p0, Lcom/android/phone/BannerInCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method updateInCallControlsDuringDMLocked()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 582
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 589
    .local v0, "inCallControlState":Lcom/android/phone/InCallControlState;
    iget-boolean v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mHasPermanentMenuKey:Z

    if-eqz v1, :cond_1

    .line 590
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 592
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 595
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 596
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 602
    :cond_1
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 604
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 605
    iget-object v4, p0, Lcom/android/phone/BannerInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->canShowSwap:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 606
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 608
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canShowSwap:Z

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 609
    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 610
    return-void

    :cond_3
    move v1, v3

    .line 605
    goto :goto_0
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 12
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 312
    iget-object v8, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v8, :cond_0

    .line 313
    const-string v8, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v8}, Lcom/android/phone/BannerInCallTouchUi;->log(Ljava/lang/String;)V

    .line 501
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    .line 320
    .local v7, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    const/4 v6, 0x0

    .line 321
    .local v6, "showIncomingCallControls":Z
    const/4 v5, 0x0

    .line 323
    .local v5, "showInCallControls":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 324
    .local v4, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 331
    .local v1, "fgCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v8, v8, Lcom/android/phone/InCallScreen;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v8}, Lcom/mediatek/phone/DualTalkUtils;->isRingingWhenOutgoing()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 340
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 342
    const/4 v6, 0x1

    .line 366
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 367
    .local v2, "now":J
    iget-wide v8, p0, Lcom/android/phone/BannerInCallTouchUi;->mLastIncomingCallActionTime:J

    const-wide/16 v10, 0x1f4

    add-long/2addr v8, v10

    cmp-long v8, v2, v8

    if-gez v8, :cond_3

    .line 368
    const-string v8, "updateState: Too soon after last action; not drawing!"

    invoke-direct {p0, v8}, Lcom/android/phone/BannerInCallTouchUi;->log(Ljava/lang/String;)V

    .line 369
    const/4 v6, 0x0

    .line 370
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 371
    iget-object v8, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const-wide/16 v9, 0x1f4

    invoke-virtual {v8, v9, v10}, Lcom/android/phone/InCallScreen;->requestUpdateScreenDelay(J)V

    .line 399
    .end local v2    # "now":J
    :cond_3
    :goto_2
    if-eqz v6, :cond_9

    if-eqz v5, :cond_9

    .line 400
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 350
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 351
    :cond_5
    const/4 v5, 0x1

    goto :goto_1

    .line 379
    :cond_6
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 380
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 381
    .local v0, "fg":Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 382
    const/4 v5, 0x0

    goto :goto_2

    .line 385
    :cond_7
    const/4 v5, 0x1

    goto :goto_2

    .line 388
    .end local v0    # "fg":Lcom/android/internal/telephony/Call;
    :cond_8
    const/4 v5, 0x1

    goto :goto_2

    .line 403
    :cond_9
    iget-boolean v8, p0, Lcom/android/phone/BannerInCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    if-eqz v8, :cond_a

    .line 408
    const/4 v5, 0x1

    .line 414
    :cond_a
    if-eqz v5, :cond_e

    .line 416
    invoke-virtual {p0, p1}, Lcom/android/phone/BannerInCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V

    .line 417
    iget-object v8, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallControls:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 423
    :goto_3
    if-eqz v6, :cond_11

    .line 425
    invoke-direct {p0, v4}, Lcom/android/phone/BannerInCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    .line 426
    const v8, 0x7f020004

    invoke-direct {p0, v8}, Lcom/android/phone/BannerInCallTouchUi;->updateBannerBackground(I)V

    .line 429
    iget-boolean v8, p0, Lcom/android/phone/BannerInCallTouchUi;->mHasPermanentMenuKey:Z

    if-nez v8, :cond_f

    invoke-static {p1}, Lcom/mediatek/phone/InCallMenuState;->canIncomingMenuShow(Lcom/android/internal/telephony/CallManager;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 430
    iget-object v8, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingMenuButton:Landroid/widget/ImageButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 442
    :goto_4
    iget-object v8, p0, Lcom/android/phone/BannerInCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v8, v8, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 443
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v8, v8, Lcom/android/phone/InCallScreen;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v8}, Lcom/mediatek/phone/DualTalkUtils;->isRingingWhenOutgoing()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 444
    invoke-virtual {p0}, Lcom/android/phone/BannerInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0801a3

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 448
    :cond_b
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v8, v8, Lcom/android/phone/InCallScreen;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v8}, Lcom/mediatek/phone/DualTalkUtils;->isMultiplePhoneActive()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 463
    iget-object v8, p0, Lcom/android/phone/BannerInCallTouchUi;->mRejectCallNoti:Landroid/widget/TextView;

    if-eqz v8, :cond_c

    .line 464
    iget-object v8, p0, Lcom/android/phone/BannerInCallTouchUi;->mRejectCallNoti:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    :cond_c
    :goto_5
    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v7, v8, :cond_13

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v8, :cond_d

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v8, :cond_13

    .line 500
    :cond_d
    :goto_6
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/phone/ext/ExtensionManager;->getInCallTouchUiExtension()Lcom/mediatek/phone/ext/InCallTouchUiExtension;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/mediatek/phone/ext/InCallTouchUiExtension;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_0

    .line 420
    :cond_e
    iget-object v8, p0, Lcom/android/phone/BannerInCallTouchUi;->mInCallControls:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 432
    :cond_f
    iget-object v8, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingMenuButton:Landroid/widget/ImageButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_4

    .line 466
    :cond_10
    iget-object v8, p0, Lcom/android/phone/BannerInCallTouchUi;->mRejectCallNoti:Landroid/widget/TextView;

    if-eqz v8, :cond_c

    .line 467
    iget-object v8, p0, Lcom/android/phone/BannerInCallTouchUi;->mRejectCallNoti:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 471
    :cond_11
    invoke-direct {p0}, Lcom/android/phone/BannerInCallTouchUi;->hideIncomingCallWidget()V

    .line 472
    iget-object v8, p0, Lcom/android/phone/BannerInCallTouchUi;->mIncomingMenuButton:Landroid/widget/ImageButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 473
    iget-object v8, p0, Lcom/android/phone/BannerInCallTouchUi;->mRejectCallNoti:Landroid/widget/TextView;

    if-eqz v8, :cond_12

    .line 474
    iget-object v8, p0, Lcom/android/phone/BannerInCallTouchUi;->mRejectCallNoti:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    :cond_12
    iget-object v8, p0, Lcom/android/phone/BannerInCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v8, v8, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto :goto_5

    .line 497
    :cond_13
    invoke-virtual {p0}, Lcom/android/phone/BannerInCallTouchUi;->dismissAudioModePopup()V

    goto :goto_6
.end method
