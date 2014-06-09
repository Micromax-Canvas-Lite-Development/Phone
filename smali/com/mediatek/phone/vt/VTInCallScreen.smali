.class public Lcom/mediatek/phone/vt/VTInCallScreen;
.super Landroid/widget/RelativeLayout;
.source "VTInCallScreen.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/mediatek/phone/vt/IVTInCallScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;,
        Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DELAYED_CLEANUP_AFTER_DISCONNECT:I = 0x92

.field private static final DELAYED_CLEANUP_AFTER_DISCONNECT2:I = 0x93

.field private static final HIDDEN:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "VTInCallScreen"

.field private static final SECOND_TO_MILLISECOND:I = 0x3e8

.field private static final VDBG:Z = true

.field private static final VISIBLE:I = 0xff

.field private static final VT_MEDIA_ERROR_VIDEO_FAIL:I = 0x1

.field private static final VT_MEDIA_OCCUPIED:I = 0x1

.field private static final VT_MEDIA_RECORDER_ERROR_UNKNOWN:I = 0x1

.field private static final VT_MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED:I = 0x321

.field private static final VT_MEDIA_RECORDER_NO_I_FRAME:I = 0x7fff

.field private static final VT_PEER_SNAPSHOT_FAIL:I = 0x7f

.field private static final VT_PEER_SNAPSHOT_OK:I = 0x7e

.field private static final VT_TAKE_PEER_PHOTO_DISK_MIN_SIZE:I = 0xf4240

.field private static final WAITING_TIME_FOR_ASK_VT_SHOW_ME:I = 0x5


# instance fields
.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

.field private mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field private mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

.field private mHandler:Landroid/os/Handler;

.field private mHighVideoHolder:Landroid/view/SurfaceHolder;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mInCallVideoSettingDialog:Landroid/app/AlertDialog;

.field private mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

.field private mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

.field private mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

.field private mLocaleChanged:Z

.field private mLowVideoHolder:Landroid/view/SurfaceHolder;

.field private mVTAudio:Landroid/widget/CompoundButton;

.field private mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

.field private mVTDialpad:Landroid/widget/CompoundButton;

.field private mVTHangUp:Landroid/widget/ImageButton;

.field private mVTHangUpWrapper:Landroid/widget/LinearLayout;

.field private mVTHighDown:Landroid/widget/ImageButton;

.field private mVTHighUp:Landroid/widget/ImageButton;

.field private mVTHighVideo:Landroid/view/SurfaceView;

.field private mVTInCallCanvas:Landroid/view/ViewGroup;

.field private mVTLowDown:Landroid/widget/ImageButton;

.field private mVTLowUp:Landroid/widget/ImageButton;

.field private mVTLowVideo:Landroid/view/SurfaceView;

.field private mVTMTAsker:Landroid/app/AlertDialog;

.field private mVTMute:Landroid/widget/CompoundButton;

.field private mVTOverflowMenu:Landroid/widget/ImageButton;

.field private mVTPopupMenu:Landroid/widget/PopupMenu;

.field private mVTPowerManager:Landroid/os/PowerManager;

.field mVTRecorderEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVTRecorderSelector:Landroid/app/AlertDialog;

.field private mVTScreenMode:Lcom/android/phone/Constants$VTScreenMode;

.field private mVTSwapVideo:Landroid/widget/CompoundButton;

.field private mVTVoiceReCallDialog:Landroid/app/AlertDialog;

.field private mVTVoiceRecordingIcon:Landroid/widget/ImageView;

.field private mVTWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 147
    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/Constants$VTScreenMode;

    .line 235
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreen$1;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$1;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHandler:Landroid/os/Handler;

    .line 191
    const-string v0, "VTInCallScreen constructor..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 196
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/Constants$VTScreenMode;

    .line 235
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreen$1;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$1;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHandler:Landroid/os/Handler;

    .line 207
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 208
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 218
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 147
    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/Constants$VTScreenMode;

    .line 235
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreen$1;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$1;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHandler:Landroid/os/Handler;

    .line 220
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 221
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onReceiveVTManagerReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showVTLocalZoom()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showVTLocalBrightness()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showVTLocalContrast()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTInCallVideoSettingLocalEffect()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTInCallVideoSettingLocalNightMode()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTInCallVideoSettingPeerQuality()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateLocalZoomOrBrightness()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/mediatek/phone/vt/VTInCallScreen;->makeVoiceReCall(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/mediatek/phone/vt/VTInCallScreen;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;
    .param p1, "x1"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/phone/vt/VTInCallScreen;->startRecord(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTHideMeClick()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/phone/InCallScreen;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTReceiveFirstFrame()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private closeVTInCallCanvas()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 801
    const-string v0, "closeVTInCallCanvas!"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 806
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissAudioModePopup()V

    .line 807
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 809
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 812
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 813
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 815
    :cond_2
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    .line 816
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 818
    :cond_3
    return-void
.end method

.method private closeVTManager()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1815
    const-string v0, "closeVTManager()!"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1817
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissVTDialogs()V

    .line 1818
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 1820
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x1

    invoke-static {v0, v3, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1822
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHandler:Landroid/os/Handler;

    const v1, 0x8001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1824
    const-string v0, "VT_VOICE_RECORDING"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VT_VIDEO_RECORDING"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1826
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->isVTRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1827
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->stopRecord()V

    .line 1832
    :cond_1
    const-string v0, "- call VTManager onDisconnected ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1834
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->onDisconnected()V

    .line 1836
    const-string v0, "- finish call VTManager onDisconnected ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1840
    const-string v0, "- set VTManager close ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1842
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->setVTClose()V

    .line 1844
    const-string v0, "- finish set VTManager close ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1847
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTInControlRes()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1848
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.phone.extra.VT_CALL_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 1849
    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->setVTInControlRes(Z)V

    .line 1851
    :cond_2
    return-void
.end method

.method private constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 2
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 2485
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-nez v0, :cond_0

    .line 2486
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    .line 2487
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    const v1, 0x7f100005

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 2488
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 2490
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->setupMenuItems(Landroid/view/Menu;)V

    .line 2491
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method private dismissAudioModePopup()V
    .locals 1

    .prologue
    .line 2694
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 2695
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 2696
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 2697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopupVisible:Z

    .line 2699
    :cond_0
    return-void
.end method

.method private dismissVideoSettingDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3204
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3205
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3206
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    .line 3208
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 3209
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3210
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    .line 3212
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 3213
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3214
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    .line 3216
    :cond_2
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 3217
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3218
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    .line 3220
    :cond_3
    return-void
.end method

.method private getVTInControlRes()Z
    .locals 1

    .prologue
    .line 1784
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInControlRes:Z

    return v0
.end method

.method private handleAudioButtonClick()V
    .locals 3

    .prologue
    .line 2740
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 2742
    .local v0, "inCallControlState":Lcom/android/phone/InCallControlState;
    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v1, :cond_0

    .line 2744
    const-string v1, "- handleAudioButtonClick: \'popup menu\' mode..."

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2746
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showAudioModePopup()V

    .line 2749
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2756
    :goto_0
    return-void

    .line 2752
    :cond_0
    const-string v1, "- handleAudioButtonClick: \'speaker toggle\' mode..."

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2754
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->toggleSpeaker()V

    goto :goto_0
.end method

.method private hideLocalZoomOrBrightness()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 954
    const-string v0, "hideLocalZoomOrBrightness()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 958
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 959
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 960
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 961
    return-void
.end method

.method private isDialerOpened()Z
    .locals 1

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 3223
    const-string v0, "VTInCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    return-void
.end method

.method private makeVoiceReCall(Ljava/lang/String;I)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "slot"    # I

    .prologue
    .line 2231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeVoiceReCall(), number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slot is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2235
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone.extra.slot"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2236
    const-string v1, "com.android.phone.extra.international"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2237
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2238
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    .line 2239
    sget-object v1, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    invoke-virtual {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->setVTScreenMode(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 2240
    return-void
.end method

.method private okToRecordVoice()Z
    .locals 1

    .prologue
    .line 2481
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoConnected:Z

    return v0
.end method

.method private onReceiveVTManagerReady()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3073
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoReady:Z

    .line 3074
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 3077
    const-string v0, "Incallscreen, before call setting"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3080
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3082
    const-string v0, "Now DM not locked, VTManager.getInstance().unlockPeerVideo() start;"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3085
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->unlockPeerVideo()V

    .line 3087
    const-string v0, "Now DM not locked, VTManager.getInstance().unlockPeerVideo() end;"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3091
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTIsMT:Z

    if-eqz v0, :cond_0

    .line 3094
    const-string v0, "- VTSettingUtils.getInstance().mShowLocalMT : 1 !"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3095
    const-string v0, "Incallscreen, before enableAlwaysAskSettings"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3097
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->enableAlwaysAskSettings(I)V

    .line 3099
    const-string v0, "Incallscreen, after enableAlwaysAskSettings"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3102
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mediatek/phone/vt/VTInCallScreen$20;

    invoke-direct {v2, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$20;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mediatek/phone/vt/VTInCallScreen$19;

    invoke-direct {v2, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$19;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/phone/vt/VTInCallScreen$18;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$18;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    .line 3167
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3169
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;ILandroid/app/AlertDialog;)V

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;->start()V

    .line 3173
    :cond_0
    return-void
.end method

.method private onVTHideMeClick()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1153
    const-string v2, "onVTHideMeClick()..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1156
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v2

    sget-object v3, Lcom/mediatek/vt/VTManager$State;->READY:Lcom/mediatek/vt/VTManager$State;

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v2

    sget-object v3, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    if-eq v2, v3, :cond_0

    .line 1178
    :goto_0
    return-void

    .line 1161
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSlotId:I

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallUtils;->checkVTFile(I)V

    .line 1163
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-eqz v2, :cond_1

    .line 1164
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    .line 1176
    :goto_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-nez v3, :cond_4

    :goto_2
    iput-boolean v0, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    .line 1177
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    goto :goto_0

    .line 1166
    :cond_1
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1167
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_1

    .line 1168
    :cond_2
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1169
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_1

    .line 1171
    :cond_3
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    iget v3, v3, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSlotId:I

    invoke-static {v3}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1176
    goto :goto_2
.end method

.method private onVTHideMeClick2()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1184
    const-string v0, "onVTHideMeClick2()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1187
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSlotId:I

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallUtils;->checkVTFile(I)V

    .line 1189
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1190
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v1

    iget v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSlotId:I

    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    .line 1197
    :goto_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v3, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    .line 1198
    return-void

    .line 1191
    :cond_0
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1192
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_0

    .line 1194
    :cond_1
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private onVTInCallVideoSetting()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const v5, 0x7f0a0018

    const v4, 0x7f080023

    .line 1435
    const-string v2, "onVTInCallVideoSetting() ! "

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1438
    new-instance v1, Lcom/mediatek/phone/vt/VTInCallScreen$4;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$4;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 1498
    .local v1, "myClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1499
    .local v0, "myBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0801cc

    new-instance v3, Lcom/mediatek/phone/vt/VTInCallScreen$5;

    invoke-direct {v3, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$5;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1508
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-nez v2, :cond_3

    .line 1509
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v2, :cond_0

    .line 1510
    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1534
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    .line 1535
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1536
    return-void

    .line 1512
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v2, :cond_1

    .line 1513
    const/4 v2, 0x1

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1515
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v2, :cond_2

    .line 1516
    const/4 v2, 0x2

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1519
    :cond_2
    invoke-virtual {v0, v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1523
    :cond_3
    const v2, 0x7f0a0019

    new-instance v3, Lcom/mediatek/phone/vt/VTInCallScreen$6;

    invoke-direct {v3, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$6;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private onVTInCallVideoSettingLocalEffect()V
    .locals 12

    .prologue
    .line 1540
    const-string v10, "onVTInCallVideoSettingLocalEffect() ! "

    invoke-direct {p0, v10}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1542
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v7, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1543
    .local v7, "myBuilder":Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0801cc

    new-instance v11, Lcom/mediatek/phone/vt/VTInCallScreen$7;

    invoke-direct {v11, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$7;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v7, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1552
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/vt/VTManager;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v9

    .line 1555
    .local v9, "supportEntryValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_1

    .line 1588
    :cond_0
    :goto_0
    return-void

    .line 1559
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0017

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1561
    .local v3, "entryValues":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0016

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1563
    .local v1, "entries":[Ljava/lang/CharSequence;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1564
    .local v4, "entryValues2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1566
    .local v2, "entries2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v3

    .local v6, "len":I
    :goto_1
    if-ge v5, v6, :cond_3

    .line 1567
    aget-object v10, v3, v5

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_2

    .line 1568
    aget-object v10, v3, v5

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1569
    aget-object v10, v1, v5

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1566
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1574
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onVTInCallVideoSettingLocalEffect() : entryValues2.size() - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1577
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/vt/VTManager;->getColorEffect()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1579
    .local v0, "currentValue":I
    new-instance v8, Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;

    invoke-direct {v8, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 1581
    .local v8, "myClickListener":Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;
    invoke-virtual {v8, v4}, Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;->setValues(Ljava/util/ArrayList;)V

    .line 1582
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v10, v0, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1585
    const v10, 0x7f080026

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1586
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    .line 1587
    iget-object v10, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private onVTInCallVideoSettingLocalNightMode()V
    .locals 6

    .prologue
    const v5, 0x7f0a001a

    const/4 v4, 0x0

    .line 1617
    const-string v2, "onVTInCallVideoSettingLocalNightMode() ! "

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1620
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1621
    .local v0, "myBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0801cc

    new-instance v3, Lcom/mediatek/phone/vt/VTInCallScreen$8;

    invoke-direct {v3, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$8;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1629
    const v2, 0x7f080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1631
    new-instance v1, Lcom/mediatek/phone/vt/VTInCallScreen$9;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$9;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 1656
    .local v1, "myClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->isSupportNightMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1658
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getNightMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1659
    invoke-virtual {v0, v5, v4, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1680
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    .line 1681
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1682
    return-void

    .line 1663
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1668
    :cond_1
    const v2, 0x7f0a001b

    new-instance v3, Lcom/mediatek/phone/vt/VTInCallScreen$10;

    invoke-direct {v3, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$10;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private onVTInCallVideoSettingPeerQuality()V
    .locals 6

    .prologue
    const v5, 0x7f0a001c

    const/4 v4, 0x1

    .line 1686
    const-string v2, "onVTInCallVideoSettingPeerQuality() ! "

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1688
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1689
    .local v0, "myBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0801cc

    new-instance v3, Lcom/mediatek/phone/vt/VTInCallScreen$11;

    invoke-direct {v3, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$11;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1697
    const v2, 0x7f080028

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1699
    new-instance v1, Lcom/mediatek/phone/vt/VTInCallScreen$12;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$12;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 1724
    .local v1, "myClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getVideoQuality()I

    move-result v2

    if-ne v4, v2, :cond_0

    .line 1725
    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1740
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    .line 1741
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1742
    return-void

    .line 1728
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getVideoQuality()I

    move-result v2

    if-nez v2, :cond_1

    .line 1729
    invoke-virtual {v0, v5, v4, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1734
    :cond_1
    const-string v2, "VTManager.getInstance().getVideoQuality() is not VTManager.VT_VQ_SHARP or VTManager.VT_VQ_NORMAL , error ! "

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onVTReceiveFirstFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1793
    const-string v0, "onVTReceiveFirstFrame() ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1795
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_2

    .line 1796
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 1797
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1798
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1808
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-nez v0, :cond_1

    .line 1809
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    .line 1811
    :cond_1
    return-void

    .line 1802
    :cond_2
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 1803
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private onVTShowDialpad()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1393
    const-string v0, "onVTShowDialpad() ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1396
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    const-string v0, "onShowHideDialpad(): Set mInCallTitle VISIBLE"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1400
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 1402
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    .line 1403
    return-void
.end method

.method private onVTSwapVideos()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1407
    const-string v0, "onVTSwapVideos() ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1410
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_1

    .line 1413
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 1416
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    .line 1418
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1419
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTLocalPeerDisplay()V

    .line 1420
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1422
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v0, :cond_2

    .line 1423
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showVTLocalZoom()V

    .line 1425
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v0, :cond_3

    .line 1426
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showVTLocalBrightness()V

    .line 1428
    :cond_3
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_4

    .line 1429
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showVTLocalContrast()V

    .line 1431
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 1416
    goto :goto_0
.end method

.method private onVTSwitchCameraClick()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1202
    const-string v0, "onVTSwitchCameraClick()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1205
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v2, Lcom/mediatek/vt/VTManager$State;->READY:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v2, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v2, :cond_0

    .line 1234
    :goto_0
    return-void

    .line 1210
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInSwitchCamera:Z

    if-eqz v0, :cond_1

    .line 1212
    const-string v0, "VTManager is handling switchcamera now, so returns this time."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1219
    :cond_1
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreen$3;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$3;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTInCallScreen$3;->start()V

    .line 1227
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTFrontCameraNow:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTFrontCameraNow:Z

    .line 1228
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 1230
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 1231
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 1232
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 1233
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1227
    goto :goto_1
.end method

.method private onVTTakePeerPhotoClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1105
    const-string v0, "onVTTakePeerPhotoClick()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1108
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    .line 1149
    :goto_0
    return-void

    .line 1113
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInSnapshot:Z

    if-eqz v0, :cond_1

    .line 1115
    const-string v0, "VTManager is handling snapshot now, so returns this time."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1121
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1122
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1126
    :cond_2
    const-wide/32 v0, 0xf4240

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->diskSpaceAvailable(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1127
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1132
    :cond_3
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreen$2;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$2;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTInCallScreen$2;->start()V

    goto :goto_0
.end method

.method private onVoiceVideoRecordClick(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 3010
    const-string v1, "onVoiceVideoRecordClick"

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3012
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3013
    .local v0, "title":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3038
    :cond_0
    :goto_0
    return-void

    .line 3016
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3017
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3020
    :cond_2
    const-wide/32 v1, 0x200000

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->diskSpaceAvailable(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3021
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v4}, Lcom/android/phone/InCallScreen;->handleStorageFull(Z)V

    goto :goto_0

    .line 3025
    :cond_3
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f080076

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3027
    const-string v1, "want to startRecord"

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3029
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getPhoneRecorderState()I

    move-result v1

    if-nez v1, :cond_0

    .line 3031
    const-string v1, "startRecord"

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3033
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showStartVTRecorderDialog()V

    goto :goto_0

    .line 3035
    :cond_4
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f080077

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3036
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->stopRecord()V

    goto :goto_0
.end method

.method private openVTInCallCanvas()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 783
    const-string v0, "openVTInCallCanvas!"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 787
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 791
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 795
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 797
    :cond_2
    return-void
.end method

.method private setVTInControlRes(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1788
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean p1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInControlRes:Z

    .line 1789
    return-void
.end method

.method private showAudioModePopup()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2629
    const-string v7, "showAudioModePopup()..."

    invoke-direct {p0, v7}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2632
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissAudioModePopup()V

    .line 2634
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-nez v7, :cond_0

    .line 2635
    new-instance v7, Landroid/widget/PopupMenu;

    iget-object v10, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v11, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-direct {v7, v10, v11}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 2637
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const v10, 0x7f100001

    iget-object v11, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v11}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2639
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 2640
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 2645
    :cond_0
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v2

    .line 2648
    .local v2, "inCallControlState":Lcom/android/phone/InCallControlState;
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 2655
    .local v3, "menu":Landroid/view/Menu;
    const v7, 0x7f0b015a

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2656
    .local v4, "speakerItem":Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2662
    const v7, 0x7f0b015b

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2663
    .local v1, "earpieceItem":Landroid/view/MenuItem;
    const v7, 0x7f0b015c

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2664
    .local v6, "wiredHeadsetItem":Landroid/view/MenuItem;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v5

    .line 2670
    .local v5, "usingHeadset":Z
    if-nez v5, :cond_2

    move v7, v8

    :goto_0
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2671
    if-nez v5, :cond_1

    move v9, v8

    :cond_1
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2673
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2674
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2676
    const v7, 0x7f0b015d

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2677
    .local v0, "bluetoothItem":Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2679
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    .line 2684
    iput-boolean v8, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopupVisible:Z

    .line 2685
    return-void

    .end local v0    # "bluetoothItem":Landroid/view/MenuItem;
    :cond_2
    move v7, v9

    .line 2670
    goto :goto_0
.end method

.method private showGenericErrorDialog(IZ)V
    .locals 1
    .param p1, "resid"    # I
    .param p2, "isStartupError"    # Z

    .prologue
    .line 2060
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    .line 2061
    return-void
.end method

.method private showReCallDialogEx(ILjava/lang/String;I)V
    .locals 6
    .param p1, "resid"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "slot"    # I

    .prologue
    .line 2260
    const-string v4, "showReCallDialogEx... "

    invoke-direct {p0, v4}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2263
    iget-object v4, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 2264
    iget-object v4, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2332
    :goto_0
    return-void

    .line 2268
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2272
    .local v3, "msg":Ljava/lang/CharSequence;
    new-instance v1, Lcom/mediatek/phone/vt/VTInCallScreen$13;

    invoke-direct {v1, p0, p2, p3}, Lcom/mediatek/phone/vt/VTInCallScreen$13;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;I)V

    .line 2289
    .local v1, "clickListener1":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/mediatek/phone/vt/VTInCallScreen$14;

    invoke-direct {v2, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$14;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 2312
    .local v2, "clickListener2":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreen$15;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$15;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 2325
    .local v0, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0801cc

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0801c8

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    .line 2328
    iget-object v4, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 2329
    iget-object v4, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2331
    iget-object v4, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showStartVTRecorderDialog()V
    .locals 5

    .prologue
    .line 2928
    const-string v2, "showStartVTRecorderDialog() ..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2930
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2931
    .local v0, "myBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0801cc

    new-instance v3, Lcom/mediatek/phone/vt/VTInCallScreen$16;

    invoke-direct {v3, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$16;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2940
    const v2, 0x7f08006e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2942
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 2943
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    .line 2948
    :goto_0
    const-string v2, "VT_VIDEO_RECORDING"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "VT_VIDEO_RECORDING"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2950
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08006f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2953
    :cond_0
    const-string v2, "VT_VOICE_RECORDING"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2954
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2957
    :cond_1
    const-string v2, "VT_VIDEO_RECORDING"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2958
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080071

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2962
    :cond_2
    new-instance v1, Lcom/mediatek/phone/vt/VTInCallScreen$17;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$17;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 3000
    .local v1, "myClickListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3004
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    .line 3005
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 3006
    return-void

    .line 2945
    .end local v1    # "myClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_3
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 3184
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3185
    return-void
.end method

.method private showVTLocalBrightness()V
    .locals 4

    .prologue
    const v3, 0x7f02013b

    const v1, 0x7f02013a

    const/4 v2, 0x0

    .line 891
    const-string v0, "showVTLocalBrightness()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 894
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoReady:Z

    if-nez v0, :cond_0

    .line 918
    :goto_0
    return-void

    .line 898
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 900
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 901
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 902
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 903
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 904
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 914
    :goto_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 915
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 916
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 906
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 907
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 908
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 909
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 910
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 911
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private showVTLocalContrast()V
    .locals 4

    .prologue
    const v3, 0x7f02013d

    const v1, 0x7f02013c

    const/4 v2, 0x0

    .line 922
    const-string v0, "showVTLocalContrast()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 925
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoReady:Z

    if-nez v0, :cond_0

    .line 949
    :goto_0
    return-void

    .line 929
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 930
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 931
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 932
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 933
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 934
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 935
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 945
    :goto_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 946
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 947
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 937
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 938
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 939
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 940
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 941
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 942
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private showVTLocalZoom()V
    .locals 4

    .prologue
    const v3, 0x7f020146

    const v1, 0x7f020145

    const/4 v2, 0x0

    .line 860
    const-string v0, "showVTLocalZoom()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 863
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoReady:Z

    if-nez v0, :cond_0

    .line 887
    :goto_0
    return-void

    .line 867
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 868
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 869
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 870
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 871
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 872
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 873
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 883
    :goto_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 884
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 885
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 875
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 876
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 877
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 878
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 879
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 880
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private startRecord(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/4 v6, 0x1

    .line 2902
    const-string v2, "startVTRecorder() ..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2904
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getDiskAvailableSize()J

    move-result-wide v2

    const-wide/32 v4, 0x200000

    sub-long v0, v2, v4

    .line 2905
    .local v0, "sdMaxSize":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 2906
    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    .line 2907
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/recording/PhoneRecorder;->getInstance(Landroid/content/Context;)Lcom/mediatek/phone/recording/PhoneRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/recording/PhoneRecorder;->ismFlagRecord()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2909
    const-string v2, "startRecord"

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2912
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->startVoiceRecord(I)V

    .line 2924
    :cond_0
    :goto_0
    return-void

    .line 2914
    :cond_1
    if-lez p1, :cond_0

    .line 2915
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1, v6}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->startVideoRecord(IJI)V

    .line 2917
    invoke-virtual {p0, v6}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVideoCallRecordState(I)V

    goto :goto_0

    .line 2919
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    .line 2920
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 2922
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopVideoRecord()V
    .locals 1

    .prologue
    .line 2875
    const-string v0, "stopVideoRecorder() ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2877
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->stopVideoRecord()V

    .line 2878
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVideoCallRecordState(I)V

    .line 2879
    return-void
.end method

.method private updateAudioButton(Lcom/android/phone/InCallControlState;)V
    .locals 12
    .param p1, "inCallControlState"    # Lcom/android/phone/InCallControlState;

    .prologue
    const/4 v7, 0x1

    const/16 v9, 0xff

    const/4 v8, 0x0

    .line 2774
    const-string v10, "updateAudioButton()..."

    invoke-direct {p0, v10}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2783
    const/4 v6, 0x0

    .line 2786
    .local v6, "showToggleStateIndication":Z
    const/4 v3, 0x0

    .line 2789
    .local v3, "showMoreIndicator":Z
    const/4 v5, 0x0

    .line 2790
    .local v5, "showSpeakerOnIcon":Z
    const/4 v4, 0x0

    .line 2791
    .local v4, "showSpeakerOffIcon":Z
    const/4 v2, 0x0

    .line 2792
    .local v2, "showHandsetIcon":Z
    const/4 v1, 0x0

    .line 2794
    .local v1, "showBluetoothIcon":Z
    iget-boolean v10, p1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v10, :cond_2

    .line 2796
    const-string v10, "- updateAudioButton: \'popup menu action button\' mode..."

    invoke-direct {p0, v10}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2799
    iget-object v10, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v10, v7}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 2804
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2807
    const/4 v3, 0x1

    .line 2808
    iget-boolean v7, p1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v7, :cond_0

    .line 2809
    const/4 v1, 0x1

    .line 2847
    :goto_0
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 2849
    .local v0, "layers":Landroid/graphics/drawable/LayerDrawable;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- \'layers\' drawable: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2857
    const v7, 0x7f0b0155

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v3, :cond_5

    move v7, v9

    :goto_1
    invoke-virtual {v10, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2860
    const v7, 0x7f0b014f

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v1, :cond_6

    move v7, v9

    :goto_2
    invoke-virtual {v10, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2863
    const v7, 0x7f0b0150

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v2, :cond_7

    move v7, v9

    :goto_3
    invoke-virtual {v10, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2866
    const v7, 0x7f0b0151

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v5, :cond_8

    move v7, v9

    :goto_4
    invoke-virtual {v10, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2869
    const v7, 0x7f0b0156

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v4, :cond_9

    :goto_5
    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2871
    return-void

    .line 2810
    .end local v0    # "layers":Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    iget-boolean v7, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v7, :cond_1

    .line 2811
    const/4 v5, 0x1

    goto :goto_0

    .line 2813
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2815
    :cond_2
    iget-boolean v10, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v10, :cond_4

    .line 2817
    const-string v10, "- updateAudioButton: \'speaker toggle\' mode..."

    invoke-direct {p0, v10}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2820
    iget-object v10, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v10, v7}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 2824
    iget-object v10, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    iget-boolean v11, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2827
    const/4 v6, 0x1

    .line 2828
    iget-boolean v5, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 2829
    iget-boolean v10, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-nez v10, :cond_3

    move v4, v7

    :goto_6
    goto/16 :goto_0

    :cond_3
    move v4, v8

    goto :goto_6

    .line 2832
    :cond_4
    const-string v7, "- updateAudioButton: disabled..."

    invoke-direct {p0, v7}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2837
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 2838
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2841
    const/4 v6, 0x1

    .line 2842
    const/4 v4, 0x1

    goto/16 :goto_0

    .restart local v0    # "layers":Landroid/graphics/drawable/LayerDrawable;
    :cond_5
    move v7, v8

    .line 2857
    goto :goto_1

    :cond_6
    move v7, v8

    .line 2860
    goto :goto_2

    :cond_7
    move v7, v8

    .line 2863
    goto :goto_3

    :cond_8
    move v7, v8

    .line 2866
    goto :goto_4

    :cond_9
    move v9, v8

    .line 2869
    goto :goto_5
.end method

.method private updateLocalZoomOrBrightness()V
    .locals 2

    .prologue
    .line 965
    const-string v0, "updateLocalZoomOrBrightness()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 968
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v0, :cond_1

    .line 969
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 970
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v0, :cond_2

    .line 972
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 973
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 974
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 976
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateVTInCallButtons()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 547
    const-string v5, "updateVTInCallButtons()..."

    invoke-direct {p0, v5}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 550
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v5

    iget-boolean v5, v5, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInEndingCall:Z

    if-nez v5, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTIdle()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 552
    :cond_0
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 553
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 554
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 555
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 564
    :goto_0
    const-string v5, "updateVTInCallButtons() : update mVTMute \'s src !"

    invoke-direct {p0, v5}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 566
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 568
    const-string v5, "updateVTInCallButtons() : update mVTSwapVideo \'s src !"

    invoke-direct {p0, v5}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 570
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v6

    iget-boolean v6, v6, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-nez v6, :cond_3

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 572
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v1

    .line 575
    .local v1, "inCallControlState":Lcom/android/phone/InCallControlState;
    const-string v3, "updateVTInCallButtons() : update mVTDialpad \'s src !"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 577
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    iget-boolean v4, v1, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 578
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    iget-boolean v4, v1, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 581
    const-string v3, "updateVTInCallButtons() : update mVTAudio \'s src !"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 583
    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateAudioButton(Lcom/android/phone/InCallControlState;)V

    .line 585
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 586
    .local v2, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 587
    .local v0, "fgCallState":Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_4

    .line 592
    :cond_1
    const-string v3, "updateVTInCallButtons() :phone state is OFFHOOK orcall state is ALERTING or ACTIVE,not dismiss !"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 602
    :goto_2
    return-void

    .line 557
    .end local v0    # "fgCallState":Lcom/android/internal/telephony/Call$State;
    .end local v1    # "inCallControlState":Lcom/android/phone/InCallControlState;
    .end local v2    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_2
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 558
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTCallActive()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 559
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v5, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 560
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v6

    iget-boolean v6, v6, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v3, v4

    .line 570
    goto :goto_1

    .line 600
    .restart local v0    # "fgCallState":Lcom/android/internal/telephony/Call$State;
    .restart local v1    # "inCallControlState":Lcom/android/phone/InCallControlState;
    .restart local v2    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissAudioModePopup()V

    goto :goto_2
.end method

.method private updateVTLocalPeerDisplay()V
    .locals 3

    .prologue
    .line 3176
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_0

    .line 3177
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/vt/VTManager;->setDisplay(Landroid/view/SurfaceHolder;Landroid/view/SurfaceHolder;)V

    .line 3181
    :goto_0
    return-void

    .line 3179
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/vt/VTManager;->setDisplay(Landroid/view/SurfaceHolder;Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

.method private updateVideoBkgDrawable(I)V
    .locals 3
    .param p1, "slot"    # I

    .prologue
    const/high16 v1, -0x1000000

    .line 2452
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mToReplacePeer:Z

    if-eqz v0, :cond_2

    .line 2453
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-virtual {v0, p1}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatescreen(): replace the peer video, slot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2457
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mPeerBigger:Z

    if-eqz v0, :cond_0

    .line 2458
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-virtual {v2, p1}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2474
    :goto_0
    return-void

    .line 2460
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-virtual {v2, p1}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2464
    :cond_1
    const-string v0, "mBkgBitmapHandler is null or mBkgBitmapHandler.getBitmap() is null"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2468
    :cond_2
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mPeerBigger:Z

    if-eqz v0, :cond_3

    .line 2469
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    goto :goto_0

    .line 2471
    :cond_3
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismissVTDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1747
    const-string v0, "dismissVTDialogs() ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1749
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1750
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1751
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    .line 1753
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1754
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1755
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    .line 1757
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1758
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1759
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    .line 1761
    :cond_2
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1762
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1763
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    .line 1765
    :cond_3
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 1766
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1767
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    .line 1769
    :cond_4
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 1770
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1771
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1773
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 1775
    :cond_5
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    .line 1777
    :cond_6
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 1778
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1779
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    .line 1781
    :cond_7
    return-void
.end method

.method public getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;
    .locals 2

    .prologue
    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVTScreenMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/Constants$VTScreenMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 855
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/Constants$VTScreenMode;

    return-object v0
.end method

.method public handleOnScreenMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 2502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- handleOnScreenMenuItemClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  title: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2507
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v1, :cond_0

    .line 2509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnScreenMenuItemClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2549
    :goto_0
    return v0

    .line 2515
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2549
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2517
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTSwitchCameraClick()V

    goto :goto_0

    .line 2520
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTTakePeerPhotoClick()V

    goto :goto_0

    .line 2523
    :pswitch_3
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTHideMeClick()V

    goto :goto_0

    .line 2526
    :pswitch_4
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTSwapVideos()V

    goto :goto_0

    .line 2529
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVoiceVideoRecordClick(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 2532
    :pswitch_6
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTInCallVideoSetting()V

    goto :goto_0

    .line 2535
    :pswitch_7
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 2541
    :pswitch_8
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 2544
    :pswitch_9
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 2515
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b015a
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public initCommonVTState()V
    .locals 2

    .prologue
    .line 2600
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    if-eqz v0, :cond_0

    .line 2601
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v1

    iget v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSlotId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->updateBitmapBySetting(I)V

    .line 2604
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-nez v0, :cond_1

    .line 2605
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSlotId:I

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVideoBkgDrawable(I)V

    .line 2608
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2610
    const-string v0, "- Now DM locked, VTManager.getInstance().lockPeerVideo() start"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2612
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->lockPeerVideo()V

    .line 2614
    const-string v0, "- Now DM locked, VTManager.getInstance().lockPeerVideo() end"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2617
    :cond_2
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_3

    .line 2618
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 2620
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissAudioModePopup()V

    .line 2621
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTLocalPeerDisplay()V

    .line 2622
    return-void
.end method

.method public initDialingSuccessVTState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2568
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/VTInCallScreenExtension;->initDialingSuccessVTState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2582
    :cond_0
    :goto_0
    return-void

    .line 2572
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    if-eqz v0, :cond_2

    .line 2573
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v1

    iget v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSlotId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->forceUpdateBitmapBySetting(I)V

    .line 2575
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2577
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    invoke-static {v0, v2, v2, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZZ)V

    .line 2579
    :cond_3
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMO:Z

    if-nez v0, :cond_0

    .line 2580
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTHideMeClick2()V

    goto :goto_0
.end method

.method public initDialingVTState()V
    .locals 2

    .prologue
    .line 2586
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->registerForVTPhoneStates()V

    .line 2587
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTCallBannerController;->clearCallBannerInfo()V

    .line 2588
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    .line 2589
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2591
    const-string v0, "initDialingVTState(): closeDialer"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2593
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 2596
    :cond_0
    return-void
.end method

.method public initVTInCallScreen()V
    .locals 8

    .prologue
    const v7, 0x7f0b0145

    const/16 v6, 0x8

    const/4 v5, 0x1

    const v4, 0x7f0b014a

    const/4 v3, 0x0

    .line 609
    const-string v0, "initVTInCallCanvas()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPowerManager:Landroid/os/PowerManager;

    .line 613
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPowerManager:Landroid/os/PowerManager;

    const v1, 0x2000000a

    const-string v2, "VTWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 616
    const v0, 0x7f0b013b

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/phone/vt/VTCallBanner;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    .line 617
    new-instance v0, Lcom/mediatek/phone/vt/VTCallBannerController;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/phone/vt/VTCallBannerController;-><init>(Lcom/mediatek/phone/vt/VTCallBanner;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    .line 619
    const v0, 0x7f0b013e

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    .line 620
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 623
    const v0, 0x7f0b0140

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    .line 624
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 625
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 628
    const v0, 0x7f0b0141

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    .line 629
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 630
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 633
    const v0, 0x7f0b014b

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    .line 634
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 635
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 638
    const v0, 0x7f0b014c

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    .line 639
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 640
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 643
    const v0, 0x7f0b013f

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    .line 644
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 645
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 647
    const v0, 0x7f0b0143

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    .line 648
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 649
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 651
    invoke-virtual {p0, v7}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    .line 652
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    .line 653
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setFocusableInTouchMode(Z)V

    .line 655
    const v0, 0x7f0b0144

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    .line 656
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    .line 657
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setFocusableInTouchMode(Z)V

    .line 659
    const v0, 0x7f0b0146

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    .line 660
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    .line 661
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setFocusableInTouchMode(Z)V

    .line 663
    const v0, 0x7f0b0147

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    .line 664
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    .line 665
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setFocusableInTouchMode(Z)V

    .line 667
    const v0, 0x7f0b0148

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    .line 668
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 669
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusableInTouchMode(Z)V

    .line 671
    invoke-virtual {p0, v4}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    .line 672
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 673
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusableInTouchMode(Z)V

    .line 675
    const v0, 0x7f0b0149

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUpWrapper:Landroid/widget/LinearLayout;

    .line 677
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 692
    :goto_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    const v0, 0x7f0b0142

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    .line 697
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 698
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 699
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    const v1, 0x7f020111

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 700
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    const v1, 0x7f0b0144

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusLeftId(I)V

    .line 705
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v7}, Landroid/widget/CompoundButton;->setNextFocusRightId(I)V

    .line 706
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    const v1, 0x7f0b0144

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusUpId(I)V

    .line 707
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    const v1, 0x7f0b0146

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusDownId(I)V

    .line 709
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    const v1, 0x7f0b0144

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusLeftId(I)V

    .line 710
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v7}, Landroid/widget/CompoundButton;->setNextFocusRightId(I)V

    .line 711
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v7}, Landroid/widget/CompoundButton;->setNextFocusUpId(I)V

    .line 712
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    const v1, 0x7f0b0147

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusDownId(I)V

    .line 718
    :goto_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    const v1, 0x7f0b0146

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusLeftId(I)V

    .line 719
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 720
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    const v1, 0x7f0b0147

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusRightId(I)V

    .line 724
    :goto_2
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    const v1, 0x7f0b0144

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusUpId(I)V

    .line 725
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setNextFocusDownId(I)V

    .line 727
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    const v1, 0x7f0b0146

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusLeftId(I)V

    .line 728
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    const v1, 0x7f0b0147

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusRightId(I)V

    .line 729
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v7}, Landroid/widget/CompoundButton;->setNextFocusUpId(I)V

    .line 730
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setNextFocusDownId(I)V

    .line 732
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    const v1, 0x7f0b0146

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setNextFocusLeftId(I)V

    .line 733
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    const v1, 0x7f0b0148

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setNextFocusRightId(I)V

    .line 734
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    .line 735
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    .line 737
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setNextFocusLeftId(I)V

    .line 738
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setNextFocusRightId(I)V

    .line 739
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    const v1, 0x7f0b0146

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    .line 740
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    .line 743
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    .line 744
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    .line 746
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 747
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 749
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 750
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 752
    new-instance v0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-direct {v0}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    .line 754
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->getVTInCallScreenExtension()Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    .line 755
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p0, p0, v1}, Lcom/mediatek/phone/ext/VTInCallScreenExtension;->initVTInCallScreen(Landroid/view/ViewGroup;Landroid/view/View$OnTouchListener;Landroid/app/Activity;)Z

    .line 756
    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    const v1, 0x7f0b0148

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusDownId(I)V

    goto/16 :goto_1

    .line 722
    :cond_2
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    const v1, 0x7f0b0148

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusRightId(I)V

    goto/16 :goto_2
.end method

.method public internalAnswerVTCallPre()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 983
    const-string v2, "internalAnswerVTCallPre()..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 986
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->reset()V

    .line 988
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 989
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->closeVTManager()V

    .line 991
    const-string v2, "internalAnswerVTCallPre: set VTInCallScreenFlags.getInstance().mVTShouldCloseVTManager = false"

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 994
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v3, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTShouldCloseVTManager:Z

    .line 995
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->resetPartial()V

    .line 998
    :cond_0
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    invoke-virtual {v2}, Lcom/mediatek/phone/ext/VTInCallScreenExtension;->internalAnswerVTCallPre()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1101
    :goto_0
    return-void

    .line 1002
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1010
    .local v0, "ringingCall":Lcom/android/internal/telephony/Call;
    const-string v2, "VTIncallscreen, before incomingVTCall"

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1012
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/mediatek/vt/VTManager;->incomingVTCall(I)V

    .line 1014
    const-string v2, "VTIncallscreen, after incomingVTCall"

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1017
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1019
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v2, v6, v6, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZZ)V

    .line 1022
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v6, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTIsMT:Z

    .line 1024
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 1025
    .local v1, "simInfo":Landroid/provider/Telephony$SIMInfo;
    if-eqz v1, :cond_8

    .line 1026
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iput v3, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSlotId:I

    .line 1033
    iget v2, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallUtils;->checkVTFile(I)V

    .line 1034
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v2

    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v2, v3}, Lcom/mediatek/settings/VTSettingUtils;->updateVTSettingState(I)V

    .line 1035
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/settings/VTSettingUtils;->mPeerBigger:Z

    iput-boolean v3, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    .line 1037
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    if-eqz v2, :cond_3

    .line 1038
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v2, v3}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->forceUpdateBitmapBySetting(I)V

    .line 1039
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v2, v3}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-nez v2, :cond_3

    .line 1041
    iget v2, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVideoBkgDrawable(I)V

    .line 1044
    :cond_3
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    invoke-virtual {v2}, Lcom/mediatek/phone/vt/VTCallBannerController;->clearCallBannerInfo()V

    .line 1046
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTLocalPeerDisplay()V

    .line 1048
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTInControlRes()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1049
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.phone.extra.VT_CALL_START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 1050
    invoke-direct {p0, v6}, Lcom/mediatek/phone/vt/VTInCallScreen;->setVTInControlRes(Z)V

    .line 1053
    :cond_4
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v2, :cond_5

    .line 1054
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1056
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissAudioModePopup()V

    .line 1058
    sget-object v2, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_WAITING:Lcom/android/phone/Constants$VTScreenMode;

    invoke-virtual {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->setVTScreenMode(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 1060
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 1062
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->registerForVTPhoneStates()V

    .line 1065
    const-string v2, "- set VTManager open ! "

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1068
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget v5, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/mediatek/vt/VTManager;->setVTOpen(Landroid/content/Context;Ljava/lang/Object;I)V

    .line 1073
    const-string v2, "- finish set VTManager open ! "

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1076
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1077
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTHideMeClick2()V

    .line 1079
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1081
    const-string v2, "- Now DM locked, VTManager.getInstance().lockPeerVideo() start"

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1083
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->lockPeerVideo()V

    .line 1085
    const-string v2, "- Now DM locked, VTManager.getInstance().lockPeerVideo() end"

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1089
    :cond_7
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-eqz v2, :cond_9

    .line 1092
    const-string v2, "- set VTManager ready ! "

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1094
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->setVTReady()V

    .line 1096
    const-string v2, "- finish set VTManager ready ! "

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1028
    :cond_8
    const-string v2, "internalAnswerVTCallPre(), accept a incoming call, but can not get ring call sim info, sim info is null,  need to check !!!!!"

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1099
    :cond_9
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v6, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSettingReady:Z

    goto/16 :goto_0
.end method

.method public notifyLocaleChange()V
    .locals 2

    .prologue
    .line 3189
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->setNeedClearUserData(Z)V

    .line 3190
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1894
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1896
    .local v0, "id":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1899
    packed-switch v0, :pswitch_data_0

    .line 2053
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click from ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (View = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2057
    :cond_0
    :goto_0
    return-void

    .line 1903
    :pswitch_1
    const-string v2, "onClick: VTHighVideo..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1905
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-nez v2, :cond_0

    .line 1906
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 1907
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 1908
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 1909
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 1915
    :pswitch_2
    const-string v2, "onClick: VTLowVideo..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1917
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v2, :cond_0

    .line 1918
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 1919
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 1920
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 1921
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 1927
    :pswitch_3
    const-string v2, "onClick: VTMute"

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1929
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    goto :goto_0

    .line 1934
    :pswitch_4
    const-string v2, "onClick: VTSpeaker..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1936
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->handleAudioButtonClick()V

    goto :goto_0

    .line 1941
    :pswitch_5
    const-string v2, "onClick: VTDialpad..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1943
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->onOpenCloseDialpad()V

    goto :goto_0

    .line 1948
    :pswitch_6
    const-string v2, "onClick: VTSwapVideo..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1950
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTSwapVideos()V

    goto :goto_0

    .line 1955
    :pswitch_7
    const-string v2, "onClick: VTHangUp..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1957
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInEndingCall:Z

    .line 1958
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 1959
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto/16 :goto_0

    .line 1964
    :pswitch_8
    const-string v2, "onClick: VTLowUp..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1966
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v2, :cond_1

    .line 1967
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incZoom()Z

    .line 1968
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1969
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1970
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v2, :cond_2

    .line 1971
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incBrightness()Z

    .line 1972
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1973
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1974
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v2, :cond_0

    .line 1975
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incContrast()Z

    .line 1976
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1977
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1983
    :pswitch_9
    const-string v2, "onClick: VTHighUp..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1985
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v2, :cond_3

    .line 1986
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incZoom()Z

    .line 1987
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1988
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1989
    :cond_3
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v2, :cond_4

    .line 1990
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incBrightness()Z

    .line 1991
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1992
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1993
    :cond_4
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v2, :cond_0

    .line 1994
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incContrast()Z

    .line 1995
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1996
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2002
    :pswitch_a
    const-string v2, "onClick: VTLowDown..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2004
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v2, :cond_5

    .line 2005
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decZoom()Z

    .line 2006
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2007
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2008
    :cond_5
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v2, :cond_6

    .line 2009
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decBrightness()Z

    .line 2010
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2011
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2012
    :cond_6
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v2, :cond_0

    .line 2013
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decContrast()Z

    .line 2014
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2015
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2021
    :pswitch_b
    const-string v2, "onClick: VTHighDown..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2023
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v2, :cond_7

    .line 2024
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decZoom()Z

    .line 2025
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2026
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2027
    :cond_7
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v2, :cond_8

    .line 2028
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decBrightness()Z

    .line 2029
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2030
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2031
    :cond_8
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v2, :cond_0

    .line 2032
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decContrast()Z

    .line 2033
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2034
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2040
    :pswitch_c
    const-string v2, "onClick: VTOverflowMenu..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2042
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v2, :cond_9

    .line 2043
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->dismiss()V

    .line 2045
    :cond_9
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v1

    .line 2046
    .local v1, "popup":Landroid/widget/PopupMenu;
    if-eqz v1, :cond_0

    .line 2047
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 1899
    :pswitch_data_0
    .packed-switch 0x7f0b013f
        :pswitch_1
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->unregisterForVTPhoneStates()V

    .line 227
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public onDisconnectVT(Lcom/android/internal/telephony/Connection;IZ)Z
    .locals 10
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;
    .param p2, "slotId"    # I
    .param p3, "isForeground"    # Z

    .prologue
    const v9, 0x7f08001b

    const/4 v8, -0x1

    const v7, 0x7f080057

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2069
    if-nez p1, :cond_1

    .line 2205
    :cond_0
    :goto_0
    return v3

    .line 2072
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 2074
    .local v0, "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDisconnectVT(), cause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isForeground = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " slotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2077
    if-eqz p3, :cond_12

    .line 2079
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v5, :cond_2

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER_FORMAT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v5, :cond_2

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_3

    .line 2082
    :cond_2
    const v5, 0x7f0801c5

    invoke-direct {p0, v5, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2083
    goto :goto_0

    .line 2084
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CM_MM_RR_CONNECTION_RELEASE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_4

    .line 2085
    const v5, 0x7f080056

    invoke-direct {p0, v5, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2086
    goto :goto_0

    .line 2090
    :cond_4
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ROUTE_TO_DESTINATION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_5

    .line 2091
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2092
    goto :goto_0

    .line 2093
    :cond_5
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_6

    .line 2094
    const v5, 0x7f080058

    invoke-direct {p0, v5, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2095
    goto :goto_0

    .line 2096
    :cond_6
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_USER_RESPONDING:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_7

    .line 2097
    const v5, 0x7f080059

    invoke-direct {p0, v5, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2098
    goto :goto_0

    .line 2099
    :cond_7
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->USER_ALERTING_NO_ANSWER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_8

    .line 2100
    const v5, 0x7f080059

    invoke-direct {p0, v5, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2101
    goto/16 :goto_0

    .line 2102
    :cond_8
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_9

    .line 2103
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2104
    goto/16 :goto_0

    .line 2105
    :cond_9
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->FACILITY_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_a

    .line 2106
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2107
    goto/16 :goto_0

    .line 2110
    :cond_a
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_b

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v5

    if-nez v5, :cond_b

    .line 2112
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2113
    goto/16 :goto_0

    .line 2114
    :cond_b
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_c

    .line 2115
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2116
    goto/16 :goto_0

    .line 2117
    :cond_c
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->SWITCHING_CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_d

    .line 2118
    const v5, 0x7f08005a

    invoke-direct {p0, v5, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2119
    goto/16 :goto_0

    .line 2120
    :cond_d
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVICE_NOT_AVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_e

    .line 2121
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2122
    goto/16 :goto_0

    .line 2123
    :cond_e
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_IMPLEMENT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_f

    .line 2124
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2125
    goto/16 :goto_0

    .line 2126
    :cond_f
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->FACILITY_NOT_IMPLEMENT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_10

    .line 2127
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2128
    goto/16 :goto_0

    .line 2129
    :cond_10
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->RESTRICTED_BEARER_AVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_11

    .line 2130
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2131
    goto/16 :goto_0

    .line 2132
    :cond_11
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->OPTION_NOT_AVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_12

    .line 2133
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2134
    goto/16 :goto_0

    .line 2138
    :cond_12
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v5

    iget-boolean v5, v5, Lcom/mediatek/settings/VTSettingUtils;->mAutoDropBack:Z

    if-nez v5, :cond_13

    if-eqz p3, :cond_0

    :cond_13
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2139
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 2141
    .local v2, "number":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMPATIBLE_DESTINATION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_14

    .line 2143
    const-string v3, "VT call dropback INCOMPATIBLE_DESTINATION"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2145
    const v3, 0x7f080019

    invoke-virtual {p0, v3, v2, p2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 2146
    goto/16 :goto_0

    .line 2147
    :cond_14
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->RESOURCE_UNAVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_15

    .line 2149
    const-string v3, "VT call dropback RESOURCE_UNAVAILABLE"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2151
    const v3, 0x7f08001a

    invoke-virtual {p0, v3, v2, p2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 2152
    goto/16 :goto_0

    .line 2153
    :cond_15
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_AUTHORIZED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_16

    .line 2155
    const-string v3, "VT call dropback BEARER_NOT_AUTHORIZED"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2157
    const v3, 0x7f08001d

    invoke-virtual {p0, v3, v2, p2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 2158
    goto/16 :goto_0

    .line 2159
    :cond_16
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_17

    .line 2161
    const-string v3, "VT call dropback BEARER_NOT_AVAIL"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2163
    invoke-virtual {p0, v9, v2, p2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 2164
    goto/16 :goto_0

    .line 2165
    :cond_17
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v5, :cond_18

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_1d

    .line 2168
    :cond_18
    const-string v5, "VT call dropback NORMAL or ERROR_UNSPECIFIED"

    invoke-direct {p0, v5}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2172
    if-nez p2, :cond_1a

    .line 2173
    const-string v5, "gsm.cs.network.type"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2187
    .local v1, "nCSNetType":I
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VT call dropback nCSNetType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2189
    if-eq v4, v1, :cond_19

    const/4 v5, 0x2

    if-ne v5, v1, :cond_1c

    .line 2190
    :cond_19
    const v3, 0x7f08001c

    invoke-virtual {p0, v3, v2, p2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 2191
    goto/16 :goto_0

    .line 2175
    .end local v1    # "nCSNetType":I
    :cond_1a
    if-ne v4, p2, :cond_1b

    .line 2176
    const-string v5, "gsm.cs.network.type.2"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "nCSNetType":I
    goto :goto_1

    .line 2179
    .end local v1    # "nCSNetType":I
    :cond_1b
    const/4 v1, 0x1

    .restart local v1    # "nCSNetType":I
    goto :goto_1

    .line 2193
    :cond_1c
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_0

    .line 2194
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2195
    goto/16 :goto_0

    .line 2197
    .end local v1    # "nCSNetType":I
    :cond_1d
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_CIRCUIT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_0

    .line 2199
    const-string v3, "VT call dropback NO_CIRCUIT_AVAIL"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2201
    invoke-virtual {p0, v9, v2, p2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 2202
    goto/16 :goto_0
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 2708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onDismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2710
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopupVisible:Z

    .line 2711
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3195
    const-string v0, "onKeyDown"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3197
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/phone/ext/VTInCallScreenExtension;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3198
    const/4 v0, 0x1

    .line 3200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MenuItem;

    .prologue
    .line 2496
    invoke-virtual {p0, p1}, Lcom/mediatek/phone/vt/VTInCallScreen;->handleOnScreenMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2554
    invoke-virtual {p0, p1}, Lcom/mediatek/phone/vt/VTInCallScreen;->handleOnScreenMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2559
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v0

    sget-object v1, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/Constants$VTScreenMode;

    if-ne v0, v1, :cond_0

    .line 2560
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    invoke-virtual {v0, p1}, Lcom/mediatek/phone/ext/VTInCallScreenExtension;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 2562
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceiveVTManagerStartCounter()V
    .locals 5

    .prologue
    .line 3042
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/ext/VTInCallScreenExtension;->onReceiveVTManagerStartCounter(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3070
    :cond_0
    :goto_0
    return-void

    .line 3045
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;

    iget-wide v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 3046
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3047
    .local v0, "call":Lcom/android/internal/telephony/Call;
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3048
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3055
    :cond_2
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->triggerTimerStartCount(Lcom/android/internal/telephony/Call;)V

    .line 3057
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3058
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3059
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    .line 3061
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;->mConnection:Lcom/android/internal/telephony/Connection;

    .line 3063
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 3064
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    if-eqz v1, :cond_0

    .line 3065
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateState(Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 2210
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 2212
    .local v0, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2215
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 2222
    :cond_0
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_1

    .line 2223
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->dismiss()V

    .line 2225
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissAudioModePopup()V

    .line 2226
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 760
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/phone/ext/VTInCallScreenExtension;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    :goto_0
    return v2

    .line 765
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 768
    :pswitch_0
    const-string v0, "MotionEvent.ACTION_DOWN"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 770
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 771
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 772
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 773
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 765
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 2724
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_0

    .line 2726
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 2728
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showAudioModePopup()V

    .line 2730
    :cond_0
    return-void
.end method

.method registerForVTPhoneStates()V
    .locals 0

    .prologue
    .line 2352
    return-void
.end method

.method public resetVTFlags()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1272
    const-string v0, "resetVTFlags()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1275
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->reset()V

    .line 1276
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissVTDialogs()V

    .line 1278
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 1285
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1286
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1290
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    if-eqz v0, :cond_2

    .line 1291
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->recycle()V

    .line 1293
    :cond_2
    return-void
.end method

.method setDialer(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .locals 0
    .param p1, "dialer"    # Lcom/android/phone/DTMFTwelveKeyDialer;

    .prologue
    .line 2339
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 2340
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .param p1, "inCallScreen"    # Lcom/android/phone/InCallScreen;

    .prologue
    .line 2335
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 2336
    return-void
.end method

.method public setVTScreenMode(Lcom/android/phone/Constants$VTScreenMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/android/phone/Constants$VTScreenMode;

    .prologue
    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVTScreenMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 826
    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    if-eq v0, p1, :cond_0

    .line 828
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->openVTInCallCanvas()V

    .line 830
    const-string v0, "setVTScreenMode : mVTWakeLock.acquire() "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 837
    :cond_0
    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    if-ne v0, p1, :cond_1

    .line 839
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->closeVTInCallCanvas()V

    .line 841
    const-string v0, "setVTScreenMode : mVTWakeLock.release() "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 843
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 844
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 847
    :cond_1
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/Constants$VTScreenMode;

    .line 848
    return-void
.end method

.method public setVTVisible(Z)V
    .locals 2
    .param p1, "bIsVisible"    # Z

    .prologue
    .line 1870
    if-eqz p1, :cond_1

    .line 1871
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-eqz v0, :cond_0

    .line 1874
    const-string v0, "VTManager.getInstance().setVTVisible(true) start ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1876
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1878
    const-string v0, "VTManager.getInstance().setVTVisible(true) end ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1890
    :cond_0
    :goto_0
    return-void

    .line 1883
    :cond_1
    const-string v0, "VTManager.getInstance().setVTVisible(false) start ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1885
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1887
    const-string v0, "VTManager.getInstance().setVTVisible(false) start ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setupMenuItems(Landroid/view/Menu;)V
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2399
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2449
    :goto_0
    return-void

    .line 2403
    :cond_0
    const v8, 0x7f0b0162

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2404
    .local v4, "switchCameraMenu":Landroid/view/MenuItem;
    const v8, 0x7f0b0163

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 2405
    .local v5, "takePeerPhotoMenu":Landroid/view/MenuItem;
    const v8, 0x7f0b0165

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2406
    .local v2, "hideLocalVideoMenu":Landroid/view/MenuItem;
    const v8, 0x7f0b0164

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2407
    .local v3, "swapVideosMenu":Landroid/view/MenuItem;
    const v8, 0x7f0b0166

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 2409
    .local v7, "voiceRecordMenu":Landroid/view/MenuItem;
    const v8, 0x7f0b0167

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2411
    .local v6, "videoSettingMenu":Landroid/view/MenuItem;
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2412
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/vt/VTManager;->getCameraSensorCount()I

    move-result v1

    .line 2414
    .local v1, "cameraSensorCount":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setupMenuItems() : VTManager.getInstance().getCameraSensorCount() == "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2417
    const/4 v8, 0x2

    if-ne v8, v1, :cond_2

    move v8, v9

    :goto_1
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2418
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v8

    iget-boolean v8, v8, Lcom/mediatek/settings/VTSettingUtils;->mEnableBackCamera:Z

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v8

    iget-boolean v8, v8, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-nez v8, :cond_3

    move v0, v9

    .line 2421
    .local v0, "bIsSwitchCameraEnable":Z
    :goto_2
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2423
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2424
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->isDialerOpened()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v8

    iget-boolean v8, v8, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoConnected:Z

    if-eqz v8, :cond_4

    move v8, v9

    :goto_3
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2427
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2428
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v8

    iget-boolean v8, v8, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-nez v8, :cond_5

    .line 2429
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f080047

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2434
    :goto_4
    iget-object v8, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v8

    if-nez v8, :cond_6

    move v8, v9

    :goto_5
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2435
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v8

    iget-boolean v8, v8, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2437
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2438
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2439
    const v8, 0x7f080076

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2440
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->okToRecordVoice()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2441
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2442
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->isVTRecording()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2443
    const v8, 0x7f080077

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2447
    :cond_1
    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2448
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v8

    iget-boolean v8, v8, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoConnected:Z

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .end local v0    # "bIsSwitchCameraEnable":Z
    :cond_2
    move v8, v10

    .line 2417
    goto/16 :goto_1

    :cond_3
    move v0, v10

    .line 2418
    goto/16 :goto_2

    .restart local v0    # "bIsSwitchCameraEnable":Z
    :cond_4
    move v8, v10

    .line 2424
    goto :goto_3

    .line 2431
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f080048

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_4

    :cond_6
    move v8, v10

    .line 2434
    goto :goto_5
.end method

.method public showReCallDialog(ILjava/lang/String;I)V
    .locals 3
    .param p1, "resid"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "slot"    # I

    .prologue
    .line 2246
    const-string v0, "showReCallDialog... "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2249
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mAutoDropBack:Z

    if-eqz v0, :cond_0

    .line 2250
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V

    .line 2251
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 2252
    invoke-direct {p0, p2, p3}, Lcom/mediatek/phone/vt/VTInCallScreen;->makeVoiceReCall(Ljava/lang/String;I)V

    .line 2256
    :goto_0
    return-void

    .line 2254
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showReCallDialogEx(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 2

    .prologue
    .line 2884
    const-string v0, "stopRecord"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2886
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2888
    const-string v0, "stopVoiceRecord"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2890
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->stopVoiceRecord()V

    .line 2898
    :cond_0
    :goto_0
    return-void

    .line 2891
    :cond_1
    const/4 v0, 0x1

    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getPhoneRecorderState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2894
    const-string v0, "stopVideoRecord"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2896
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->stopVideoRecord()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1302
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    .line 1304
    const-string v0, "surfaceChanged : HighVideo , set mVTSurfaceChangedH = true"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1306
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_1

    .line 1311
    const-string v0, "surfaceChanged : LowVideo , set mVTSurfaceChangedL = true"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1313
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    .line 1316
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-eqz v0, :cond_4

    .line 1318
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTLocalPeerDisplay()V

    .line 1321
    const-string v0, "surfaceChanged : VTManager.getInstance().setVTVisible(true) start ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1323
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1325
    const-string v0, "surfaceChanged : VTManager.getInstance().setVTVisible(true) end ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1327
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1328
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1331
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSettingReady:Z

    if-eqz v0, :cond_3

    .line 1333
    const-string v0, "- set VTManager ready ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1335
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->setVTReady()V

    .line 1337
    const-string v0, "- finish set VTManager ready ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1339
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSettingReady:Z

    .line 1341
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 1343
    :cond_4
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceCreated : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1350
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x0

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceDestroyed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1358
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    .line 1360
    const-string v0, "surfaceDestroyed : HighVideo, set mVTSurfaceChangedH = false"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1363
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    .line 1366
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_1

    .line 1368
    const-string v0, "surfaceDestroyed : LowVideo, set mVTSurfaceChangedL = false"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1371
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    .line 1374
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-nez v0, :cond_2

    .line 1377
    const-string v0, "surfaceDestroyed : VTManager.getInstance().setVTVisible(false) start ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1380
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1382
    const-string v0, "surfaceDestroyed : VTManager.getInstance().setVTVisible(false) end ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1385
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1386
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1389
    :cond_2
    return-void
.end method

.method unregisterForVTPhoneStates()V
    .locals 0

    .prologue
    .line 2378
    return-void
.end method

.method public updateElapsedTime(J)V
    .locals 4
    .param p1, "elapsedTime"    # J

    .prologue
    .line 2382
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2383
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;->VT_TIMING_NONE:Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallUtils;->checkVTTimingMode(Ljava/lang/String;)Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 2387
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateElapsedTimeWidget(J)V

    .line 2391
    :goto_0
    return-void

    .line 2389
    :cond_0
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateElapsedTimeWidget(J)V

    goto :goto_0
.end method

.method public updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V
    .locals 4
    .param p1, "mode"    # Lcom/android/phone/Constants$VTScreenMode;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVTScreen : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 487
    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    if-ne p1, v0, :cond_0

    .line 543
    :goto_0
    return-void

    .line 491
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 493
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateState(Lcom/android/internal/telephony/Call;)V

    .line 500
    :goto_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateCallTime()V

    .line 502
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setClickable(Z)V

    .line 503
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVTScreen : VTInCallScreenFlags.getInstance().mVTHideMeNow - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVTScreen : VTSettingUtils.getInstance().mEnableBackCamera - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/settings/VTSettingUtils;->mEnableBackCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 512
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 513
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 514
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 515
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 516
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 517
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissVideoSettingDialogs()V

    .line 518
    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 519
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->closeOptionsMenu()V

    .line 523
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-eqz v0, :cond_2

    .line 524
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 525
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 526
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 527
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 530
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTInCallButtons()V

    .line 532
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 533
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 534
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 535
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 536
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 537
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 541
    :cond_3
    const-string v0, "updateVTScreen end"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 494
    :cond_4
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_5

    .line 495
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateState(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 497
    :cond_5
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateState(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1
.end method

.method public updateVideoCallRecordState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1856
    return-void
.end method
