.class public Lcom/mediatek/settings/Modem3GCapabilitySwitch;
.super Landroid/preference/PreferenceActivity;
.source "Modem3GCapabilitySwitch.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;,
        Lcom/mediatek/settings/Modem3GCapabilitySwitch$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final NETWORK_MODE_KEY:Ljava/lang/String; = "preferred_network_mode_key"

.field public static final SERVICE_LIST_KEY:Ljava/lang/String; = "preferred_3g_service_key"

.field private static final SIMID_3G_SERVICE_NOT_SET:I = -0x2

.field private static final SIMID_3G_SERVICE_OFF:I = -0x1

.field private static final SWITCH_3G_TIME_OUT_MSG:I = 0x3e8

.field private static final SWITCH_3G_TIME_OUT_VALUE:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "Settings/Modem3GCapabilitySwitch"

.field private static sInstanceFlag:I


# instance fields
.field private mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field mHandler:Lcom/mediatek/settings/Modem3GCapabilitySwitch$MyHandler;

.field private mInstanceIndex:I

.field private mNetworkMode:Landroid/preference/ListPreference;

.field private mPD:Landroid/app/ProgressDialog;

.field private mPDSwitching:Landroid/app/ProgressDialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

.field private mServiceList:Lcom/mediatek/settings/ServiceSelectList;

.field private mSlr:Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTimerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->sInstanceFlag:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    .line 44
    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    .line 48
    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 52
    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 53
    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    .line 56
    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mInstanceIndex:I

    .line 72
    new-instance v0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch$1;-><init>(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V

    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mTimerHandler:Landroid/os/Handler;

    .line 84
    sget v0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->sInstanceFlag:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->sInstanceFlag:I

    iput v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mInstanceIndex:I

    .line 85
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modem3GCapabilitySwitch(), instanceIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mInstanceIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->disSwitchProgressDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/Modem3GCapabilitySwitch;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mTimerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateNetworkMode()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->update3GService()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Lcom/mediatek/settings/ServiceSelectList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/settings/Modem3GCapabilitySwitch;J)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;
    .param p1, "x1"    # J

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateSummarys(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/Modem3GCapabilitySwitch;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Lcom/android/internal/telephony/gemini/GeminiPhone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateItemStatus()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/settings/Modem3GCapabilitySwitch;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->showInstanceIndex(Ljava/lang/String;)V

    return-void
.end method

.method private disSwitchProgressDialog()V
    .locals 3

    .prologue
    .line 333
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    const-string v1, "disSwitchProgressDialog()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    const-string v1, "disSwitchProgressDialog(), take effect"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    const-string v1, "Settings/Modem3GCapabilitySwitch"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pdSwitching != null?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleServiceSwitch(J)V
    .locals 5
    .param p1, "simId"    # J

    .prologue
    .line 344
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager;->is3GSwitchLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "Switch has been locked, return"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :goto_0
    return-void

    .line 348
    :cond_0
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleServiceSwitch("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), show switching dialog first"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->showSwitchProgress()V

    .line 350
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    .line 351
    const/4 v1, -0x1

    .line 352
    .local v1, "slotId":I
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    .line 353
    invoke-static {p0, p1, p2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 354
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_2

    const/4 v1, -0x1

    .line 356
    .end local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneInterfaceManager;->set3GCapabilitySIM(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 357
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "Receive ok for the switch, and starting the waiting..."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    .restart local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_2
    iget v1, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    goto :goto_1

    .line 359
    .end local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_3
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "Receive error for the switch & Dismiss switching didalog"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->disSwitchProgressDialog()V

    .line 361
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    goto :goto_0
.end method

.method private setStatusBarEnableStatus(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 589
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusBarEnableStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    .line 591
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_2

    .line 594
    if-eqz p1, :cond_1

    .line 595
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 604
    :goto_0
    return-void

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1210000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 602
    :cond_2
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    const-string v1, "Fail to get status bar instance"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showInstanceIndex(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 660
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mInstanceIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    return-void
.end method

.method private showProgressDialog()V
    .locals 2

    .prologue
    .line 537
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    .line 538
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    const v1, 0x7f080215

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 540
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 541
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 542
    return-void
.end method

.method private update3GService()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 175
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager;->is3GSwitchLocked()Z

    move-result v0

    .line 176
    .local v0, "enabled":Z
    if-eqz v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 182
    .local v1, "isAirMode":Z
    :goto_1
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    if-nez v1, :cond_3

    :goto_2
    invoke-virtual {v4, v2}, Lcom/mediatek/settings/ServiceSelectList;->setEnabled(Z)V

    .line 183
    if-eqz v1, :cond_0

    .line 184
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    invoke-virtual {v2}, Lcom/mediatek/settings/ServiceSelectList;->dismissDialogs()V

    goto :goto_0

    .end local v1    # "isAirMode":Z
    :cond_2
    move v1, v3

    .line 180
    goto :goto_1

    .restart local v1    # "isAirMode":Z
    :cond_3
    move v2, v3

    .line 182
    goto :goto_2
.end method

.method private updateItemStatus()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 545
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager;->is3GSwitchLocked()Z

    move-result v1

    .line 546
    .local v1, "enabled":Z
    const-string v3, "Settings/Modem3GCapabilitySwitch"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateItemStatus(), is3GSwitchLocked()?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    if-eqz v3, :cond_0

    .line 548
    iget-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    if-nez v1, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/mediatek/settings/ServiceSelectList;->setEnabled(Z)V

    .line 551
    :cond_0
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    .line 555
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v0

    .line 556
    .local v0, "cardSlot":I
    invoke-static {p0, v0}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 557
    .local v2, "info":Landroid/provider/Telephony$SIMInfo;
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/mediatek/settings/CallSettings;->isRadioOn(I)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_1
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 558
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 559
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 562
    .end local v0    # "cardSlot":I
    .end local v2    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_1
    return-void

    :cond_2
    move v3, v5

    .line 548
    goto :goto_0

    .restart local v0    # "cardSlot":I
    .restart local v2    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_3
    move v4, v5

    .line 557
    goto :goto_1
.end method

.method private updateNetworkMode()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 157
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    if-nez v2, :cond_0

    .line 172
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v1

    .line 161
    .local v1, "slot":I
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager;->is3GSwitchLocked()Z

    move-result v0

    .line 162
    .local v0, "enabled":Z
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkMode(), 3G capability slot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    if-nez v0, :cond_1

    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-static {v1}, Lcom/mediatek/settings/CallSettings;->isRadioOn(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 165
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Try to get preferred network mode for slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mHandler:Lcom/mediatek/settings/Modem3GCapabilitySwitch$MyHandler;

    invoke-virtual {v3, v5}, Lcom/mediatek/settings/Modem3GCapabilitySwitch$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPreferredNetworkTypeGemini(Landroid/os/Message;I)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 170
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updatePreferredNetworkModeSummary(I)V
    .locals 3
    .param p1, "networkMode"    # I

    .prologue
    .line 502
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "value":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 531
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v2, "Global"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 533
    :goto_0
    return-void

    .line 506
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 511
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 515
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 518
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v2, "GSM/WCDMA"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 521
    :pswitch_4
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v2, "CDMA / EvDo"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 524
    :pswitch_5
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v2, "CDMA only"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 527
    :pswitch_6
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v2, "EvDo only"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateSummarys(J)V
    .locals 6
    .param p1, "simId"    # J

    .prologue
    const/4 v5, 0x0

    .line 190
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    if-nez v2, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSummarys(), simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    .line 196
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    const v3, 0x7f0800c7

    invoke-virtual {v2, v3}, Lcom/mediatek/settings/ServiceSelectList;->setSummary(I)V

    .line 197
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 199
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 201
    :cond_2
    const-wide/16 v2, -0x2

    cmp-long v2, p1, v2

    if-nez v2, :cond_3

    .line 203
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/mediatek/settings/ServiceSelectList;->setSummary(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 205
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 207
    :cond_3
    invoke-static {p0, p1, p2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 208
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    .line 209
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    iget-object v3, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/settings/ServiceSelectList;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-static {v2}, Lcom/mediatek/settings/CallSettings;->isRadioOn(I)Z

    move-result v1

    .line 212
    .local v1, "isPowerOn":Z
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSummarys(), SIM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " power status is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 214
    if-nez v1, :cond_0

    .line 215
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public changeForNetworkMode(Ljava/lang/Object;)V
    .locals 8
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    .line 222
    iget-object v5, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 224
    check-cast p1, Ljava/lang/String;

    .end local p1    # "objValue":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 225
    .local v0, "buttonNetworkMode":I
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 228
    .local v2, "settingsNetworkMode":I
    if-eq v0, v2, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->showProgressDialog()V

    .line 231
    packed-switch v0, :pswitch_data_0

    .line 257
    const/4 v1, 0x3

    .line 261
    .local v1, "modemNetworkMode":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updatePreferredNetworkModeSummary(I)V

    .line 263
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 267
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v3

    .line 268
    .local v3, "slot":I
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 269
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v5, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mHandler:Lcom/mediatek/settings/Modem3GCapabilitySwitch$MyHandler;

    invoke-virtual {v5, v7}, Lcom/mediatek/settings/Modem3GCapabilitySwitch$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v1, v5, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    .line 276
    .end local v1    # "modemNetworkMode":I
    .end local v3    # "slot":I
    :cond_0
    :goto_1
    return-void

    .line 233
    :pswitch_0
    const/4 v1, 0x7

    .line 234
    .restart local v1    # "modemNetworkMode":I
    goto :goto_0

    .line 236
    .end local v1    # "modemNetworkMode":I
    :pswitch_1
    const/4 v1, 0x6

    .line 237
    .restart local v1    # "modemNetworkMode":I
    goto :goto_0

    .line 239
    .end local v1    # "modemNetworkMode":I
    :pswitch_2
    const/4 v1, 0x5

    .line 240
    .restart local v1    # "modemNetworkMode":I
    goto :goto_0

    .line 242
    .end local v1    # "modemNetworkMode":I
    :pswitch_3
    const/4 v1, 0x4

    .line 243
    .restart local v1    # "modemNetworkMode":I
    goto :goto_0

    .line 245
    .end local v1    # "modemNetworkMode":I
    :pswitch_4
    const/4 v1, 0x3

    .line 246
    .restart local v1    # "modemNetworkMode":I
    goto :goto_0

    .line 248
    .end local v1    # "modemNetworkMode":I
    :pswitch_5
    const/4 v1, 0x2

    .line 249
    .restart local v1    # "modemNetworkMode":I
    goto :goto_0

    .line 251
    .end local v1    # "modemNetworkMode":I
    :pswitch_6
    const/4 v1, 0x1

    .line 252
    .restart local v1    # "modemNetworkMode":I
    goto :goto_0

    .line 254
    .end local v1    # "modemNetworkMode":I
    :pswitch_7
    const/4 v1, 0x0

    .line 255
    .restart local v1    # "modemNetworkMode":I
    goto :goto_0

    .line 272
    .restart local v3    # "slot":I
    :cond_1
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mHandler:Lcom/mediatek/settings/Modem3GCapabilitySwitch$MyHandler;

    invoke-virtual {v5, v7}, Lcom/mediatek/settings/Modem3GCapabilitySwitch$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method clearAfterSwitch(Landroid/content/Intent;)V
    .locals 6
    .param p1, "it"    # Landroid/content/Intent;

    .prologue
    .line 311
    const-wide/16 v1, -0x2

    .line 312
    .local v1, "simId3G":J
    const-string v4, "Settings/Modem3GCapabilitySwitch"

    const-string v5, "clearAfterSwitch(), remove switching dialog"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->disSwitchProgressDialog()V

    .line 314
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    .line 317
    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SIM:Ljava/lang/String;

    const/4 v5, -0x2

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 318
    .local v3, "slot3G":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 319
    const-wide/16 v1, -0x1

    .line 327
    :cond_0
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateSummarys(J)V

    .line 328
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateNetworkMode()V

    .line 329
    return-void

    .line 321
    :cond_1
    invoke-static {p0, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 322
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    .line 323
    iget-wide v1, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const v2, 0x7f06001a

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->addPreferencesFromResource(I)V

    .line 92
    const-string v2, "preferred_3g_service_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/ServiceSelectList;

    iput-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    .line 93
    const-string v2, "preferred_network_mode_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    .line 94
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    invoke-virtual {v2, p0}, Lcom/mediatek/settings/ServiceSelectList;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    invoke-static {}, Lcom/mediatek/settings/NetworkEditor;->getBaseBand()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 101
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 102
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 105
    :cond_1
    new-instance v2, Lcom/mediatek/settings/Modem3GCapabilitySwitch$MyHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mediatek/settings/Modem3GCapabilitySwitch$MyHandler;-><init>(Lcom/mediatek/settings/Modem3GCapabilitySwitch;Lcom/mediatek/settings/Modem3GCapabilitySwitch$1;)V

    iput-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mHandler:Lcom/mediatek/settings/Modem3GCapabilitySwitch$MyHandler;

    .line 106
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    iput-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 108
    new-instance v2, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;-><init>(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V

    iput-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSlr:Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    .line 109
    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_LOCK_CHANGED:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v2, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSlr:Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/ext/ExtensionManager;->getSettingsExtension()Lcom/mediatek/phone/ext/SettingsExtension;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    .line 118
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    invoke-virtual {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/phone/ext/SettingsExtension;->removeNMOpFor3GSwitch(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    .line 119
    invoke-virtual {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 120
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 122
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 124
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 565
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 566
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mInstanceIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    .line 574
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->disSwitchProgressDialog()V

    .line 576
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSlr:Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    if-eqz v0, :cond_2

    .line 577
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSlr:Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 580
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    .line 581
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mTimerHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 582
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 146
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 153
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 148
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->finish()V

    .line 149
    const/4 v1, 0x1

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 279
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    if-ne p1, v2, :cond_1

    .line 280
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 283
    .local v0, "simId":J
    invoke-direct {p0, v0, v1}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->handleServiceSwitch(J)V

    .line 287
    .end local v0    # "simId":J
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 284
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    .line 285
    invoke-virtual {p0, p2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->changeForNetworkMode(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 127
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 128
    const-wide/16 v1, -0x2

    .line 129
    .local v1, "simId":J
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v3

    .line 130
    .local v3, "slot":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 131
    int-to-long v1, v3

    .line 137
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateSummarys(J)V

    .line 138
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateNetworkMode()V

    .line 139
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateItemStatus()V

    .line 140
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->update3GService()V

    .line 141
    return-void

    .line 133
    :cond_0
    invoke-static {p0, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 134
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_1

    iget-wide v1, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    :goto_1
    goto :goto_0

    :cond_1
    const-wide/16 v1, -0x2

    goto :goto_1
.end method

.method showSwitchProgress()V
    .locals 5

    .prologue
    .line 291
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 292
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "The progress dialog already exist, so exit!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_0
    return-void

    .line 296
    :cond_0
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    .line 297
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_1

    .line 298
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 300
    :cond_1
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "Create and show the progress dialog..."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 303
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 304
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 305
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 306
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 307
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method
