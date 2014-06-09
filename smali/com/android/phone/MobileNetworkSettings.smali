.class public Lcom/android/phone/MobileNetworkSettings;
.super Landroid/preference/PreferenceActivity;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MobileNetworkSettings$MyHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_2G_ONLY:Ljava/lang/String; = "button_prefer_2g_key"

.field private static final BUTTON_3G_SERVICE:Ljava/lang/String; = "button_3g_service_key"

.field private static final BUTTON_APN:Ljava/lang/String; = "button_apn_key"

.field private static final BUTTON_CARRIER_SEL:Ljava/lang/String; = "button_carrier_sel_key"

.field private static final BUTTON_CDMA_LTE_DATA_SERVICE_KEY:Ljava/lang/String; = "cdma_lte_data_service_key"

.field private static final BUTTON_CDMA_OPTIONS:Ljava/lang/String; = "cdma_options_key"

.field private static final BUTTON_DATA_ENABLED_KEY:Ljava/lang/String; = "button_data_enabled_key"

.field private static final BUTTON_DATA_USAGE_KEY:Ljava/lang/String; = "button_data_usage_key"

.field private static final BUTTON_GSM_UMTS_OPTIONS:Ljava/lang/String; = "gsm_umts_options_key"

.field private static final BUTTON_NETWORK_MODE_EX_KEY:Ljava/lang/String; = "button_network_mode_ex_key"

.field private static final BUTTON_NETWORK_MODE_KEY:Ljava/lang/String; = "gsm_umts_preferred_network_mode_key"

.field private static final BUTTON_PLMN_LIST:Ljava/lang/String; = "button_plmn_key"

.field private static final BUTTON_PREFERED_NETWORK_MODE:Ljava/lang/String; = "preferred_network_mode_key"

.field private static final BUTTON_ROAMING_KEY:Ljava/lang/String; = "button_roaming_key"

.field private static final DATA_DISABLE_ALERT_DIALOG:I = 0xc8

.field private static final DATA_ENABLE_ALERT_DIALOG:I = 0x64

.field public static final DATA_STATE_CHANGE_TIMEOUT:I = 0x7d1

.field private static final DBG:Z = true

.field private static final DIALOG_GPRS_SWITCH_CONFIRM:I = 0x1

.field private static final IFACE:Ljava/lang/String; = "rmnet0"

.field private static final KEY_DATA_CONN:Ljava/lang/String; = "data_connection_setting"

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkSettings"

.field private static final MODEM_MASK_EDGE:I = 0x2

.field private static final MODEM_MASK_GPRS:I = 0x1

.field private static final MODEM_MASK_HSDPA:I = 0x10

.field private static final MODEM_MASK_HSUPA:I = 0x20

.field private static final MODEM_MASK_TDSCDMA:I = 0x8

.field private static final MODEM_MASK_WCDMA:I = 0x4

.field private static final PIN1_REQUEST_CODE:I = 0x12e

.field private static final PREFERRED_NETWORK_MODE:I = 0x0

.field private static final PROGRESS_DIALOG:I = 0x190

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x11

.field private static final ROAMING_DIALOG:I = 0x12c

.field private static final SIM_CARD_1:I = 0x0

.field private static final SIM_CARD_2:I = 0x1

.field private static final SIM_CARD_SIGNAL:I = 0x2

.field private static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field private static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"

.field private static final UP_ACTIVITY_CLASS:Ljava/lang/String; = "com.android.settings.Settings$WirelessSettingsActivity"

.field private static final UP_ACTIVITY_PACKAGE:Ljava/lang/String; = "com.android.settings"


# instance fields
.field private mAirplaneModeEnabled:Z

.field private mApnPref:Landroid/preference/PreferenceScreen;

.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonDataRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonDataUsage:Landroid/preference/Preference;

.field private mButtonPreferredGSMOnly:Landroid/preference/CheckBoxPreference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field private mButtonPreferredNetworkModeEx:Landroid/preference/Preference;

.field private mCarrierSelPref:Landroid/preference/PreferenceScreen;

.field mCdmaOptions:Lcom/android/phone/CdmaOptions;

.field private mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mClickedPreference:Landroid/preference/Preference;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mDataConnPref:Lcom/mediatek/settings/DefaultSimPreference;

.field private mDataSwitchMsgIndex:I

.field private mDataUsageListener:Lcom/android/phone/DataUsageListener;

.field private mDualSimMode:I

.field private mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

.field mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

.field mH:Landroid/os/Handler;

.field private mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsChangeData:Z

.field private mLteDataServicePref:Landroid/preference/Preference;

.field private mOkClicked:Z

.field private mPLMNPreference:Landroid/preference/Preference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

.field private mPreference3GSwitch:Landroid/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectGprsIndex:J

.field private mSimId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 123
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/settings/DefaultSimPreference;

    .line 211
    iput v2, p0, Lcom/android/phone/MobileNetworkSettings;->mDataSwitchMsgIndex:I

    .line 212
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/phone/MobileNetworkSettings;->mSelectGprsIndex:J

    .line 215
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MobileNetworkSettings$1;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 230
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MobileNetworkSettings$2;-><init>(Lcom/android/phone/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    .line 239
    iput-boolean v3, p0, Lcom/android/phone/MobileNetworkSettings;->mAirplaneModeEnabled:Z

    .line 240
    iput v2, p0, Lcom/android/phone/MobileNetworkSettings;->mDualSimMode:I

    .line 242
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$3;

    invoke-direct {v0, p0}, Lcom/android/phone/MobileNetworkSettings$3;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 319
    iput-boolean v3, p0, Lcom/android/phone/MobileNetworkSettings;->mIsChangeData:Z

    .line 320
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$4;

    invoke-direct {v0, p0}, Lcom/android/phone/MobileNetworkSettings$4;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mH:Landroid/os/Handler;

    .line 1195
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setScreenEnabled()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/MobileNetworkSettings;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mConnService:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/MobileNetworkSettings;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/android/phone/MobileNetworkSettings;->mSelectGprsIndex:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/phone/MobileNetworkSettings;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;
    .param p1, "x1"    # J

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/android/phone/MobileNetworkSettings;->mSelectGprsIndex:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/phone/MobileNetworkSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 123
    iget v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataSwitchMsgIndex:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/phone/MobileNetworkSettings;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;
    .param p1, "x1"    # J

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MobileNetworkSettings;->enableDataRoaming(J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/MobileNetworkSettings;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;
    .param p1, "x1"    # J

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MobileNetworkSettings;->switchGprsDefautlSIM(J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/phone/MobileNetworkSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 123
    iget v0, p0, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/internal/telephony/gemini/GeminiPhone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setDataConnPref()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/phone/MobileNetworkSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/phone/MobileNetworkSettings;->mAirplaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/MobileNetworkSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIsChangeData:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/MobileNetworkSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/phone/MobileNetworkSettings;->mIsChangeData:Z

    return p1
.end method

.method static synthetic access$500(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 123
    invoke-static {p0}, Lcom/android/phone/MobileNetworkSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/MobileNetworkSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;
    .param p1, "x1"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/android/phone/MobileNetworkSettings;->mDualSimMode:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setNetworkOperator()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/MobileNetworkSettings;)Lcom/mediatek/settings/DefaultSimPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/settings/DefaultSimPreference;

    return-object v0
.end method

.method private dealWithDataConn(J)V
    .locals 3
    .param p1, "simid"    # J

    .prologue
    .line 1150
    const/4 v0, 0x0

    .line 1152
    .local v0, "isDataEnabled":Z
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 1153
    const/4 v0, 0x1

    .line 1155
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    invoke-virtual {v1, v0, p0}, Lcom/mediatek/phone/ext/SettingsExtension;->dataEnableReminder(ZLandroid/preference/PreferenceActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1156
    const-string v1, "NetworkSettings"

    const-string v2, "onPreferenceTreeClick: preference == mButtonDataEnabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mConnService:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_2

    .line 1158
    const-string v1, "NetworkSettings"

    const-string v2, "mConnService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_1
    :goto_0
    return-void

    .line 1161
    :cond_2
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1162
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->isNeedtoShowRoamingMsg()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1164
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    const v2, 0x7f08015a

    invoke-virtual {v1, p0, v2}, Lcom/mediatek/phone/ext/SettingsExtension;->showWarningDlg(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private enableDataRoaming(J)V
    .locals 5
    .param p1, "simId"    # J

    .prologue
    const/4 v4, 0x1

    .line 1480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableDataRoaming with SimId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1482
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1483
    .local v1, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1484
    const/4 v2, 0x1

    invoke-static {p0, p1, p2}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabledGemini(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1490
    :cond_0
    invoke-static {p0, v4, p1, p2}, Landroid/provider/Telephony$SIMInfo;->setDataRoaming(Landroid/content/Context;IJ)I

    .line 1491
    .end local v1    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-void

    .line 1486
    :catch_0
    move-exception v0

    .line 1487
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "iTelephony exception"

    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getBaseBand(I)I
    .locals 7
    .param p1, "slot"    # I

    .prologue
    .line 1381
    const/4 v3, 0x0

    .line 1382
    .local v3, "value":I
    const-string v2, "gsm.baseband.capability"

    .line 1383
    .local v2, "propertyKey":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1384
    .local v0, "capability":Ljava/lang/String;
    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    .line 1385
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1387
    :cond_0
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1388
    if-eqz v0, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v4, v3

    .line 1397
    .end local v3    # "value":I
    .local v4, "value":I
    :goto_0
    return v4

    .line 1393
    .end local v4    # "value":I
    .restart local v3    # "value":I
    :cond_2
    const/16 v5, 0x10

    :try_start_0
    invoke-static {v0, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_1
    move v4, v3

    .line 1397
    .end local v3    # "value":I
    .restart local v4    # "value":I
    goto :goto_0

    .line 1394
    .end local v4    # "value":I
    .restart local v3    # "value":I
    :catch_0
    move-exception v1

    .line 1395
    .local v1, "ne":Ljava/lang/NumberFormatException;
    const-string v5, "parse value of basband error"

    invoke-static {v5}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1401
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1402
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1403
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 1405
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getSimInfoById(J)Landroid/provider/Telephony$SIMInfo;
    .locals 5
    .param p1, "simId"    # J

    .prologue
    .line 1467
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 1468
    .local v2, "simList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    .line 1469
    .local v1, "simInfo":Landroid/provider/Telephony$SIMInfo;
    iget-wide v3, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    .line 1473
    .end local v1    # "simInfo":Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNeedtoShowRoamingMsg()Z
    .locals 6

    .prologue
    .line 1331
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1332
    .local v2, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 1333
    .local v0, "isInRoaming":Z
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v1

    .line 1334
    .local v1, "isRoamingEnabled":Z
    const-string v3, "NetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "***isInRoaming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isRoamingEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isRadioOff()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 891
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_sim_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 895
    .local v0, "isAllRadioOff":Z
    :cond_0
    :goto_0
    const-string v1, "NetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllRadioOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    return v0

    .line 891
    .end local v0    # "isAllRadioOff":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSimLocked()Z
    .locals 6

    .prologue
    .line 515
    const/4 v2, 0x0

    .line 517
    .local v2, "isLocked":Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 518
    .local v1, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 519
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    .line 525
    .end local v1    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 519
    .restart local v1    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 521
    .end local v1    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "NetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1356
    const-string v0, "NetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    return-void
.end method

.method private setDataConnPref()V
    .locals 18

    .prologue
    .line 813
    const-string v14, "NetworkSettings"

    const-string v15, "setDataConnPref"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/settings/DefaultSimPreference;

    if-eqz v14, :cond_7

    .line 815
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/settings/DefaultSimPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/MobileNetworkSettings;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v14, v15}, Lcom/mediatek/settings/DefaultSimPreference;->setCellConnMgr(Lcom/mediatek/CellConnService/CellConnMgr;)V

    .line 816
    const/4 v6, 0x0

    .line 817
    .local v6, "isEnabled":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/MobileNetworkSettings;->mConnService:Landroid/net/ConnectivityManager;

    if-eqz v14, :cond_3

    .line 818
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/MobileNetworkSettings;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v6

    .line 822
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "gprs_connection_sim_setting"

    const-wide/16 v16, -0x5

    invoke-static/range {v14 .. v17}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 825
    .local v1, "dataconnectionID":J
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .local v8, "mSimItemListGprs":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/settings/SimItem;>;"
    invoke-static/range {p0 .. p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    .line 827
    .local v10, "simList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    new-instance v14, Lcom/mediatek/settings/CallSettings$SIMInfoComparable;

    invoke-direct {v14}, Lcom/mediatek/settings/CallSettings$SIMInfoComparable;-><init>()V

    invoke-static {v10, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 828
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 830
    const/4 v13, 0x0

    .line 831
    .local v13, "state":I
    const/4 v7, 0x0

    .line 832
    .local v7, "k":I
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v9

    .line 833
    .local v9, "mTelephonyManagerEx":Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    .line 834
    .local v11, "siminfo":Landroid/provider/Telephony$SIMInfo;
    if-eqz v11, :cond_2

    .line 835
    new-instance v12, Lcom/mediatek/settings/SimItem;

    invoke-direct {v12, v11}, Lcom/mediatek/settings/SimItem;-><init>(Landroid/provider/Telephony$SIMInfo;)V

    .line 838
    .local v12, "simitem":Lcom/mediatek/settings/SimItem;
    :try_start_0
    const-string v14, "phone"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 840
    .local v5, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v5, :cond_0

    .line 842
    iget v14, v11, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-interface {v5, v14}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 851
    .end local v5    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_2
    iput v13, v12, Lcom/mediatek/settings/SimItem;->mState:I

    .line 852
    const-string v14, "NetworkSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "state="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v12, Lcom/mediatek/settings/SimItem;->mState:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-wide v14, v11, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v14, v14, v1

    if-nez v14, :cond_1

    .line 855
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/settings/DefaultSimPreference;

    invoke-virtual {v14, v7}, Lcom/mediatek/settings/DefaultSimPreference;->setInitValue(I)V

    .line 856
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/settings/DefaultSimPreference;

    iget-object v15, v11, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/mediatek/settings/DefaultSimPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 866
    :cond_1
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    .end local v12    # "simitem":Lcom/mediatek/settings/SimItem;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 820
    .end local v1    # "dataconnectionID":J
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "k":I
    .end local v8    # "mSimItemListGprs":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/settings/SimItem;>;"
    .end local v9    # "mTelephonyManagerEx":Lcom/mediatek/telephony/TelephonyManagerEx;
    .end local v10    # "simList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    .end local v11    # "siminfo":Landroid/provider/Telephony$SIMInfo;
    .end local v13    # "state":I
    :cond_3
    const-string v14, "NetworkSettings"

    const-string v15, "mConnService is null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 847
    .restart local v1    # "dataconnectionID":J
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "k":I
    .restart local v8    # "mSimItemListGprs":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/settings/SimItem;>;"
    .restart local v9    # "mTelephonyManagerEx":Lcom/mediatek/telephony/TelephonyManagerEx;
    .restart local v10    # "simList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    .restart local v11    # "siminfo":Landroid/provider/Telephony$SIMInfo;
    .restart local v12    # "simitem":Lcom/mediatek/settings/SimItem;
    .restart local v13    # "state":I
    :catch_0
    move-exception v3

    .line 848
    .local v3, "e":Landroid/os/RemoteException;
    const-string v14, "NetworkSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[e = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 871
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v11    # "siminfo":Landroid/provider/Telephony$SIMInfo;
    .end local v12    # "simitem":Lcom/mediatek/settings/SimItem;
    :cond_4
    const-wide/16 v14, 0x0

    cmp-long v14, v1, v14

    if-nez v14, :cond_5

    .line 872
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/settings/DefaultSimPreference;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/mediatek/settings/DefaultSimPreference;->setInitValue(I)V

    .line 873
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/settings/DefaultSimPreference;

    const v15, 0x7f0800c7

    invoke-virtual {v14, v15}, Lcom/mediatek/settings/DefaultSimPreference;->setSummary(I)V

    .line 881
    :cond_5
    new-instance v12, Lcom/mediatek/settings/SimItem;

    const/4 v14, 0x0

    invoke-direct {v12, v14}, Lcom/mediatek/settings/SimItem;-><init>(Landroid/provider/Telephony$SIMInfo;)V

    .line 882
    .restart local v12    # "simitem":Lcom/mediatek/settings/SimItem;
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->isRadioOff()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 883
    const/4 v14, 0x1

    iput v14, v12, Lcom/mediatek/settings/SimItem;->mState:I

    .line 885
    :cond_6
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    const-string v14, "NetworkSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mSimItemListGprs="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/settings/DefaultSimPreference;

    invoke-virtual {v14, v8}, Lcom/mediatek/settings/DefaultSimPreference;->setInitData(Ljava/util/List;)V

    .line 889
    .end local v1    # "dataconnectionID":J
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "isEnabled":Z
    .end local v7    # "k":I
    .end local v8    # "mSimItemListGprs":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/settings/SimItem;>;"
    .end local v9    # "mTelephonyManagerEx":Lcom/mediatek/telephony/TelephonyManagerEx;
    .end local v10    # "simList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    .end local v12    # "simitem":Lcom/mediatek/settings/SimItem;
    .end local v13    # "state":I
    :cond_7
    return-void
.end method

.method private setNetworkOperator()V
    .locals 7

    .prologue
    .line 745
    const/4 v1, 0x0

    .line 746
    .local v1, "isShowPlmn":Z
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 747
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 748
    .local v3, "sims":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    .line 749
    .local v2, "sim":Landroid/provider/Telephony$SIMInfo;
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isCspPlmnEnabled(I)Z

    move-result v4

    or-int/2addr v1, v4

    goto :goto_0

    .line 752
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "sim":Landroid/provider/Telephony$SIMInfo;
    .end local v3    # "sims":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v1

    .line 754
    :cond_1
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mCarrierSelPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5, v6, v1}, Lcom/mediatek/phone/ext/SettingsExtension;->removeNMOp(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Z)V

    .line 755
    return-void
.end method

.method private setScreenEnabled()V
    .locals 15

    .prologue
    .line 1409
    const/4 v6, 0x0

    .line 1410
    .local v6, "isShouldEnabled":Z
    iget-object v12, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v12

    if-nez v12, :cond_3

    const/4 v4, 0x1

    .line 1412
    .local v4, "isIdle":Z
    :goto_0
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    .line 1413
    .local v9, "sims":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-eqz v9, :cond_4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_4

    const/4 v3, 0x1

    .line 1414
    .local v3, "isHasSimCard":Z
    :goto_1
    if-eqz v4, :cond_5

    iget-boolean v12, p0, Lcom/android/phone/MobileNetworkSettings;->mAirplaneModeEnabled:Z

    if-nez v12, :cond_5

    iget v12, p0, Lcom/android/phone/MobileNetworkSettings;->mDualSimMode:I

    if-eqz v12, :cond_5

    if-eqz v3, :cond_5

    const/4 v6, 0x1

    .line 1416
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1417
    iget-object v12, p0, Lcom/android/phone/MobileNetworkSettings;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    iget-object v13, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v14, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v14}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/mediatek/phone/ext/SettingsExtension;->disableDataRoaming(Landroid/preference/CheckBoxPreference;Z)V

    .line 1418
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v2

    .line 1419
    .local v2, "isGeminiMode":Z
    const-string v12, "3G_SWITCH"

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v7

    .line 1420
    .local v7, "isSupport3GSwitch":Z
    iget-object v12, p0, Lcom/android/phone/MobileNetworkSettings;->mPreference3GSwitch:Landroid/preference/Preference;

    if-eqz v12, :cond_0

    .line 1421
    iget-object v13, p0, Lcom/android/phone/MobileNetworkSettings;->mPreference3GSwitch:Landroid/preference/Preference;

    if-eqz v3, :cond_6

    if-eqz v6, :cond_6

    const/4 v12, 0x1

    :goto_3
    invoke-virtual {v13, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1423
    :cond_0
    iget-object v12, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-eqz v12, :cond_1

    .line 1424
    if-eqz v6, :cond_7

    const/4 v12, 0x0

    invoke-static {v12}, Lcom/mediatek/settings/CallSettings;->isRadioOn(I)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v5, 0x1

    .line 1425
    .local v5, "isNWModeEnabled":Z
    :goto_4
    iget-object v12, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v12, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1426
    if-nez v5, :cond_1

    .line 1427
    iget-object v12, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 1428
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1429
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1434
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v5    # "isNWModeEnabled":Z
    :cond_1
    iget-object v12, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkModeEx:Landroid/preference/Preference;

    if-eqz v12, :cond_9

    .line 1435
    const/4 v5, 0x0

    .line 1436
    .restart local v5    # "isNWModeEnabled":Z
    invoke-static {p0}, Lcom/mediatek/settings/CallSettings;->get3GSimCardSlots(Landroid/app/Activity;)[I

    move-result-object v10

    .line 1437
    .local v10, "slot3G":[I
    if-eqz v10, :cond_8

    .line 1438
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v12, v10

    if-ge v1, v12, :cond_8

    .line 1439
    aget v12, v10, v1

    invoke-static {v12}, Lcom/mediatek/settings/CallSettings;->isRadioOn(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1440
    const/4 v5, 0x1

    .line 1441
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "slot "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v10, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " radio state is = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1438
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1410
    .end local v1    # "i":I
    .end local v2    # "isGeminiMode":Z
    .end local v3    # "isHasSimCard":Z
    .end local v4    # "isIdle":Z
    .end local v5    # "isNWModeEnabled":Z
    .end local v7    # "isSupport3GSwitch":Z
    .end local v9    # "sims":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    .end local v10    # "slot3G":[I
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1413
    .restart local v4    # "isIdle":Z
    .restart local v9    # "sims":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1414
    .restart local v3    # "isHasSimCard":Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 1421
    .restart local v2    # "isGeminiMode":Z
    .restart local v7    # "isSupport3GSwitch":Z
    :cond_6
    const/4 v12, 0x0

    goto :goto_3

    .line 1424
    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    .line 1445
    .restart local v5    # "isNWModeEnabled":Z
    .restart local v10    # "slot3G":[I
    :cond_8
    if-eqz v6, :cond_b

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    .line 1446
    :goto_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isNWModeEnabled = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1447
    iget-object v12, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkModeEx:Landroid/preference/Preference;

    invoke-virtual {v12, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1449
    .end local v5    # "isNWModeEnabled":Z
    .end local v10    # "slot3G":[I
    :cond_9
    if-eqz v6, :cond_a

    .line 1450
    iget-object v12, p0, Lcom/android/phone/MobileNetworkSettings;->mConnService:Landroid/net/ConnectivityManager;

    if-eqz v12, :cond_a

    .line 1451
    iget-object v12, p0, Lcom/android/phone/MobileNetworkSettings;->mConnService:Landroid/net/ConnectivityManager;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 1452
    .local v8, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v8, :cond_a

    .line 1453
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    .line 1454
    .local v11, "state":Landroid/net/NetworkInfo$State;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mms state = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1455
    iget-object v13, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/settings/DefaultSimPreference;

    sget-object v12, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v11, v12, :cond_c

    sget-object v12, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v11, v12, :cond_c

    const/4 v12, 0x1

    :goto_7
    invoke-virtual {v13, v12}, Lcom/mediatek/settings/DefaultSimPreference;->setEnabled(Z)V

    .line 1460
    .end local v8    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v11    # "state":Landroid/net/NetworkInfo$State;
    :cond_a
    return-void

    .line 1445
    .restart local v5    # "isNWModeEnabled":Z
    .restart local v10    # "slot3G":[I
    :cond_b
    const/4 v5, 0x0

    goto :goto_6

    .line 1455
    .end local v5    # "isNWModeEnabled":Z
    .end local v10    # "slot3G":[I
    .restart local v8    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v11    # "state":Landroid/net/NetworkInfo$State;
    :cond_c
    const/4 v12, 0x0

    goto :goto_7
.end method

.method private switchGprsDefautlSIM(J)V
    .locals 9
    .param p1, "simid"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    .line 1173
    cmp-long v5, p1, v6

    if-gez v5, :cond_1

    .line 1174
    const-string v4, "NetworkSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is an exceptions"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    cmp-long v5, p1, v6

    if-lez v5, :cond_2

    move v3, v4

    .line 1179
    .local v3, "isConnect":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gprs_connection_sim_setting"

    const-wide/16 v7, -0x5

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1181
    .local v0, "gprsValue":J
    const-string v5, "NetworkSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current gprsValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and target value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    cmp-long v5, p1, v0

    if-eqz v5, :cond_0

    .line 1185
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1186
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "simid"

    invoke-virtual {v2, v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1187
    invoke-virtual {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 1191
    const/16 v5, 0x190

    invoke-virtual {p0, v5}, Lcom/android/phone/MobileNetworkSettings;->showDialog(I)V

    .line 1192
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mH:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mH:Landroid/os/Handler;

    const/16 v7, 0x7d1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x7530

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1193
    iput-boolean v4, p0, Lcom/android/phone/MobileNetworkSettings;->mIsChangeData:Z

    goto :goto_0

    .line 1177
    .end local v0    # "gprsValue":J
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isConnect":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1340
    packed-switch p1, :pswitch_data_0

    .line 1353
    :cond_0
    :goto_0
    return-void

    .line 1342
    :pswitch_0
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1344
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1346
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_0

    .line 1340
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 333
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 335
    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 530
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 532
    const v0, 0x7f060015

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->addPreferencesFromResource(I)V

    .line 534
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->getSettingsExtension()Lcom/mediatek/phone/ext/SettingsExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    .line 536
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 538
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 541
    :cond_0
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/phone/MobileNetworkSettings$MyHandler;-><init>(Lcom/android/phone/MobileNetworkSettings;Lcom/android/phone/MobileNetworkSettings$1;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    .line 543
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 544
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_EF_CSP_CONTENT_NOTIFY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.mms.transaction.START"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 557
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 558
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 560
    new-instance v0, Lcom/mediatek/settings/PreCheckForRunning;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/PreCheckForRunning;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

    .line 561
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 562
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 563
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/mediatek/settings/PreCheckForRunning;->mByPass:Z

    .line 564
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Telephony$SIMInfo;

    iget v0, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iput v0, p0, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    .line 570
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 572
    .local v1, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v0, "data_connection_setting"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/DefaultSimPreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/settings/DefaultSimPreference;

    .line 573
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/settings/DefaultSimPreference;

    invoke-virtual {v0, p0}, Lcom/mediatek/settings/DefaultSimPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 574
    const-string v0, "button_data_enabled_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 575
    const-string v0, "button_roaming_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    .line 576
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    const v3, 0x7f08023d

    invoke-virtual {v2, p0, v3}, Lcom/mediatek/phone/ext/SettingsExtension;->getRoamingSummary(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    const v3, 0x7f08023e

    invoke-virtual {v2, p0, v3}, Lcom/mediatek/phone/ext/SettingsExtension;->getRoamingSummary(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 578
    const-string v0, "preferred_network_mode_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 580
    const-string v0, "button_data_usage_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataUsage:Landroid/preference/Preference;

    .line 585
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 586
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 590
    :cond_1
    const-string v0, "button_3g_service_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPreference3GSwitch:Landroid/preference/Preference;

    .line 591
    const-string v0, "button_plmn_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPLMNPreference:Landroid/preference/Preference;

    .line 593
    const-string v0, "ACER"

    const-string v2, "ACER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPLMNPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 597
    :cond_2
    const-string v0, "cdma_lte_data_service_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    .line 598
    const-string v0, "button_network_mode_ex_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkModeEx:Landroid/preference/Preference;

    .line 600
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    const/4 v7, 0x1

    .line 601
    .local v7, "isLteOnCdma":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 604
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 607
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "preferred_network_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 610
    .local v11, "settingsNetworkMode":I
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 611
    new-instance v0, Lcom/android/phone/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 612
    new-instance v0, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 699
    .end local v11    # "settingsNetworkMode":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "setup_prepaid_data_service_url"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 702
    .local v9, "missingDataServiceUrl":Z
    if-eqz v7, :cond_3

    if-eqz v9, :cond_13

    .line 703
    :cond_3
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 708
    :goto_3
    const-string v0, "throttle"

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ThrottleManager;

    .line 709
    .local v12, "tm":Landroid/net/ThrottleManager;
    new-instance v0, Lcom/android/phone/DataUsageListener;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataUsage:Landroid/preference/Preference;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/phone/DataUsageListener;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    .line 711
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/MobileNetworkSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 713
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 714
    .local v6, "actionBar":Landroid/app/ActionBar;
    if-eqz v6, :cond_4

    .line 716
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 719
    :cond_4
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredGSMOnly:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkModeEx:Landroid/preference/Preference;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/phone/ext/SettingsExtension;->removeNMMode(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V

    .line 721
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setNetworkOperator()V

    .line 723
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-direct {v0}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 724
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0, p0}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 729
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/settings/DefaultSimPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 730
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 731
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 740
    :goto_4
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkModeEx:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 742
    return-void

    .line 566
    .end local v1    # "prefSet":Landroid/preference/PreferenceScreen;
    .end local v6    # "actionBar":Landroid/app/ActionBar;
    .end local v7    # "isLteOnCdma":Z
    .end local v9    # "missingDataServiceUrl":Z
    .end local v12    # "tm":Landroid/net/ThrottleManager;
    :cond_5
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/mediatek/settings/PreCheckForRunning;->mByPass:Z

    goto/16 :goto_0

    .line 600
    .restart local v1    # "prefSet":Landroid/preference/PreferenceScreen;
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 614
    .restart local v7    # "isLteOnCdma":Z
    :cond_7
    if-nez v7, :cond_8

    .line 615
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 617
    :cond_8
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    .line 618
    .local v10, "phoneType":I
    const/4 v0, 0x2

    if-ne v10, v0, :cond_b

    .line 619
    new-instance v0, Lcom/android/phone/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 620
    if-eqz v7, :cond_9

    .line 621
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 622
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f0a0032

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 624
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f0a0033

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 626
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "preferred_network_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 630
    .restart local v11    # "settingsNetworkMode":I
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 634
    .end local v11    # "settingsNetworkMode":I
    :cond_9
    const-string v0, "3G_SWITCH"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 635
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPreference3GSwitch:Landroid/preference/Preference;

    if-eqz v0, :cond_a

    .line 636
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPreference3GSwitch:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPreference3GSwitch:Landroid/preference/Preference;

    .line 640
    :cond_a
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkModeEx:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 641
    const-string v0, "button_apn_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mApnPref:Landroid/preference/PreferenceScreen;

    .line 642
    const-string v0, "button_carrier_sel_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCarrierSelPref:Landroid/preference/PreferenceScreen;

    goto/16 :goto_2

    .line 644
    :cond_b
    const/4 v0, 0x1

    if-ne v10, v0, :cond_12

    .line 645
    new-instance v0, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 647
    const-string v0, "button_apn_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mApnPref:Landroid/preference/PreferenceScreen;

    .line 648
    const-string v0, "button_prefer_2g_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredGSMOnly:Landroid/preference/CheckBoxPreference;

    .line 649
    const-string v0, "gsm_umts_preferred_network_mode_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 652
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "preferred_network_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 655
    .restart local v11    # "settingsNetworkMode":I
    const/4 v0, 0x2

    if-le v11, v0, :cond_c

    .line 656
    const/4 v11, 0x0

    .line 657
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "preferred_network_mode"

    invoke-static {v0, v2, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 661
    :cond_c
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 663
    const-string v0, "3G_SWITCH"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 664
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPreference3GSwitch:Landroid/preference/Preference;

    if-eqz v0, :cond_d

    .line 665
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPreference3GSwitch:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 666
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPreference3GSwitch:Landroid/preference/Preference;

    .line 668
    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->getBaseBand(I)I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_e

    .line 669
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 670
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 680
    :cond_e
    :goto_5
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkModeEx:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPreference3GSwitch:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredGSMOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/phone/ext/SettingsExtension;->customizeFeatureForOperator(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V

    .line 683
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-eqz v0, :cond_f

    .line 684
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 685
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->getBaseBand(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_f

    .line 686
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 688
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 692
    :cond_f
    const-string v0, "button_carrier_sel_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCarrierSelPref:Landroid/preference/PreferenceScreen;

    goto/16 :goto_2

    .line 672
    :cond_10
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkModeEx:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 676
    :cond_11
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkModeEx:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 677
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 695
    .end local v11    # "settingsNetworkMode":I
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    .end local v10    # "phoneType":I
    .restart local v9    # "missingDataServiceUrl":Z
    :cond_13
    const-string v0, "NetworkSettings"

    const-string v2, "keep ltePref"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 734
    .restart local v6    # "actionBar":Landroid/app/ActionBar;
    .restart local v12    # "tm":Landroid/net/ThrottleManager;
    :cond_14
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 735
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 737
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const v4, 0x1080027

    const/16 v3, 0x64

    const v7, 0x1040014

    const v6, 0x1040013

    const v5, 0x1040009

    .line 901
    const/4 v0, 0x0

    .line 902
    .local v0, "dialog":Landroid/app/Dialog;
    const/16 v2, 0x190

    if-ne p1, v2, :cond_1

    .line 903
    new-instance v0, Landroid/app/ProgressDialog;

    .end local v0    # "dialog":Landroid/app/Dialog;
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .restart local v0    # "dialog":Landroid/app/Dialog;
    move-object v2, v0

    .line 904
    check-cast v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080215

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 905
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 990
    :cond_0
    :goto_0
    return-object v0

    .line 906
    :cond_1
    if-eq p1, v3, :cond_2

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_4

    .line 908
    :cond_2
    if-ne p1, v3, :cond_3

    const v1, 0x7f08014b

    .line 911
    .local v1, "message":I
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$7;

    invoke-direct {v3, p0}, Lcom/android/phone/MobileNetworkSettings$7;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$6;

    invoke-direct {v3, p0}, Lcom/android/phone/MobileNetworkSettings$6;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$5;

    invoke-direct {v3, p0}, Lcom/android/phone/MobileNetworkSettings$5;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 953
    goto :goto_0

    .line 908
    .end local v1    # "message":I
    :cond_3
    const v1, 0x7f08014c

    goto :goto_1

    .line 953
    :cond_4
    const/16 v2, 0x12c

    if-ne p1, v2, :cond_5

    .line 954
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    const v4, 0x7f080240

    invoke-virtual {v3, p0, v4}, Lcom/mediatek/phone/ext/SettingsExtension;->getRoamingSummary(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 960
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 961
    :cond_5
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 962
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/MobileNetworkSettings;->mDataSwitchMsgIndex:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$10;

    invoke-direct {v3, p0}, Lcom/android/phone/MobileNetworkSettings$10;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$9;

    invoke-direct {v3, p0}, Lcom/android/phone/MobileNetworkSettings$9;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$8;

    invoke-direct {v3, p0}, Lcom/android/phone/MobileNetworkSettings$8;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 1003
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 1004
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1005
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 1006
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

    invoke-virtual {v0}, Lcom/mediatek/settings/PreCheckForRunning;->deRegister()V

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 1010
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1013
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 347
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1361
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1362
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 1374
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    .line 1375
    const/4 v1, 0x1

    .line 1377
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 995
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 996
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->pause()V

    .line 998
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 999
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 1024
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v10, :cond_3

    .line 1027
    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object v10, p2

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1029
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1030
    .local v0, "buttonNetworkMode":I
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "preferred_network_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1033
    .local v5, "settingsNetworkMode":I
    if-eq v0, v5, :cond_1

    .line 1035
    const/16 v10, 0x190

    invoke-virtual {p0, v10}, Lcom/android/phone/MobileNetworkSettings;->showDialog(I)V

    .line 1037
    packed-switch v0, :pswitch_data_0

    .line 1063
    const/4 v4, 0x0

    .line 1069
    .local v4, "modemNetworkMode":I
    :goto_0
    if-nez v4, :cond_0

    const/16 v10, 0xb

    if-ne v5, v10, :cond_0

    .line 1071
    const/4 v10, 0x1

    .line 1143
    .end local v0    # "buttonNetworkMode":I
    .end local v4    # "modemNetworkMode":I
    .end local v5    # "settingsNetworkMode":I
    :goto_1
    return v10

    .line 1039
    .restart local v0    # "buttonNetworkMode":I
    .restart local v5    # "settingsNetworkMode":I
    :pswitch_0
    const/4 v4, 0x7

    .line 1040
    .restart local v4    # "modemNetworkMode":I
    goto :goto_0

    .line 1042
    .end local v4    # "modemNetworkMode":I
    :pswitch_1
    const/4 v4, 0x6

    .line 1043
    .restart local v4    # "modemNetworkMode":I
    goto :goto_0

    .line 1045
    .end local v4    # "modemNetworkMode":I
    :pswitch_2
    const/4 v4, 0x5

    .line 1046
    .restart local v4    # "modemNetworkMode":I
    goto :goto_0

    .line 1048
    .end local v4    # "modemNetworkMode":I
    :pswitch_3
    const/4 v4, 0x4

    .line 1049
    .restart local v4    # "modemNetworkMode":I
    goto :goto_0

    .line 1051
    .end local v4    # "modemNetworkMode":I
    :pswitch_4
    const/4 v4, 0x3

    .line 1052
    .restart local v4    # "modemNetworkMode":I
    goto :goto_0

    .line 1054
    .end local v4    # "modemNetworkMode":I
    :pswitch_5
    const/4 v4, 0x2

    .line 1055
    .restart local v4    # "modemNetworkMode":I
    goto :goto_0

    .line 1057
    .end local v4    # "modemNetworkMode":I
    :pswitch_6
    const/4 v4, 0x1

    .line 1058
    .restart local v4    # "modemNetworkMode":I
    goto :goto_0

    .line 1060
    .end local v4    # "modemNetworkMode":I
    :pswitch_7
    const/4 v4, 0x0

    .line 1061
    .restart local v4    # "modemNetworkMode":I
    goto :goto_0

    .line 1074
    :cond_0
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1076
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "preferred_network_mode"

    invoke-static {v10, v11, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1080
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1081
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-virtual {v10, v4, v11, v12}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    .line 1143
    .end local v0    # "buttonNetworkMode":I
    .end local v4    # "modemNetworkMode":I
    .end local v5    # "settingsNetworkMode":I
    :cond_1
    :goto_2
    const/4 v10, 0x1

    goto :goto_1

    .line 1084
    .restart local v0    # "buttonNetworkMode":I
    .restart local v4    # "modemNetworkMode":I
    .restart local v5    # "settingsNetworkMode":I
    :cond_2
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v4, v11}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_2

    .line 1088
    .end local v0    # "buttonNetworkMode":I
    .end local v4    # "modemNetworkMode":I
    .end local v5    # "settingsNetworkMode":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_3
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/settings/DefaultSimPreference;

    if-ne p1, v10, :cond_1

    .line 1090
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1091
    .local v6, "simId":J
    const-string v10, "NetworkSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "under click simId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1093
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_4

    .line 1094
    const-wide/16 v10, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/phone/MobileNetworkSettings;->switchGprsDefautlSIM(J)V

    .line 1095
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1098
    :cond_4
    invoke-direct {p0, v6, v7}, Lcom/android/phone/MobileNetworkSettings;->getSimInfoById(J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v8

    .line 1099
    .local v8, "simInfo":Landroid/provider/Telephony$SIMInfo;
    if-nez v8, :cond_5

    .line 1100
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1102
    :cond_5
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v11, v8, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v10, v11}, Landroid/telephony/TelephonyManager;->isNetworkRoamingGemini(I)Z

    move-result v2

    .line 1103
    .local v2, "isInRoaming":Z
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/phone/MobileNetworkSettings;->mDataSwitchMsgIndex:I

    .line 1104
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isInRoaming = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1105
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v10}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v9

    .line 1106
    .local v9, "slot3G":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_7

    const/4 v1, 0x1

    .line 1108
    .local v1, "is3gOff":Z
    :goto_3
    if-eqz v2, :cond_b

    .line 1109
    iget v10, v8, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    const/4 v3, 0x1

    .line 1110
    .local v3, "isRoamingDataAllowed":Z
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isRoamingDataAllowed = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1111
    if-eqz v3, :cond_9

    .line 1112
    iget v10, v8, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-eq v10, v9, :cond_6

    .line 1113
    const v10, 0x7f080175

    iput v10, p0, Lcom/android/phone/MobileNetworkSettings;->mDataSwitchMsgIndex:I

    .line 1127
    .end local v3    # "isRoamingDataAllowed":Z
    :cond_6
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "slot3G = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1128
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "simInfo.mSlot = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1130
    iget v10, p0, Lcom/android/phone/MobileNetworkSettings;->mDataSwitchMsgIndex:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_c

    .line 1131
    invoke-direct {p0, v6, v7}, Lcom/android/phone/MobileNetworkSettings;->switchGprsDefautlSIM(J)V

    goto/16 :goto_2

    .line 1106
    .end local v1    # "is3gOff":Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 1109
    .restart local v1    # "is3gOff":Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    .line 1116
    .restart local v3    # "isRoamingDataAllowed":Z
    :cond_9
    iget v10, v8, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v10, v9, :cond_a

    .line 1117
    const v10, 0x7f080174

    iput v10, p0, Lcom/android/phone/MobileNetworkSettings;->mDataSwitchMsgIndex:I

    goto :goto_5

    .line 1119
    :cond_a
    const v10, 0x7f080176

    iput v10, p0, Lcom/android/phone/MobileNetworkSettings;->mDataSwitchMsgIndex:I

    goto :goto_5

    .line 1123
    .end local v3    # "isRoamingDataAllowed":Z
    :cond_b
    iget v10, v8, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-eq v10, v9, :cond_6

    .line 1124
    const v10, 0x7f080175

    iput v10, p0, Lcom/android/phone/MobileNetworkSettings;->mDataSwitchMsgIndex:I

    goto :goto_5

    .line 1133
    :cond_c
    iput-wide v6, p0, Lcom/android/phone/MobileNetworkSettings;->mSelectGprsIndex:J

    .line 1134
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mSelectGprsIndex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/phone/MobileNetworkSettings;->mSelectGprsIndex:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1135
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/phone/MobileNetworkSettings;->removeDialog(I)V

    .line 1136
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/phone/MobileNetworkSettings;->showDialog(I)V

    goto/16 :goto_2

    .line 1139
    .end local v1    # "is3gOff":Z
    .end local v2    # "isInRoaming":Z
    .end local v8    # "simInfo":Landroid/provider/Telephony$SIMInfo;
    .end local v9    # "slot3G":I
    :cond_d
    invoke-direct {p0, v6, v7}, Lcom/android/phone/MobileNetworkSettings;->dealWithDataConn(J)V

    goto/16 :goto_2

    .line 1037
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

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x0

    const/16 v12, 0x12e

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 358
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mPLMNPreference:Landroid/preference/Preference;

    if-ne p2, v10, :cond_2

    .line 359
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 360
    new-instance v2, Landroid/content/Intent;

    const-class v9, Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct {v2, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    .local v2, "intent":Landroid/content/Intent;
    const-string v9, "INIT_TITLE_NAME"

    const v10, 0x7f08015c

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    const-string v9, "ITEM_TYPE"

    const-string v10, "PreferenceScreen"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string v9, "TARGET_CLASS"

    const-string v10, "com.mediatek.settings.PLMNListPreference"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

    iget v10, p0, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-virtual {v9, v2, v10, v12}, Lcom/mediatek/settings/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    .line 509
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v8

    :cond_1
    move v8, v9

    .line 367
    goto :goto_0

    .line 369
    :cond_2
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkModeEx:Landroid/preference/Preference;

    if-ne p2, v10, :cond_4

    .line 372
    new-instance v2, Landroid/content/Intent;

    const-class v10, Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct {v2, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v10, "ITEM_TYPE"

    const-string v11, "ListPreference"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    invoke-direct {p0, v9}, Lcom/android/phone/MobileNetworkSettings;->getBaseBand(I)I

    move-result v10

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_3

    .line 375
    const-string v10, "INIT_ARRAY"

    const v11, 0x7f0a0024

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 376
    const-string v10, "INIT_ARRAY_VALUE"

    const v11, 0x7f0a0025

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    :goto_1
    const-string v10, "INIT_TITLE_NAME"

    const v11, 0x7f080237

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    const-string v10, "LIST_TITLE_NAME"

    const v11, 0x7f080116

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    const-string v10, "INIT_FEATURE_NAME"

    const-string v11, "NETWORK_MODE"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-static {p0, v9}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 386
    .local v1, "info":Landroid/provider/Telephony$SIMInfo;
    const-string v9, "INIT_SIM_ID"

    invoke-static {p0}, Lcom/mediatek/settings/CallSettings;->get3GSimCards(Landroid/app/Activity;)[J

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 387
    const-string v9, "INIT_BASE_KEY"

    const-string v10, "preferred_network_mode_key@"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

    iget v10, p0, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-virtual {v9, v2, v10, v12}, Lcom/mediatek/settings/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto :goto_0

    .line 378
    .end local v1    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_3
    const-string v10, "INIT_ARRAY"

    const v11, 0x7f0a0022

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    const-string v10, "INIT_ARRAY_VALUE"

    const v11, 0x7f0a0023

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 393
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v10, p2}, Lcom/android/phone/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 396
    :cond_5
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v10, p2}, Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 398
    const-string v9, "ril.cdma.inecmmode"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 401
    iput-object p2, p0, Lcom/android/phone/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    .line 404
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v9, v10, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v10, 0x11

    invoke-virtual {p0, v9, v10}, Lcom/android/phone/MobileNetworkSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 409
    :cond_6
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p2, v10, :cond_7

    .line 411
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "preferred_network_mode"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 414
    .local v5, "settingsNetworkMode":I
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 416
    .end local v5    # "settingsNetworkMode":I
    :cond_7
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_9

    .line 418
    const-string v10, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 422
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 424
    iput-boolean v9, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 425
    const/16 v9, 0x12c

    invoke-virtual {p0, v9}, Lcom/android/phone/MobileNetworkSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 427
    :cond_8
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10, v9}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto/16 :goto_0

    .line 430
    :cond_9
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_e

    .line 432
    const-string v10, "onPreferenceTreeClick: preference == mButtonDataEnabled."

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 435
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    invoke-virtual {v10, v11, p0}, Lcom/mediatek/phone/ext/SettingsExtension;->dataEnableReminder(ZLandroid/preference/PreferenceActivity;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 436
    const-string v10, "NetworkSettings"

    const-string v11, "onPreferenceTreeClick: preference == mButtonDataEnabled."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->isSimLocked()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 438
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v10, v9, v12}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    .line 439
    const-string v10, "NetworkSettings"

    const-string v11, "Data enable check change request pin single card"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 442
    :cond_a
    iput-boolean v8, p0, Lcom/android/phone/MobileNetworkSettings;->mIsChangeData:Z

    .line 443
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 444
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-ne v9, v8, :cond_b

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-nez v9, :cond_c

    .line 446
    :cond_b
    const/16 v9, 0x190

    invoke-virtual {p0, v9}, Lcom/android/phone/MobileNetworkSettings;->showDialog(I)V

    .line 448
    :cond_c
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mConnService:Landroid/net/ConnectivityManager;

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 449
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mH:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mH:Landroid/os/Handler;

    const/16 v11, 0x7d1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x7530

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 450
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->isNeedtoShowRoamingMsg()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 452
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    const v10, 0x7f08015a

    invoke-virtual {v9, p0, v10}, Lcom/mediatek/phone/ext/SettingsExtension;->showWarningDlg(Landroid/content/Context;I)V

    .line 455
    :cond_d
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/mediatek/phone/ext/SettingsExtension;->disableDataRoaming(Landroid/preference/CheckBoxPreference;Z)V

    goto/16 :goto_0

    .line 459
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_e
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    if-ne p2, v10, :cond_12

    .line 460
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "setup_prepaid_data_service_url"

    invoke-static {v10, v11}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 462
    .local v6, "tmpl":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 463
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "imsi":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 465
    const-string v0, ""

    .line 467
    :cond_f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 469
    .local v7, "url":Ljava/lang/String;
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 470
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 467
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "url":Ljava/lang/String;
    :cond_10
    new-array v10, v8, [Ljava/lang/CharSequence;

    aput-object v0, v10, v9

    invoke-static {v6, v10}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 472
    .end local v0    # "imsi":Ljava/lang/String;
    :cond_11
    const-string v9, "NetworkSettings"

    const-string v10, "Missing SETUP_PREPAID_DATA_SERVICE_URL"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 475
    .end local v6    # "tmpl":Ljava/lang/String;
    :cond_12
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mApnPref:Landroid/preference/PreferenceScreen;

    if-ne p2, v10, :cond_13

    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 477
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 478
    .local v3, "it":Landroid/content/Intent;
    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    const-string v9, "com.android.phone"

    const-string v10, "com.mediatek.settings.MultipleSimActivity"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    const-string v9, "simId"

    iget v10, p0, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 481
    const-string v9, "INIT_TITLE_NAME"

    const v10, 0x7f0801e8

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 482
    const-string v9, "ITEM_TYPE"

    const-string v10, "PreferenceScreen"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v9, "TARGET_CLASS"

    const-string v10, "com.android.settings.ApnSettings"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

    iget v10, p0, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-virtual {v9, v3, v10, v12}, Lcom/mediatek/settings/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto/16 :goto_0

    .line 486
    .end local v3    # "it":Landroid/content/Intent;
    :cond_13
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mCarrierSelPref:Landroid/preference/PreferenceScreen;

    if-ne p2, v10, :cond_14

    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 487
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 488
    .restart local v3    # "it":Landroid/content/Intent;
    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    const-string v9, "com.android.phone"

    const-string v10, "com.mediatek.settings.MultipleSimActivity"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v9, "INIT_TITLE_NAME"

    const v10, 0x7f0801ec

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    const-string v9, "ITEM_TYPE"

    const-string v10, "PreferenceScreen"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string v9, "INIT_FEATURE_NAME"

    const-string v10, "NETWORK_SEARCH"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string v9, "TARGET_CLASS"

    const-string v10, "com.android.phone.NetworkSetting"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

    iget v10, p0, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-virtual {v9, v3, v10, v12}, Lcom/mediatek/settings/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto/16 :goto_0

    .line 497
    .end local v3    # "it":Landroid/content/Intent;
    :cond_14
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/settings/DefaultSimPreference;

    if-ne p2, v10, :cond_15

    .line 500
    const-string v9, "NetworkSettings"

    const-string v10, "mDataConnPref is clicked"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 507
    :cond_15
    invoke-virtual {p1, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    move v8, v9

    .line 509
    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 759
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 763
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mAirplaneModeEnabled:Z

    .line 765
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mConnService:Landroid/net/ConnectivityManager;

    .line 766
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mConnService:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_4

    .line 767
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 775
    :goto_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 777
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "preferred_network_mode_key"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-virtual {v2, v1}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->resume()V

    .line 785
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dual_sim_mode_setting"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDualSimMode:I

    .line 788
    const-string v0, "NetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings.onResume(), mDualSimMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/MobileNetworkSettings;->mDualSimMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    .line 793
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 797
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setDataConnPref()V

    .line 799
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setScreenEnabled()V

    .line 802
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "gprs_connection_sim_setting"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 811
    return-void

    :cond_3
    move v0, v1

    .line 763
    goto/16 :goto_0

    .line 769
    :cond_4
    const-string v0, "NetworkSettings"

    const-string v2, "onResume, mConnService is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
