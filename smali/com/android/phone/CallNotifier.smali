.class public Lcom/android/phone/CallNotifier;
.super Landroid/os/Handler;
.source "CallNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;,
        Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;,
        Lcom/android/phone/CallNotifier$InCallTonePlayer;,
        Lcom/android/phone/CallNotifier$CustomInfo;
    }
.end annotation


# static fields
.field private static final CALLERINFO_QUERYING:I = -0x1

.field private static final CALLERINFO_QUERY_READY:I = 0x0

.field private static final CALLWAITING_ADDCALL_DISABLE_TIME:I = 0x7530

.field private static final CALLWAITING_ADDCALL_DISABLE_TIMEOUT:I = 0x17

.field private static final CALLWAITING_CALLERINFO_DISPLAY_DONE:I = 0x16

.field private static final CALLWAITING_CALLERINFO_DISPLAY_TIME:I = 0x4e20

.field private static final CALL_DURATION_THRESHOLD_FOR_CALL_HISTORY:I = 0x2710

.field public static final CALL_TYPE_NONE:I = 0x0

.field public static final CALL_TYPE_SIP:I = -0x2

.field private static final CDMA_CALL_WAITING_REJECT:I = 0x1a

.field private static final DBG:Z = true

.field private static final DISPLAYINFO_NOTIFICATION_DONE:I = 0x18

.field private static final DISPLAYINFO_NOTIFICATION_TIME:I = 0x7d0

.field private static final DISPLAY_BUSY_MESSAGE:I = 0x32

.field private static final EMERGENCY_TONE_ALERT:I = 0x1

.field private static final EMERGENCY_TONE_OFF:I = 0x0

.field private static final EMERGENCY_TONE_VIBRATE:I = 0x2

.field private static final EVENT_OTA_PROVISION_CHANGE:I = 0x19

.field private static final EVENT_SIMINFO_CHANGED:I = 0x7d1

.field private static final FAKE_SIP_PHONE_INCOMING_RING:I = 0x2a

.field private static final FAKE_SIP_PHONE_INCOMING_RING_DELAY:I = 0x7d0

.field private static final LOG_TAG:Ljava/lang/String; = "CallNotifier"

.field private static final PHONE_CDMA_CALL_WAITING:I = 0x8

.field private static final PHONE_DISCONNECT:I = 0x3

.field private static final PHONE_DISCONNECT2:I = 0x23

.field private static final PHONE_DISCONNECT_SIM1:I = 0x1f

.field private static final PHONE_DISCONNECT_SIM2:I = 0x20

.field private static final PHONE_ENHANCED_VP_OFF:I = 0xa

.field private static final PHONE_ENHANCED_VP_ON:I = 0x9

.field private static final PHONE_INCOMING_RING:I = 0x5

.field private static final PHONE_INCOMING_RING2:I = 0x25

.field private static final PHONE_MWI_CHANGED:I = 0x15

.field private static final PHONE_MWI_CHANGED2:I = 0x28

.field private static final PHONE_NEW_RINGING_CONNECTION:I = 0x2

.field private static final PHONE_NEW_RINGING_CONNECTION2:I = 0x21

.field private static final PHONE_RESEND_MUTE:I = 0xc

.field private static final PHONE_RESEND_MUTE2:I = 0x27

.field private static final PHONE_RINGBACK_TONE:I = 0xb

.field private static final PHONE_RINGBACK_TONE2:I = 0x26

.field private static final PHONE_STATE_CHANGED:I = 0x1

.field private static final PHONE_STATE_CHANGED2:I = 0x22

.field private static final PHONE_STATE_DISPLAYINFO:I = 0x6

.field private static final PHONE_STATE_SIGNALINFO:I = 0x7

.field private static final PHONE_UNKNOWN_CONNECTION_APPEARED:I = 0x4

.field private static final PHONE_UNKNOWN_CONNECTION_APPEARED2:I = 0x24

.field private static final PHONE_VT_RING_INFO:I = 0xd

.field private static final PHONE_VT_RING_INFO2:I = 0xe

.field private static final PHONE_WAITING_DISCONNECT:I = 0xf

.field private static final PHONE_WAITING_DISCONNECT1:I = 0x10

.field private static final PHONE_WAITING_DISCONNECT2:I = 0x11

.field private static final PHONE_WAITING_DISCONNECT_STOP_TONE_PLAYER:I = 0x12

.field private static final RINGER_CUSTOM_RINGTONE_QUERY_TIMEOUT:I = 0x64

.field private static final RINGTONE_QUERY_WAIT_TIME:I = 0x1f4

.field private static final TONE_RELATIVE_VOLUME_SIGNALINFO:I = 0x50

.field private static final UPDATE_IN_CALL_NOTIFICATION:I = 0x1b

.field private static final VDBG:Z = true

.field public static mIsWaitingQueryComplete:Z

.field private static sInstance:Lcom/android/phone/CallNotifier;


# instance fields
.field cfiStatus:[Z

.field private mApplication:Lcom/android/phone/PhoneGlobals;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBlackListManager:Lcom/mediatek/phone/BlackListManager;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

.field private mCallLog:Lcom/android/phone/CallLogAsync;

.field private mCallWaitingTimeOut:Z

.field private mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mCallerInfoQueryState:I

.field private mCallerInfoQueryStateGuard:Ljava/lang/Object;

.field private mCurrentEmergencyToneState:I

.field mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

.field private mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

.field private mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mIsCdmaRedialCall:Z

.field private mIsEmergencyToneOn:I

.field private mLastState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

.field private mPreviousCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

.field private mRinger:Lcom/android/phone/Ringer;

.field private mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

.field private mSilentRingerRequested:Z

.field mToneThread:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mVoicePrivacyState:Z

.field private ok2Ring:Z

.field private sim1Mwi:Z

.field private sim2Mwi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/CallNotifier;->mIsWaitingQueryComplete:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogAsync;)V
    .locals 10
    .param p1, "app"    # Lcom/android/phone/PhoneGlobals;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "ringer"    # Lcom/android/phone/Ringer;
    .param p4, "callLog"    # Lcom/android/phone/CallLogAsync;

    .prologue
    const/16 v9, 0xd

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 287
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 149
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 159
    new-instance v3, Ljava/lang/Object;

    invoke-direct/range {v3 .. v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    .line 228
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mLastState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 237
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 238
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 242
    iput v6, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    .line 246
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    .line 254
    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 257
    iput-boolean v8, p0, Lcom/android/phone/CallNotifier;->ok2Ring:Z

    .line 263
    new-array v3, v5, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->cfiStatus:[Z

    .line 267
    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mToneThread:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 611
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->sim1Mwi:Z

    .line 613
    new-instance v3, Lcom/android/phone/CallNotifier$1;

    invoke-direct {v3, p0}, Lcom/android/phone/CallNotifier$1;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 661
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->sim2Mwi:Z

    .line 662
    new-instance v3, Lcom/android/phone/CallNotifier$2;

    invoke-direct {v3, p0}, Lcom/android/phone/CallNotifier$2;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    .line 3206
    new-instance v3, Lcom/android/phone/CallNotifier$3;

    invoke-direct {v3, p0}, Lcom/android/phone/CallNotifier$3;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 288
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    .line 289
    iput-object p2, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 290
    iget-object v3, p1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 291
    iget-object v3, p1, Lcom/android/phone/PhoneGlobals;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 292
    iput-object p4, p0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    .line 294
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    .line 298
    :cond_0
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    .line 300
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 302
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 308
    :try_start_0
    new-instance v3, Landroid/media/ToneGenerator;

    const/4 v4, 0x0

    const/16 v5, 0x50

    invoke-direct {v3, v4, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_1
    :goto_0
    iput-object p3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 318
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 319
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_2

    .line 320
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v3, v4, v8}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 326
    :cond_2
    new-instance v2, Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-direct {v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;-><init>(Landroid/content/Context;)V

    .line 327
    .local v2, "telephonyManagerEx":Lcom/mediatek/telephony/TelephonyManagerEx;
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v9, v6}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 332
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v9, v8}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 349
    new-instance v3, Lcom/mediatek/phone/BlackListManager;

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-direct {v3, v4}, Lcom/mediatek/phone/BlackListManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mBlackListManager:Lcom/mediatek/phone/BlackListManager;

    .line 350
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v3

    const/16 v4, 0x7d1

    invoke-virtual {v3, p0, v4, v7}, Lcom/mediatek/phone/SIMInfoWrapper;->registerForSimInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 354
    return-void

    .line 310
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v2    # "telephonyManagerEx":Lcom/mediatek/telephony/TelephonyManagerEx;
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "CallNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CallNotifier: Exception caught while creating mSignalInfoToneGenerator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    .line 263
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/CallNotifier;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallNotifier;->onMwiChanged(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallNotifier;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallNotifier;->onCfiChanged(ZI)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/phone/CallNotifier;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CallNotifier;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->sim2Mwi:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/CallNotifier;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private checkAndTriggerRingTone()V
    .locals 6

    .prologue
    .line 3591
    const-string v4, "checkAndTriggerRingTone"

    invoke-direct {p0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3592
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v4}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3593
    :cond_0
    const-string v4, "checkAndTriggerRingTone:  return directly"

    invoke-direct {p0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3620
    :cond_1
    :goto_0
    return-void

    .line 3596
    :cond_2
    const-string v4, "trigger the ringtone!"

    invoke-direct {p0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3597
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 3598
    .local v3, "ringCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3600
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3601
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_1

    .line 3604
    const/4 v1, 0x0

    .line 3605
    .local v1, "info":Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 3606
    .local v2, "obj":Ljava/lang/Object;
    instance-of v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v4, :cond_4

    .line 3607
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v2    # "obj":Ljava/lang/Object;
    iget-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 3612
    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v4, :cond_5

    .line 3613
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 3618
    :goto_2
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v4}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_0

    .line 3608
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v4, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v4, :cond_3

    move-object v1, v2

    .line 3609
    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1

    .line 3615
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_5
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    goto :goto_2
.end method

.method private closeVTManager()V
    .locals 3

    .prologue
    .line 3461
    const-string v0, "closeVTManager()!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3462
    const-string v0, "- call VTManager onDisconnected ! "

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3465
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->onDisconnected()V

    .line 3467
    const-string v0, "- finish call VTManager onDisconnected ! "

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3471
    const-string v0, "- set VTManager close ! "

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3473
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->setVTClose()V

    .line 3475
    const-string v0, "- finish set VTManager close ! "

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3478
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInControlRes:Z

    if-eqz v0, :cond_0

    .line 3479
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.phone.extra.VT_CALL_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    .line 3480
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInControlRes:Z

    .line 3482
    :cond_0
    return-void
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 10
    .param p1, "elapsedSeconds"    # J

    .prologue
    const-wide/16 v5, 0x3c

    .line 3489
    const-wide/16 v0, 0x0

    .line 3490
    .local v0, "minutes":J
    const-wide/16 v2, 0x0

    .line 3492
    .local v2, "seconds":J
    cmp-long v4, p1, v5

    if-ltz v4, :cond_0

    .line 3493
    div-long v0, p1, v5

    .line 3494
    mul-long v4, v0, v5

    sub-long/2addr p1, v4

    .line 3496
    :cond_0
    move-wide v2, p1

    .line 3498
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const v6, 0x7f0802eb

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const v6, 0x7f080099

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/phone/PhoneGlobals;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "callerInfo"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 3263
    const/4 v0, 0x0

    .line 3265
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3266
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3286
    :goto_0
    if-nez v0, :cond_4

    .line 3287
    const/4 v2, 0x0

    .line 3298
    :goto_1
    return-object v2

    .line 3273
    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3275
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 3277
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3279
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3282
    :cond_3
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 3289
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 3292
    .local v1, "presentation":I
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2, p2, v0, v1}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3294
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3295
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3297
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLogNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    move-object v2, v0

    .line 3298
    goto :goto_1
.end method

.method private ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z
    .locals 13
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 932
    sget-boolean v11, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v11, :cond_0

    .line 936
    const-string v10, "CallNotifier"

    const-string v11, "Got onNewRingingConnection() on non-voice-capable device! Ignoring..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :goto_0
    return v9

    .line 943
    :cond_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 944
    const-string v9, "Incoming call while in ECM: always allow..."

    invoke-direct {p0, v9}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    move v9, v10

    .line 945
    goto :goto_0

    .line 949
    :cond_1
    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v11}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "device_provisioned"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_2

    move v7, v9

    .line 951
    .local v7, "provisioned":Z
    :goto_1
    if-nez v7, :cond_3

    .line 952
    const-string v10, "CallNotifier"

    const-string v11, "Ignoring incoming call: not provisioned"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v7    # "provisioned":Z
    :cond_2
    move v7, v10

    .line 949
    goto :goto_1

    .line 957
    .restart local v7    # "provisioned":Z
    :cond_3
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 958
    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v11, v11, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v12, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v11, v12, :cond_4

    move v0, v9

    .line 960
    .local v0, "activateState":Z
    :goto_2
    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v11, v11, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v12, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v11, v12, :cond_5

    move v6, v9

    .line 962
    .local v6, "dialogState":Z
    :goto_3
    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v8, v11, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 964
    .local v8, "spcState":Z
    if-eqz v8, :cond_6

    .line 965
    const-string v10, "CallNotifier"

    const-string v11, "Ignoring incoming call: OTA call is active"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "activateState":Z
    .end local v6    # "dialogState":Z
    .end local v8    # "spcState":Z
    :cond_4
    move v0, v10

    .line 958
    goto :goto_2

    .restart local v0    # "activateState":Z
    :cond_5
    move v6, v10

    .line 960
    goto :goto_3

    .line 967
    .restart local v6    # "dialogState":Z
    .restart local v8    # "spcState":Z
    :cond_6
    if-nez v0, :cond_7

    if-eqz v6, :cond_9

    .line 972
    :cond_7
    if-eqz v6, :cond_8

    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->dismissOtaDialogs()V

    .line 973
    :cond_8
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->clearOtaState()V

    .line 974
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->clearInCallScreenMode()V

    move v9, v10

    .line 975
    goto :goto_0

    .line 983
    .end local v0    # "activateState":Z
    .end local v6    # "dialogState":Z
    .end local v8    # "spcState":Z
    :cond_9
    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 984
    .local v4, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 985
    .local v3, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v3, :cond_c

    .line 986
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 987
    .local v1, "address":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 988
    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mBlackListManager:Lcom/mediatek/phone/BlackListManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v12

    if-eqz v12, :cond_a

    move v10, v9

    :cond_a
    invoke-virtual {v11, v1, v10}, Lcom/mediatek/phone/BlackListManager;->shouldBlock(Ljava/lang/String;I)Z

    move-result v2

    .line 991
    .local v2, "bRejected":Z
    if-eqz v2, :cond_b

    .line 992
    const-string v10, "should reject by blacklist"

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 993
    new-instance v5, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v5}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 994
    .local v5, "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    iput-boolean v9, v5, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 995
    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .end local v5    # "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    :cond_b
    move v9, v2

    .line 997
    goto/16 :goto_0

    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "bRejected":Z
    :cond_c
    move v9, v10

    .line 1005
    goto/16 :goto_0
.end method

.method static init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogAsync;)Lcom/android/phone/CallNotifier;
    .locals 4
    .param p0, "app"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "ringer"    # Lcom/android/phone/Ringer;
    .param p3, "callLog"    # Lcom/android/phone/CallLogAsync;

    .prologue
    .line 275
    const-class v1, Lcom/android/phone/CallNotifier;

    monitor-enter v1

    .line 276
    :try_start_0
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lcom/android/phone/CallNotifier;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogAsync;)V

    sput-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    .line 281
    :goto_0
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    monitor-exit v1

    return-object v0

    .line 279
    :cond_0
    const-string v0, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initFakeCall(Lcom/android/internal/telephony/Connection;I)V
    .locals 2
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;
    .param p2, "simId"    # I

    .prologue
    .line 3566
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    new-instance v1, Lcom/android/phone/InCallUiState$FakeCall;

    invoke-direct {v1}, Lcom/android/phone/InCallUiState$FakeCall;-><init>()V

    iput-object v1, v0, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    .line 3567
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/InCallUiState$FakeCall;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 3569
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    iput p2, v0, Lcom/android/phone/InCallUiState$FakeCall;->slotId:I

    .line 3573
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/InCallUiState$FakeCall;->number:Ljava/lang/String;

    .line 3574
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    iput v1, v0, Lcom/android/phone/InCallUiState$FakeCall;->phoneType:I

    .line 3575
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 3345
    const-string v0, "CallNotifier"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    return-void
.end method

.method private onCdmaCallWaiting(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    const/16 v10, 0x17

    const/16 v9, 0x16

    const/4 v8, 0x0

    .line 2909
    invoke-virtual {p0, v9}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 2910
    invoke-virtual {p0, v10}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 2914
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v6, v7}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 2919
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2920
    const-string v6, "- showing incoming call (CDMA call waiting)..."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2921
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 2927
    :goto_0
    iput-boolean v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 2928
    const-wide/16 v6, 0x4e20

    invoke-virtual {p0, v9, v6, v7}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2932
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6, v8}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 2935
    const-wide/16 v6, 0x7530

    invoke-virtual {p0, v10, v6, v7}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2939
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 2940
    .local v0, "infoCW":Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 2941
    .local v1, "isPresent":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCdmaCallWaiting: isPresent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2942
    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    .line 2943
    iget v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 2944
    .local v5, "uSignalType":I
    iget v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 2945
    .local v3, "uAlertPitch":I
    iget v4, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 2946
    .local v4, "uSignal":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCdmaCallWaiting: uSignalType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uAlertPitch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uSignal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2949
    invoke-static {v5, v3, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v2

    .line 2953
    .local v2, "toneID":I
    new-instance v6, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v6, p0, v2}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 2955
    .end local v2    # "toneID":I
    .end local v3    # "uAlertPitch":I
    .end local v4    # "uSignal":I
    .end local v5    # "uSignalType":I
    :cond_0
    return-void

    .line 2923
    .end local v0    # "infoCW":Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    .end local v1    # "isPresent":I
    :cond_1
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_0
.end method

.method private onCdmaCallWaitingReject()V
    .locals 22

    .prologue
    .line 2976
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    .line 2979
    .local v18, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v20, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-ne v3, v0, :cond_3

    .line 2981
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v13

    .line 2983
    .local v13, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v13, :cond_2

    .line 2984
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v16

    .line 2985
    .local v16, "number":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v6

    .line 2986
    .local v6, "presentation":I
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v8

    .line 2987
    .local v8, "date":J
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v10

    .line 2988
    .local v10, "duration":J
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    if-eqz v3, :cond_4

    const/4 v7, 0x3

    .line 2992
    .local v7, "callLogType":I
    :goto_0
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v17

    .line 2994
    .local v17, "o":Ljava/lang/Object;
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    instance-of v3, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_5

    :cond_0
    move-object/from16 v4, v17

    .line 2995
    check-cast v4, Lcom/android/internal/telephony/CallerInfo;

    .line 3002
    .end local v17    # "o":Ljava/lang/Object;
    .local v4, "ci":Lcom/android/internal/telephony/CallerInfo;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0, v6}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 3004
    .local v5, "logNumber":Ljava/lang/String;
    if-eqz v4, :cond_6

    iget v15, v4, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 3005
    .local v15, "newPresentation":I
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "- onCdmaCallWaitingReject(): logNumber set to: "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", newPresentation value is: "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3008
    const/4 v2, 0x0

    .line 3012
    .local v2, "args":Lcom/android/phone/CallLogAsync$AddCallArgs;
    const/4 v12, 0x0

    .line 3013
    .local v12, "simIdEx":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneInterfaceManager;->hasIccCardGemini(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3014
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-static {v3, v0}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v19

    .line 3015
    .local v19, "si":Landroid/provider/Telephony$SIMInfo;
    if-eqz v19, :cond_1

    .line 3016
    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v12, v0

    .line 3020
    .end local v19    # "si":Landroid/provider/Telephony$SIMInfo;
    :cond_1
    new-instance v2, Lcom/android/phone/CallLogAsync$AddCallArgs;

    .end local v2    # "args":Lcom/android/phone/CallLogAsync$AddCallArgs;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-direct/range {v2 .. v12}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)V

    .line 3030
    .restart local v2    # "args":Lcom/android/phone/CallLogAsync$AddCallArgs;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v3, v2}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3037
    :goto_3
    const/4 v3, 0x3

    if-ne v7, v3, :cond_7

    .line 3039
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8, v9}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 3046
    :goto_4
    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 3050
    .end local v2    # "args":Lcom/android/phone/CallLogAsync$AddCallArgs;
    .end local v4    # "ci":Lcom/android/internal/telephony/CallerInfo;
    .end local v5    # "logNumber":Ljava/lang/String;
    .end local v6    # "presentation":I
    .end local v7    # "callLogType":I
    .end local v8    # "date":J
    .end local v10    # "duration":J
    .end local v12    # "simIdEx":I
    .end local v15    # "newPresentation":I
    .end local v16    # "number":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 3052
    .end local v13    # "c":Lcom/android/internal/telephony/Connection;
    :cond_3
    return-void

    .line 2988
    .restart local v6    # "presentation":I
    .restart local v8    # "date":J
    .restart local v10    # "duration":J
    .restart local v13    # "c":Lcom/android/internal/telephony/Connection;
    .restart local v16    # "number":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2997
    .restart local v7    # "callLogType":I
    .restart local v17    # "o":Ljava/lang/Object;
    :cond_5
    check-cast v17, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v17    # "o":Ljava/lang/Object;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .restart local v4    # "ci":Lcom/android/internal/telephony/CallerInfo;
    goto/16 :goto_1

    .restart local v5    # "logNumber":Ljava/lang/String;
    :cond_6
    move v15, v6

    .line 3004
    goto :goto_2

    .line 3031
    .restart local v2    # "args":Lcom/android/phone/CallLogAsync$AddCallArgs;
    .restart local v12    # "simIdEx":I
    .restart local v15    # "newPresentation":I
    :catch_0
    move-exception v14

    .line 3033
    .local v14, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "CallNotifier"

    const-string v20, "Error!! - onDisconnect() Disk Full!"

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto :goto_3

    .line 3042
    .end local v14    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :cond_7
    const/16 v3, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    goto :goto_4
.end method

.method private onCfiChanged(ZI)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "simId"    # I

    .prologue
    .line 2457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCfiChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "simId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2458
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/NotificationMgr;->updateCfi(ZI)V

    .line 2459
    return-void
.end method

.method private onCustomRingQueryComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1109
    const/4 v0, 0x0

    .line 1110
    .local v0, "isQueryExecutionTimeExpired":Z
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 1111
    :try_start_0
    iget v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 1112
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 1113
    const/4 v0, 0x1

    .line 1115
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1116
    if-eqz v0, :cond_1

    .line 1119
    const-string v1, "CallNotifier"

    const-string v2, "CallerInfo query took too long; falling back to default ringtone"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const v1, 0x112a0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1135
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_2

    .line 1136
    const-string v1, "CallNotifier"

    const-string v2, "onCustomRingQueryComplete: No incoming call! Bailing out..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :goto_0
    return-void

    .line 1115
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1144
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1146
    :cond_3
    const-string v1, "RINGING... (onCustomRingQueryComplete)"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1147
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->ring()V

    .line 1151
    :cond_4
    const-string v1, "- showing incoming call (custom ring query complete)..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1159
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_0
.end method

.method private onCustomRingtoneQueryTimeout(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1862
    const-string v1, "CallNotifier"

    const-string v2, "CallerInfo query took too long; look up local fallback cache."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    invoke-virtual {v1, p1}, Lcom/android/phone/CallerInfoCache;->getCacheEntry(Ljava/lang/String;)Lcom/android/phone/CallerInfoCache$CacheEntry;

    move-result-object v0

    .line 1869
    .local v0, "entry":Lcom/android/phone/CallerInfoCache$CacheEntry;
    if-eqz v0, :cond_2

    .line 1870
    iget-boolean v1, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->sendToVoicemail:Z

    if-eqz v1, :cond_0

    .line 1871
    const-string v1, "send to voicemail flag detected (in fallback cache). hanging up."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1872
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 1890
    :goto_0
    return-void

    .line 1876
    :cond_0
    iget-object v1, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom ringtone found (in fallback cache), setting up ringer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1879
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v2, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1889
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto :goto_0

    .line 1886
    :cond_2
    const-string v1, "Failed to find fallback cache. Use default ringer tone."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onDisconnect(Landroid/os/AsyncResult;I)V
    .locals 45
    .param p1, "r"    # Landroid/os/AsyncResult;
    .param p2, "simId"    # I

    .prologue
    .line 1902
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDisconnect()...  CallManager state: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ", sim id "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1904
    const/16 v35, 0x0

    .line 1905
    .local v35, "isSipCall":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v42

    .line 1907
    .local v42, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v42

    if-ne v0, v4, :cond_17

    .line 1908
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 1915
    :cond_0
    :goto_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/phone/CallNotifier;->ok2Ring:Z

    .line 1917
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 1918
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/Connection;

    .line 1919
    .local v28, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v28, :cond_18

    .line 1920
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDisconnect: cause = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ", incoming = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ", date = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ", number = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1927
    :goto_1
    const/16 v24, 0x0

    .line 1928
    .local v24, "autoretrySetting":I
    if-eqz v28, :cond_1

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v14, 0x2

    if-ne v4, v14, :cond_1

    .line 1929
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v14, "call_auto_retry"

    const/4 v15, 0x0

    invoke-static {v4, v14, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    .line 1934
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1936
    if-eqz v28, :cond_2

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v14, 0x2

    if-ne v4, v14, :cond_2

    .line 1938
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->resetCdmaPhoneCallState()V

    .line 1941
    const/16 v4, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1942
    const/16 v4, 0x17

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1946
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v4, v4, Lcom/android/phone/InCallUiState;->delayFinished:Z

    if-eqz v4, :cond_19

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v42

    if-ne v0, v4, :cond_19

    .line 1947
    const-string v4, "Meet the case to cache the disconnect call information!!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1948
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    const/4 v14, 0x0

    iput-boolean v14, v4, Lcom/android/phone/InCallUiState;->delayFinished:Z

    .line 1949
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    new-instance v14, Lcom/android/phone/InCallUiState$FakeCall;

    invoke-direct {v14}, Lcom/android/phone/InCallUiState$FakeCall;-><init>()V

    iput-object v14, v4, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    .line 1950
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v14

    iput-object v14, v4, Lcom/android/phone/InCallUiState$FakeCall;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 1952
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    move/from16 v0, p2

    iput v0, v4, Lcom/android/phone/InCallUiState$FakeCall;->slotId:I

    .line 1956
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    move-object/from16 v0, v28

    iput-object v0, v4, Lcom/android/phone/InCallUiState$FakeCall;->conn:Lcom/android/internal/telephony/Connection;

    .line 1957
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lcom/android/phone/InCallUiState$FakeCall;->number:Ljava/lang/String;

    .line 1958
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v14

    iput v14, v4, Lcom/android/phone/InCallUiState$FakeCall;->phoneType:I

    .line 1965
    :goto_2
    if-eqz v28, :cond_3

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v14, 0x3

    if-ne v4, v14, :cond_3

    .line 1966
    const/16 v35, 0x1

    .line 2013
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v40

    .line 2014
    .local v40, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v14, 0x2

    if-ne v4, v14, :cond_1b

    .line 2015
    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2018
    const-string v4, "cancelCallInProgressNotifications()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2019
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 2034
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v4, :cond_5

    .line 2035
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 2036
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 2040
    :cond_5
    if-eqz v28, :cond_6

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2041
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v36

    .line 2042
    .local v36, "number":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-interface {v4, v0}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2043
    const-string v4, "onDisconnect: this was an OTASP call!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2044
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->handleOtaspDisconnect()V

    .line 2050
    .end local v36    # "number":Ljava/lang/String;
    :cond_6
    const/16 v43, 0x0

    .line 2053
    .local v43, "toneToPlay":I
    if-eqz v28, :cond_7

    .line 2054
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v29

    .line 2055
    .local v29, "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_1c

    .line 2056
    const-string v4, "- need to play BUSY tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2057
    const/16 v43, 0x2

    .line 2131
    .end local v29    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_7
    :goto_4
    if-nez v43, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v14, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v14, :cond_9

    if-eqz v28, :cond_9

    .line 2134
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v29

    .line 2135
    .restart local v29    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v4, :cond_8

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_9

    .line 2137
    :cond_8
    const-string v4, "- need to play CALL_ENDED tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2138
    const/16 v43, 0x4

    .line 2139
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 2144
    .end local v29    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v31

    .line 2145
    .local v31, "fg":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    .line 2146
    .local v27, "bg":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v26

    .line 2147
    .local v26, "bFg":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v25

    .line 2148
    .local v25, "bBg":Lcom/android/internal/telephony/Call;
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v42

    if-ne v0, v4, :cond_a

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2151
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 2152
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 2160
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v14, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v14, :cond_c

    .line 2163
    if-nez v43, :cond_b

    .line 2164
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 2167
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 2183
    :cond_c
    if-eqz v28, :cond_16

    .line 2184
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v36

    .line 2185
    .restart local v36    # "number":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v9

    .line 2194
    .local v9, "date":J
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v11

    .line 2195
    .local v11, "duration":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDisconnect: number = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ", duration = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2202
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v4

    if-nez v4, :cond_d

    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x3e8

    div-long v18, v11, v18

    cmp-long v4, v14, v18

    if-eqz v4, :cond_d

    .line 2203
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-wide/16 v14, 0x3e8

    div-long v14, v11, v14

    long-to-int v14, v14

    int-to-long v14, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/phone/CallNotifier;->formatDuration(J)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v4, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2210
    :cond_d
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v29

    .line 2211
    .restart local v29    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v39

    .line 2212
    .local v39, "phone":Lcom/android/internal/telephony/Phone;
    const/16 v44, 0x0

    .line 2220
    .local v44, "vtCall":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v0, v36

    invoke-static {v0, v4}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v33

    .line 2223
    .local v33, "isEmergencyNumber":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDisconnect isShouldSendtoVoicemail flag:"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneUtils;->getShouldSendToVoiceMailFlag(Lcom/android/internal/telephony/Connection;)Z

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2228
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 2229
    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneUtils;->getShouldSendToVoiceMailFlag(Lcom/android/internal/telephony/Connection;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v8, 0x5

    .line 2235
    .local v8, "callLogType":I
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDisconnect callLogType:"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "- callLogType: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ", UserData: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2241
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v5

    .line 2242
    .local v5, "ci":Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v6

    .line 2244
    .local v6, "logNumber":Ljava/lang/String;
    const-string v4, "- onDisconnect(): logNumber set to: xxxxxxx"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2251
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Lcom/android/phone/CallNotifier;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v7

    .line 2253
    .local v7, "presentation":I
    invoke-interface/range {v39 .. v39}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v14, 0x2

    if-ne v4, v14, :cond_e

    .line 2254
    if-eqz v33, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v4, :cond_e

    .line 2256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v4, :cond_e

    .line 2257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    # invokes: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v4}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$500(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 2266
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v14, 0x7f0c000d

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v37

    .line 2271
    .local v37, "okToLogEmergencyNumber":Z
    invoke-static/range {v39 .. v39}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_2e

    move-object/from16 v0, v39

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const/16 v34, 0x1

    .line 2276
    .local v34, "isOtaspNumber":Z
    :goto_6
    if-eqz v33, :cond_f

    if-eqz v37, :cond_2f

    :cond_f
    if-nez v34, :cond_2f

    const/16 v38, 0x1

    .line 2280
    .local v38, "okToLogThisCall":Z
    :goto_7
    if-eqz v38, :cond_12

    .line 2282
    const/4 v13, 0x0

    .line 2283
    .local v13, "simIdEx":I
    if-ltz p2, :cond_10

    if-eqz v35, :cond_32

    .line 2285
    :cond_10
    if-eqz v35, :cond_30

    .line 2286
    const/4 v13, -0x2

    .line 2304
    :cond_11
    :goto_8
    new-instance v3, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-direct/range {v3 .. v13}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)V

    .line 2330
    .local v3, "args":Lcom/android/phone/CallLogAsync$AddCallArgs;
    :goto_9
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v4, v3}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2339
    :goto_a
    if-nez v33, :cond_12

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v4

    if-nez v4, :cond_12

    if-nez v35, :cond_12

    const-wide/16 v14, 0x2710

    cmp-long v4, v11, v14

    if-ltz v4, :cond_12

    .line 2341
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/calloption/CallOptionUtils;->getCurrentCountryISO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 2343
    .local v17, "countryISO":Ljava/lang/String;
    :try_start_1
    new-instance v4, Lcom/mediatek/phone/provider/CallHistoryAsync;

    invoke-direct {v4}, Lcom/mediatek/phone/provider/CallHistoryAsync;-><init>()V

    new-instance v14, Lcom/mediatek/phone/provider/CallHistoryAsync$AddCallArgs;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v15

    const/16 v21, 0x1

    move-object/from16 v16, v6

    move-wide/from16 v18, v9

    move/from16 v20, p2

    invoke-direct/range {v14 .. v21}, Lcom/mediatek/phone/provider/CallHistoryAsync$AddCallArgs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIZ)V

    invoke-virtual {v4, v14}, Lcom/mediatek/phone/provider/CallHistoryAsync;->addCall(Lcom/mediatek/phone/provider/CallHistoryAsync$AddCallArgs;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2354
    .end local v3    # "args":Lcom/android/phone/CallLogAsync$AddCallArgs;
    .end local v13    # "simIdEx":I
    .end local v17    # "countryISO":Ljava/lang/String;
    :cond_12
    :goto_b
    const/4 v4, 0x3

    if-ne v8, v4, :cond_13

    .line 2358
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v9, v10}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 2365
    :cond_13
    if-eqz v43, :cond_14

    .line 2366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "- starting post-disconnect tone ("

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ")..."

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2367
    new-instance v4, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v4, v0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/phone/CallNotifier;->mToneThread:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 2368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mToneThread:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 2380
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v14, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v14, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v14, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v14, :cond_16

    :cond_15
    if-nez v33, :cond_16

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v4, :cond_16

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v4, :cond_16

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v4, :cond_16

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v4, :cond_16

    .line 2387
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-nez v4, :cond_35

    .line 2388
    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_34

    .line 2391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, v39

    move-object/from16 v20, v36

    invoke-static/range {v18 .. v23}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    .line 2392
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 2401
    .end local v5    # "ci":Lcom/android/internal/telephony/CallerInfo;
    .end local v6    # "logNumber":Ljava/lang/String;
    .end local v7    # "presentation":I
    .end local v8    # "callLogType":I
    .end local v9    # "date":J
    .end local v11    # "duration":J
    .end local v29    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v33    # "isEmergencyNumber":Z
    .end local v34    # "isOtaspNumber":Z
    .end local v36    # "number":Ljava/lang/String;
    .end local v37    # "okToLogEmergencyNumber":Z
    .end local v38    # "okToLogThisCall":Z
    .end local v39    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v44    # "vtCall":I
    :cond_16
    :goto_c
    return-void

    .line 1909
    .end local v24    # "autoretrySetting":I
    .end local v25    # "bBg":Lcom/android/internal/telephony/Call;
    .end local v26    # "bFg":Lcom/android/internal/telephony/Call;
    .end local v27    # "bg":Lcom/android/internal/telephony/Call;
    .end local v28    # "c":Lcom/android/internal/telephony/Connection;
    .end local v31    # "fg":Lcom/android/internal/telephony/Call;
    .end local v40    # "ringingCall":Lcom/android/internal/telephony/Call;
    .end local v43    # "toneToPlay":I
    :cond_17
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v42

    if-ne v0, v4, :cond_0

    .line 1910
    const-string v4, "state == PhoneConstants.State.RINGING"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1911
    const/16 v4, 0x2a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1912
    const/16 v4, 0x2a

    const-wide/16 v14, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v15}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1924
    .restart local v28    # "c":Lcom/android/internal/telephony/Connection;
    :cond_18
    const-string v4, "CallNotifier"

    const-string v14, "onDisconnect: null connection"

    invoke-static {v4, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1960
    .restart local v24    # "autoretrySetting":I
    :cond_19
    const-string v4, "Don\'t meet the case clear disconnect call information!!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1961
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    const/4 v14, 0x0

    iput-object v14, v4, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    goto/16 :goto_2

    .line 2021
    .restart local v40    # "ringingCall":Lcom/android/internal/telephony/Call;
    :cond_1a
    const-string v4, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2022
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v4}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_3

    .line 2025
    :cond_1b
    const-string v4, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2026
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v4}, Lcom/android/phone/Ringer;->stopRing()V

    .line 2027
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v42

    if-ne v0, v4, :cond_4

    .line 2029
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/phone/CallNotifier;->switchRingToneByNeeded(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_3

    .line 2058
    .restart local v29    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v43    # "toneToPlay":I
    :cond_1c
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v4, :cond_1d

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v4, :cond_1d

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_CIRCUIT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_1e

    .line 2061
    :cond_1d
    const-string v4, "- need to play CONGESTION tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2062
    const/16 v43, 0x3

    goto/16 :goto_4

    .line 2063
    :cond_1e
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v4, :cond_1f

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_20

    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->isOtaCallInActiveState()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2066
    const-string v4, "- need to play OTA_CALL_END tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2067
    const/16 v43, 0xb

    goto/16 :goto_4

    .line 2068
    :cond_20
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_21

    .line 2069
    const-string v4, "- need to play CDMA_REORDER tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2070
    const/16 v43, 0x6

    goto/16 :goto_4

    .line 2071
    :cond_21
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_22

    .line 2072
    const-string v4, "- need to play CDMA_INTERCEPT tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2073
    const/16 v43, 0x7

    goto/16 :goto_4

    .line 2074
    :cond_22
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_23

    .line 2075
    const-string v4, "- need to play CDMA_DROP tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2076
    const/16 v43, 0x8

    goto/16 :goto_4

    .line 2077
    :cond_23
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_24

    .line 2078
    const-string v4, "- need to play OUT OF SERVICE tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2079
    const/16 v43, 0x9

    goto/16 :goto_4

    .line 2080
    :cond_24
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v4, :cond_25

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER_FORMAT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v4, :cond_25

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_27

    .line 2084
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v4

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 2087
    const-string v4, "display incallscreen again!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2088
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier;->initFakeCall(Lcom/android/internal/telephony/Connection;I)V

    .line 2089
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lcom/android/phone/PhoneGlobals;->displayCallScreen(Z)V

    .line 2092
    :cond_26
    const-string v4, "- need to play TONE_UNOBTAINABLE_NUMBER tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2093
    const/16 v43, 0xd

    goto/16 :goto_4

    .line 2094
    :cond_27
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_28

    .line 2095
    const-string v4, "- DisconnectCause is ERROR_UNSPECIFIED: play TONE_CALL_ENDED!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2096
    const/16 v43, 0x4

    goto/16 :goto_4

    .line 2097
    :cond_28
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_7

    .line 2104
    const-string v4, "cause is FDN_BLOCKED"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2106
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v14, Lcom/android/phone/Constants$CallStatusCode;->FDN_BLOCKED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v4, v14}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 2108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v4

    if-eqz v4, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 2111
    const-string v4, "display incallscreen again!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2112
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier;->initFakeCall(Lcom/android/internal/telephony/Connection;I)V

    .line 2113
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lcom/android/phone/PhoneGlobals;->displayCallScreen(Z)V

    goto/16 :goto_4

    .line 2114
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v4

    if-eqz v4, :cond_2a

    .line 2116
    const-string v4, "incall screen not null, do nothing.!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2119
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lcom/android/phone/PhoneGlobals;->displayCallScreen(Z)V

    goto/16 :goto_4

    .line 2229
    .restart local v9    # "date":J
    .restart local v11    # "duration":J
    .restart local v25    # "bBg":Lcom/android/internal/telephony/Call;
    .restart local v26    # "bFg":Lcom/android/internal/telephony/Call;
    .restart local v27    # "bg":Lcom/android/internal/telephony/Call;
    .restart local v31    # "fg":Lcom/android/internal/telephony/Call;
    .restart local v33    # "isEmergencyNumber":Z
    .restart local v36    # "number":Ljava/lang/String;
    .restart local v39    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v44    # "vtCall":I
    :cond_2b
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_2c

    const/4 v8, 0x3

    goto/16 :goto_5

    :cond_2c
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 2233
    :cond_2d
    const/4 v8, 0x2

    .restart local v8    # "callLogType":I
    goto/16 :goto_5

    .line 2271
    .restart local v5    # "ci":Lcom/android/internal/telephony/CallerInfo;
    .restart local v6    # "logNumber":Ljava/lang/String;
    .restart local v7    # "presentation":I
    .restart local v37    # "okToLogEmergencyNumber":Z
    :cond_2e
    const/16 v34, 0x0

    goto/16 :goto_6

    .line 2276
    .restart local v34    # "isOtaspNumber":Z
    :cond_2f
    const/16 v38, 0x0

    goto/16 :goto_7

    .line 2288
    .restart local v13    # "simIdEx":I
    .restart local v38    # "okToLogThisCall":Z
    :cond_30
    const/4 v13, 0x0

    .line 2289
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager;->hasIccCard()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2290
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v4

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v32

    .line 2291
    .local v32, "info":Landroid/provider/Telephony$SIMInfo;
    if-eqz v32, :cond_31

    .line 2292
    move-object/from16 v0, v32

    iget-wide v14, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    long-to-int v13, v14

    goto/16 :goto_8

    .line 2295
    :cond_31
    const/4 v13, 0x1

    goto/16 :goto_8

    .line 2311
    .end local v32    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_32
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/phone/PhoneInterfaceManager;->hasIccCardGemini(I)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 2312
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    move/from16 v0, p2

    invoke-static {v4, v0}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v41

    .line 2313
    .local v41, "si":Landroid/provider/Telephony$SIMInfo;
    if-eqz v41, :cond_33

    .line 2314
    move-object/from16 v0, v41

    iget-wide v14, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    long-to-int v13, v14

    .line 2323
    .end local v41    # "si":Landroid/provider/Telephony$SIMInfo;
    :cond_33
    new-instance v3, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-direct/range {v3 .. v13}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)V

    .restart local v3    # "args":Lcom/android/phone/CallLogAsync$AddCallArgs;
    goto/16 :goto_9

    .line 2331
    :catch_0
    move-exception v30

    .line 2333
    .local v30, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v4, "CallNotifier"

    const-string v14, "Error!! - onDisconnect() Disk Full!"

    invoke-static {v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    invoke-virtual/range {v30 .. v30}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto/16 :goto_a

    .line 2345
    .end local v30    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    .restart local v17    # "countryISO":Ljava/lang/String;
    :catch_1
    move-exception v30

    .line 2347
    .restart local v30    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v4, "CallNotifier"

    const-string v14, "Error!! - onDisconnect() Disk Full!"

    invoke-static {v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    invoke-virtual/range {v30 .. v30}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto/16 :goto_b

    .line 2394
    .end local v3    # "args":Lcom/android/phone/CallLogAsync$AddCallArgs;
    .end local v13    # "simIdEx":I
    .end local v17    # "countryISO":Ljava/lang/String;
    .end local v30    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :cond_34
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_c

    .line 2397
    :cond_35
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_c
.end method

.method private onDisconnectForVTWaiting(Landroid/os/AsyncResult;I)V
    .locals 29
    .param p1, "r"    # Landroid/os/AsyncResult;
    .param p2, "simId"    # I

    .prologue
    .line 3367
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDisconnectForVTWaiting()... , sim id : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3369
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/telephony/Connection;

    .line 3371
    .local v16, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v16, :cond_4

    .line 3373
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v24

    .line 3374
    .local v24, "number":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v10

    .line 3375
    .local v10, "date":J
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v12

    .line 3376
    .local v12, "duration":J
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v18

    .line 3377
    .local v18, "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v25

    .line 3379
    .local v25, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v9, 0x3

    if-ne v5, v9, :cond_5

    const/16 v22, 0x1

    .line 3382
    .local v22, "isSipCall":Z
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3383
    const/4 v15, 0x1

    .line 3388
    .local v15, "vtCall":I
    :goto_1
    const/16 v17, 0x3

    .line 3390
    .local v17, "callLogType":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v6

    .line 3391
    .local v6, "ci":Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v7

    .line 3392
    .local v7, "logNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Lcom/android/phone/CallNotifier;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v8

    .line 3395
    .local v8, "presentation":I
    if-ltz p2, :cond_0

    if-eqz v22, :cond_8

    .line 3397
    :cond_0
    if-eqz v22, :cond_7

    .line 3398
    const/4 v14, -0x2

    .line 3406
    .local v14, "simIdEx":I
    :cond_1
    :goto_2
    new-instance v4, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v9, 0x3

    invoke-direct/range {v4 .. v15}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJII)V

    .line 3426
    .local v4, "args":Lcom/android/phone/CallLogAsync$AddCallArgs;
    :goto_3
    if-nez v22, :cond_3

    .line 3427
    const-wide/16 v19, 0xbb8

    .line 3428
    .local v19, "delayMillis":J
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v23

    .line 3429
    .local v23, "message":Landroid/os/Message;
    const/16 v5, 0x12

    move-object/from16 v0, v23

    iput v5, v0, Landroid/os/Message;->what:I

    .line 3430
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier;->mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v5, :cond_2

    .line 3431
    new-instance v5, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v9}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/phone/CallNotifier;->mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 3432
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier;->mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 3435
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3436
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3437
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v9, 0x7f080097

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-static {v5, v9, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 3447
    .end local v19    # "delayMillis":J
    .end local v23    # "message":Landroid/os/Message;
    :cond_3
    :goto_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v5, v4}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3453
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v10, v11}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 3456
    .end local v4    # "args":Lcom/android/phone/CallLogAsync$AddCallArgs;
    .end local v6    # "ci":Lcom/android/internal/telephony/CallerInfo;
    .end local v7    # "logNumber":Ljava/lang/String;
    .end local v8    # "presentation":I
    .end local v10    # "date":J
    .end local v12    # "duration":J
    .end local v14    # "simIdEx":I
    .end local v15    # "vtCall":I
    .end local v17    # "callLogType":I
    .end local v18    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v22    # "isSipCall":Z
    .end local v24    # "number":Ljava/lang/String;
    .end local v25    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_4
    return-void

    .line 3379
    .restart local v10    # "date":J
    .restart local v12    # "duration":J
    .restart local v18    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v24    # "number":Ljava/lang/String;
    .restart local v25    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 3385
    .restart local v22    # "isSipCall":Z
    :cond_6
    const/4 v15, 0x0

    .restart local v15    # "vtCall":I
    goto/16 :goto_1

    .line 3400
    .restart local v6    # "ci":Lcom/android/internal/telephony/CallerInfo;
    .restart local v7    # "logNumber":Ljava/lang/String;
    .restart local v8    # "presentation":I
    .restart local v17    # "callLogType":I
    :cond_7
    const/4 v14, 0x0

    .line 3401
    .restart local v14    # "simIdEx":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v5}, Lcom/android/phone/PhoneInterfaceManager;->hasIccCard()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3402
    const/4 v14, 0x1

    goto :goto_2

    .line 3412
    .end local v14    # "simIdEx":I
    :cond_8
    const/4 v14, 0x0

    .line 3413
    .restart local v14    # "simIdEx":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/phone/PhoneInterfaceManager;->hasIccCardGemini(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3414
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    move/from16 v0, p2

    invoke-static {v5, v0}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v26

    .line 3416
    .local v26, "si":Landroid/provider/Telephony$SIMInfo;
    if-eqz v26, :cond_9

    .line 3417
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    long-to-int v14, v0

    .line 3421
    .end local v26    # "si":Landroid/provider/Telephony$SIMInfo;
    :cond_9
    new-instance v4, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v9, 0x3

    invoke-direct/range {v4 .. v15}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJII)V

    .restart local v4    # "args":Lcom/android/phone/CallLogAsync$AddCallArgs;
    goto/16 :goto_3

    .line 3440
    .restart local v19    # "delayMillis":J
    .restart local v23    # "message":Landroid/os/Message;
    :cond_a
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v9, 0x7f080098

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-static {v5, v9, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 3448
    .end local v19    # "delayMillis":J
    .end local v23    # "message":Landroid/os/Message;
    :catch_0
    move-exception v21

    .line 3450
    .local v21, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v5, "CallNotifier"

    const-string v9, "Error!! - onDisconnect() Disk Full!"

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3451
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto :goto_5
.end method

.method private onDisplayInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 2812
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    move-object v1, v2

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    .line 2814
    .local v1, "displayInfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;
    if-eqz v1, :cond_0

    .line 2815
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->alpha:Ljava/lang/String;

    .line 2816
    .local v0, "displayInfo":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisplayInfo: displayInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2817
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2, v0}, Lcom/android/phone/CdmaDisplayInfo;->displayInfoRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 2820
    const/16 v2, 0x18

    const-wide/16 v3, 0x7d0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2823
    .end local v0    # "displayInfo":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private onMwiChanged(ZI)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "simId"    # I

    .prologue
    .line 2423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMwiChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "simid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2427
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v0, :cond_0

    .line 2433
    const-string v0, "CallNotifier"

    const-string v1, "Got onMwiChanged() on non-voice-capable device! Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    :goto_0
    return-void

    .line 2437
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/NotificationMgr;->updateMwi(ZI)V

    goto :goto_0
.end method

.method private onNewRingingConnection(Landroid/os/AsyncResult;I)V
    .locals 9
    .param p1, "r"    # Landroid/os/AsyncResult;
    .param p2, "msgId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 714
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 715
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNewRingingConnection(): state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", conn = { "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " }"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 716
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 717
    .local v3, "ringing":Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 719
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    iput-boolean v7, p0, Lcom/android/phone/CallNotifier;->ok2Ring:Z

    .line 721
    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 726
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 727
    iput-boolean v8, p0, Lcom/android/phone/CallNotifier;->ok2Ring:Z

    .line 860
    :goto_0
    return-void

    .line 731
    :cond_0
    if-nez v0, :cond_1

    .line 732
    const-string v5, "CallNotifier"

    const-string v6, "CallNotifier.onNewRingingConnection(): null connection!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 737
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v5

    if-nez v5, :cond_2

    .line 738
    const-string v5, "CallNotifier"

    const-string v6, "CallNotifier.onNewRingingConnection(): connection not ringing!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 747
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 748
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    if-nez v5, :cond_3

    .line 749
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    .line 753
    :cond_3
    if-eqz v3, :cond_5

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v5, v3}, Lcom/mediatek/phone/DualTalkUtils;->isAllowedIncomingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 754
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/phone/DualTalkUtils;->switchPhoneByNeededForRing(Lcom/android/internal/telephony/Phone;)V

    .line 766
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 768
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 770
    .local v4, "state":Lcom/android/internal/telephony/Call$State;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- connection is ringing!  state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 804
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 805
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 806
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    .line 859
    :goto_1
    const-string v5, "- onNewRingingConnection() done."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 757
    .end local v4    # "state":Lcom/android/internal/telephony/Call$State;
    :cond_5
    :try_start_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 758
    :catch_0
    move-exception v1

    .line 759
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 808
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    .restart local v4    # "state":Lcom/android/internal/telephony/Call$State;
    :cond_6
    const-string v5, "- starting call waiting tone..."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 809
    sput-boolean v8, Lcom/android/phone/CallNotifier;->mIsWaitingQueryComplete:Z

    .line 810
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v5, :cond_7

    .line 811
    new-instance v5, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v5, p0, v7}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 812
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 814
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    goto :goto_1
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 1234
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    .line 1235
    .local v6, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPhoneStateChanged: state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1237
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1238
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    if-nez v8, :cond_0

    .line 1239
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    .line 1241
    :cond_0
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v8}, Lcom/mediatek/phone/DualTalkUtils;->updateState()V

    .line 1244
    :cond_1
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mVibrator:Landroid/os/Vibrator;

    if-nez v8, :cond_2

    .line 1245
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "vibrator"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mVibrator:Landroid/os/Vibrator;

    .line 1253
    :cond_2
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v9, v8, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v8, :cond_11

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v9, v8}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNotificationAlerts(Z)V

    .line 1256
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 1257
    .local v4, "fgPhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 1258
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_3

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_5

    .line 1261
    :cond_3
    iget-boolean v8, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-eqz v8, :cond_4

    .line 1262
    const/16 v7, 0xa

    .line 1263
    .local v7, "toneToPlay":I
    new-instance v8, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v8, p0, v7}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1266
    .end local v7    # "toneToPlay":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1268
    :cond_5
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    .line 1275
    :cond_6
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8, v6}, Lcom/android/phone/PhoneGlobals;->updatePhoneState(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1282
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/phone/PhoneGlobals;->updateBluetoothIndication(Z)V

    .line 1284
    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v8, :cond_13

    .line 1286
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v8, :cond_7

    .line 1287
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1288
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1291
    :cond_7
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 1292
    const-string v8, "onPhoneStateChanged: OFF HOOK"

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1299
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 1303
    .local v3, "callState":Lcom/android/internal/telephony/Call$State;
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getMode()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_12

    .line 1304
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1311
    :cond_8
    :goto_1
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v8

    if-nez v8, :cond_9

    .line 1312
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget-object v9, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v8, v9}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 1321
    :cond_9
    const-string v8, "stopRing()... (OFFHOOK state)"

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1322
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v8}, Lcom/android/phone/Ringer;->stopRing()V

    .line 1337
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 1338
    .local v5, "pm":Landroid/os/PowerManager;
    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1339
    const-string v8, "- posting UPDATE_IN_CALL_NOTIFICATION request..."

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1341
    const/16 v8, 0x1b

    invoke-virtual {p0, v8}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1342
    const/16 v0, 0x3e8

    .line 1343
    .local v0, "IN_CALL_NOTIFICATION_UPDATE_DELAY":I
    const/16 v8, 0x1b

    const-wide/16 v9, 0x3e8

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 1357
    .end local v0    # "IN_CALL_NOTIFICATION_UPDATE_DELAY":I
    .end local v3    # "callState":Lcom/android/internal/telephony/Call$State;
    .end local v5    # "pm":Landroid/os/PowerManager;
    :cond_a
    :goto_2
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_d

    .line 1358
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 1359
    .local v2, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8, v9}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1361
    const-string v8, "onPhoneStateChanged: it is an emergency call."

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1362
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 1363
    .restart local v3    # "callState":Lcom/android/internal/telephony/Call$State;
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-nez v8, :cond_b

    .line 1364
    new-instance v8, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    invoke-direct {v8, p0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    .line 1367
    :cond_b
    sget-object v8, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v8, :cond_c

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v8, :cond_15

    .line 1368
    :cond_c
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "emergency_tone"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    .line 1371
    iget v8, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    if-eqz v8, :cond_d

    iget v8, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-nez v8, :cond_d

    .line 1373
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v8, :cond_d

    .line 1374
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    # invokes: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->start()V
    invoke-static {v8}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$400(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 1387
    .end local v2    # "c":Lcom/android/internal/telephony/Connection;
    .end local v3    # "callState":Lcom/android/internal/telephony/Call$State;
    :cond_d
    :goto_3
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_e

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_f

    .line 1389
    :cond_e
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 1390
    .restart local v3    # "callState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v8

    if-nez v8, :cond_f

    .line 1393
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v8, :cond_f

    .line 1394
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1395
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1401
    .end local v3    # "callState":Lcom/android/internal/telephony/Call$State;
    :cond_f
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_10

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_10

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_10

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_10

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_10

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_10

    .line 1407
    const-string v8, "CallNotifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPhoneStateChanged mCM.getActiveFgCallState()= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const-string v8, "CallNotifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPhoneStateChanged mPreviousCallState= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    const/16 v1, 0x12c

    .line 1410
    .local v1, "MO_CALL_VIBRATE_TIME":I
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v9, 0x12c

    invoke-virtual {v8, v9, v10}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1412
    .end local v1    # "MO_CALL_VIBRATE_TIME":I
    :cond_10
    const-string v8, "CallNotifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "before set value, mPreviousCallState= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    .line 1414
    const-string v8, "CallNotifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "end after set value, mPreviousCallState= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    return-void

    .line 1253
    .end local v4    # "fgPhone":Lcom/android/internal/telephony/Phone;
    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1305
    .restart local v3    # "callState":Lcom/android/internal/telephony/Call$State;
    .restart local v4    # "fgPhone":Lcom/android/internal/telephony/Phone;
    :cond_12
    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v8, :cond_8

    const-string v8, "TTY"

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1306
    invoke-static {}, Lcom/android/phone/PhoneUtils;->openTTY()V

    goto/16 :goto_1

    .line 1346
    .end local v3    # "callState":Lcom/android/internal/telephony/Call$State;
    :cond_13
    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v8, :cond_a

    .line 1348
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v8

    if-nez v8, :cond_14

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1349
    :cond_14
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v8, :cond_a

    .line 1350
    new-instance v8, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/4 v9, 0x1

    invoke-direct {v8, p0, v9}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1351
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1352
    const-string v8, "Start waiting tone."

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1377
    .restart local v2    # "c":Lcom/android/internal/telephony/Connection;
    .restart local v3    # "callState":Lcom/android/internal/telephony/Call$State;
    :cond_15
    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v8, :cond_d

    .line 1378
    iget v8, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v8, :cond_d

    .line 1379
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v8, :cond_d

    .line 1380
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    # invokes: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v8}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$500(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    goto/16 :goto_3
.end method

.method private onResendMute()V
    .locals 2

    .prologue
    .line 3243
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    .line 3244
    .local v0, "muteState":Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 3245
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 3246
    return-void

    .line 3244
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onRingbackTone(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 3219
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3221
    .local v0, "playTone":Z
    if-eqz v0, :cond_1

    .line 3226
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v1, :cond_0

    .line 3228
    new-instance v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 3229
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 3237
    :cond_0
    :goto_0
    return-void

    .line 3232
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v1, :cond_0

    .line 3233
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 3234
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    goto :goto_0
.end method

.method private onSignalInfo(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 2859
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v6, :cond_1

    .line 2860
    const-string v6, "CallNotifier"

    const-string v7, "Got onSignalInfo() on non-voice-capable device! Ignoring..."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    :cond_0
    :goto_0
    return-void

    .line 2864
    :cond_1
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2867
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    goto :goto_0

    .line 2870
    :cond_2
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    move-object v1, v6

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 2872
    .local v1, "signalInfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    if-eqz v1, :cond_0

    .line 2873
    iget-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    .line 2874
    .local v0, "isPresent":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSignalInfo: isPresent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2875
    if-eqz v0, :cond_0

    .line 2876
    iget v5, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    .line 2877
    .local v5, "uSignalType":I
    iget v3, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    .line 2878
    .local v3, "uAlertPitch":I
    iget v4, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    .line 2880
    .local v4, "uSignal":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSignalInfo: uSignalType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uAlertPitch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uSignal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2883
    invoke-static {v5, v3, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v2

    .line 2887
    .local v2, "toneID":I
    new-instance v6, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v6, p0, v2}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    goto :goto_0
.end method

.method private onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 1164
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 1166
    .local v0, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 1168
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 1169
    const-string v1, "- showing incoming call (unknown connection appeared)..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1177
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 1180
    :cond_0
    return-void
.end method

.method private registerForNotifications()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1643
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForNewRingingConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1645
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3, v2, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1647
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForUnknownConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1649
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForIncomingRingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1651
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/16 v1, 0x1f

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1653
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1655
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/16 v1, 0x21

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForNewRingingConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1657
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/16 v1, 0x22

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1659
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/16 v1, 0x24

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForUnknownConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1661
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/16 v1, 0x25

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForIncomingRingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1675
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x19

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange2(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1676
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting2(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1677
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0, v5, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo2(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1678
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0, v6, v2}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo2(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1679
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn2(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1680
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff2(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1693
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1695
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/16 v1, 0xb

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForRingbackToneGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1696
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/16 v1, 0x26

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForRingbackToneGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1710
    :goto_0
    return-void

    .line 1702
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x19

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1703
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1704
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0, v5, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1705
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0, v6, v2}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1706
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1707
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private resetAudioStateAfterDisconnect()V
    .locals 3

    .prologue
    .line 2407
    const-string v0, "resetAudioStateAfterDisconnect()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2409
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 2410
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    .line 2415
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2416
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 2419
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 2420
    return-void
.end method

.method private showIncomingCall()V
    .locals 2

    .prologue
    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showIncomingCall()...  phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1207
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "call"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1214
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget-object v1, Lcom/android/phone/PhoneGlobals$WakeState;->FULL:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 1221
    const-string v0, "- updating notification from showIncomingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1222
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateNotificationAndLaunchIncomingCallUi()V

    .line 1223
    return-void

    .line 1208
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V
    .locals 5
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v4, 0x0

    .line 1023
    const/4 v1, 0x0

    .line 1024
    .local v1, "shouldStartQuery":Z
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 1025
    :try_start_0
    iget v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-nez v2, :cond_0

    .line 1026
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 1027
    const/4 v1, 0x1

    .line 1029
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    if-eqz v1, :cond_2

    .line 1040
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1044
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2, p1, p0, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 1049
    .local v0, "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v2, :cond_1

    .line 1050
    const-string v2, "- CallerInfo already up to date, using available data"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1051
    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0, v4, p0, v2}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 1089
    .end local v0    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :goto_0
    return-void

    .line 1029
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1053
    .restart local v0    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_1
    const-string v2, "- Starting query, posting timeout message."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1057
    const/16 v2, 0x64

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1067
    .end local v0    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_2
    const v2, 0x112a1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1071
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 1072
    const-string v2, "RINGING... (request to ring arrived while query is running)"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1073
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->ring()V

    .line 1078
    :cond_3
    const-string v2, "- showing incoming call (couldn\'t start query)..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1086
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_0
.end method


# virtual methods
.method public autoVTVoiceAnswerCall(Lcom/android/internal/telephony/Call;)V
    .locals 8
    .param p1, "ringing"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v7, 0x1

    .line 867
    const-string v5, "autointernalAnswerCall()..."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 868
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 870
    .local v2, "hasRingingCall":Z
    if-eqz v2, :cond_0

    .line 871
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 872
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 873
    .local v4, "phoneType":I
    if-ne v4, v7, :cond_2

    .line 878
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 879
    .local v0, "hasActiveCall":Z
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 889
    .local v1, "hasHoldingCall":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 890
    const-string v5, "autointernalAnswerCall: answering (both lines in use!)..."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 894
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 896
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/phone/InCallScreen;->setOnAnswerAndEndFlag(Z)V

    .line 910
    .end local v0    # "hasActiveCall":Z
    .end local v1    # "hasHoldingCall":Z
    :goto_0
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneGlobals;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    .line 912
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "phoneType":I
    :cond_0
    return-void

    .line 902
    .restart local v0    # "hasActiveCall":Z
    .restart local v1    # "hasHoldingCall":Z
    .restart local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v4    # "phoneType":I
    :cond_1
    const-string v5, "autointernalAnswerCall: answering..."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 903
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 907
    .end local v0    # "hasActiveCall":Z
    .end local v1    # "hasHoldingCall":Z
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 3309
    const/4 v0, 0x0

    .line 3310
    .local v0, "ci":Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 3312
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 3313
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 3319
    .end local v1    # "o":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 3314
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 3315
    const/4 v0, 0x0

    goto :goto_0

    .line 3317
    :cond_2
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v1    # "o":Ljava/lang/Object;
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method public getIsCdmaRedialCall()Z
    .locals 1

    .prologue
    .line 3072
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    return v0
.end method

.method getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "callerInfo"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 3333
    if-nez p2, :cond_0

    .line 3334
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 3340
    .local v0, "presentation":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation: presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3341
    return v0

    .line 3336
    .end local v0    # "presentation":I
    :cond_0
    iget v0, p2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 3337
    .restart local v0    # "presentation":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation(): ignoring connection\'s presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 3058
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method getVoicePrivacyState()Z
    .locals 1

    .prologue
    .line 3065
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 358
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    sparse-switch v14, :sswitch_data_0

    .line 609
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 361
    :sswitch_1
    const-string v14, "RINGING... (new)"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 362
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/phone/CallNotifier;->onNewRingingConnection(Landroid/os/AsyncResult;I)V

    .line 363
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    goto :goto_0

    .line 368
    :sswitch_2
    const-string v14, "PHONE_INCOMING_RING ! "

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 371
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v14, :cond_0

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    iget-object v14, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v14, :cond_0

    .line 372
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    iget-object v6, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/PhoneBase;

    .line 373
    .local v6, "pb":Lcom/android/internal/telephony/PhoneBase;
    instance-of v2, v6, Lcom/android/internal/telephony/sip/SipPhone;

    .line 374
    .local v2, "bSipRing":Z
    const/4 v1, 0x0

    .line 375
    .local v1, "bIsRejected":Z
    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    .line 376
    .local v12, "ringCall":Lcom/android/internal/telephony/Call;
    if-eqz v12, :cond_1

    .line 377
    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->getShouldSendToVoiceMailFlag(Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    .line 379
    :cond_1
    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    if-nez v14, :cond_3

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/CallNotifier;->ok2Ring:Z

    if-eqz v14, :cond_3

    .line 383
    const-string v14, "RINGING... (PHONE_INCOMING_RING event)"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v14}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "device_provisioned"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_2

    const/4 v7, 0x1

    .line 387
    .local v7, "provisioned":Z
    :goto_1
    if-eqz v7, :cond_0

    if-nez v2, :cond_0

    .line 388
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v14}, Lcom/android/phone/Ringer;->ring()V

    goto/16 :goto_0

    .line 384
    .end local v7    # "provisioned":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 391
    :cond_3
    const-string v14, "RING before NEW_RING, skipping"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 398
    .end local v1    # "bIsRejected":Z
    .end local v2    # "bSipRing":Z
    .end local v6    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v12    # "ringCall":Lcom/android/internal/telephony/Call;
    :sswitch_3
    const-string v14, " - handleMessage : RING INFO for video call ! "

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 401
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTRinging()Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    if-nez v14, :cond_5

    .line 402
    const-string v14, "RINGING... (PHONE_VT_RING_INFO event)"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v14}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "device_provisioned"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_4

    const/4 v8, 0x1

    .line 405
    .local v8, "provisioned2":Z
    :goto_2
    if-eqz v8, :cond_0

    .line 406
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v14}, Lcom/android/phone/Ringer;->ring()V

    goto/16 :goto_0

    .line 403
    .end local v8    # "provisioned2":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 409
    :cond_5
    const-string v14, "RING before NEW_RING, skipping"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 414
    :sswitch_4
    const-string v14, " - handleMessage : PHONE_WAITING_DISCONNECT ! "

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 415
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/phone/CallNotifier;->onDisconnectForVTWaiting(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 419
    :sswitch_5
    const-string v14, " - handleMessage : PHONE_WAITING_DISCONNECT1 ! "

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 420
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/phone/CallNotifier;->onDisconnectForVTWaiting(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 424
    :sswitch_6
    const-string v14, " - handleMessage : PHONE_WAITING_DISCONNECT2 ! "

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/phone/CallNotifier;->onDisconnectForVTWaiting(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 429
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v14, :cond_0

    .line 430
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v14}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 431
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/CallNotifier;->mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    goto/16 :goto_0

    .line 437
    :sswitch_8
    const-string v14, "CallNotifier Phone state change"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 438
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 441
    :sswitch_9
    const-string v14, "DISCONNECT SIM1"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 442
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 443
    .local v10, "resultSim1":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 444
    .local v4, "connectionSim1":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getShouldSendToVoiceMailFlag(Lcom/android/internal/telephony/Connection;)Z

    move-result v14

    if-nez v14, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/CallNotifier;->ok2Ring:Z

    if-eqz v14, :cond_7

    .line 447
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v14}, Lcom/android/phone/PhoneGlobals;->wakeUpScreen()V

    .line 449
    :cond_7
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 452
    .end local v4    # "connectionSim1":Lcom/android/internal/telephony/Connection;
    .end local v10    # "resultSim1":Landroid/os/AsyncResult;
    :sswitch_a
    const-string v14, "DISCONNECT SIM2"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 453
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 454
    .local v11, "resultSim2":Landroid/os/AsyncResult;
    iget-object v5, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/Connection;

    .line 455
    .local v5, "connectionSim2":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getShouldSendToVoiceMailFlag(Lcom/android/internal/telephony/Connection;)Z

    move-result v14

    if-nez v14, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/CallNotifier;->ok2Ring:Z

    if-eqz v14, :cond_9

    .line 458
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v14}, Lcom/android/phone/PhoneGlobals;->wakeUpScreen()V

    .line 460
    :cond_9
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 463
    .end local v5    # "connectionSim2":Lcom/android/internal/telephony/Connection;
    .end local v11    # "resultSim2":Landroid/os/AsyncResult;
    :sswitch_b
    const-string v14, "DISCONNECT"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 464
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 465
    .local v9, "r":Landroid/os/AsyncResult;
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 466
    .local v3, "connection":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getShouldSendToVoiceMailFlag(Lcom/android/internal/telephony/Connection;)Z

    move-result v14

    if-nez v14, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/CallNotifier;->ok2Ring:Z

    if-eqz v14, :cond_b

    .line 469
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v14}, Lcom/android/phone/PhoneGlobals;->wakeUpScreen()V

    .line 471
    :cond_b
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 476
    .end local v3    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v9    # "r":Landroid/os/AsyncResult;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 480
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->onCustomRingtoneQueryTimeout(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 485
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v14, v14, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v14, Lcom/android/internal/telephony/gemini/GeminiPhone;

    check-cast v14, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getMessageWaitingIndicatorGemini(I)Z

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/phone/CallNotifier;->onMwiChanged(ZI)V

    goto/16 :goto_0

    .line 495
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v14, v14, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v14, Lcom/android/internal/telephony/gemini/GeminiPhone;

    check-cast v14, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getMessageWaitingIndicatorGemini(I)Z

    move-result v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/phone/CallNotifier;->onMwiChanged(ZI)V

    goto/16 :goto_0

    .line 504
    :sswitch_10
    const-string v14, "Received PHONE_CDMA_CALL_WAITING event"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 505
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->onCdmaCallWaiting(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 509
    :sswitch_11
    const-string v14, "CallNotifier"

    const-string v15, "Received CDMA_CALL_WAITING_REJECT event"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_0

    .line 514
    :sswitch_12
    const-string v14, "CallNotifier"

    const-string v15, "Received CALLWAITING_CALLERINFO_DISPLAY_DONE event"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 516
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_0

    .line 520
    :sswitch_13
    const-string v14, "Received CALLWAITING_ADDCALL_DISABLE_TIMEOUT event ..."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v14, v14, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 523
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v14}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    goto/16 :goto_0

    .line 527
    :sswitch_14
    const-string v14, "Received PHONE_STATE_DISPLAYINFO event"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 528
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->onDisplayInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 532
    :sswitch_15
    const-string v14, "Received PHONE_STATE_SIGNALINFO event"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 533
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->onSignalInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 537
    :sswitch_16
    const-string v14, "Received Display Info notification done event ..."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 538
    invoke-static {}, Lcom/android/phone/CdmaDisplayInfo;->dismissDisplayInfoRecord()V

    goto/16 :goto_0

    .line 542
    :sswitch_17
    const-string v14, "EVENT_OTA_PROVISION_CHANGE..."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/phone/PhoneGlobals;->handleOtaspEvent(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 547
    :sswitch_18
    const-string v14, "PHONE_ENHANCED_VP_ON..."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 548
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-nez v14, :cond_0

    .line 549
    const/4 v13, 0x5

    .line 550
    .local v13, "toneToPlay":I
    new-instance v14, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v13}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v14}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 551
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 553
    const-string v14, "- updating notification for VP state..."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v14, v14, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v14}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 559
    .end local v13    # "toneToPlay":I
    :sswitch_19
    const-string v14, "PHONE_ENHANCED_VP_OFF..."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 560
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-eqz v14, :cond_0

    .line 561
    const/4 v13, 0x5

    .line 562
    .restart local v13    # "toneToPlay":I
    new-instance v14, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v13}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v14}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 563
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 565
    const-string v14, "- updating notification for VP state..."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v14, v14, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v14}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 572
    .end local v13    # "toneToPlay":I
    :sswitch_1a
    const-string v14, "- receive the ring back..."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 573
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/CallNotifier;->onRingbackTone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 578
    :sswitch_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->onResendMute()V

    goto/16 :goto_0

    .line 590
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v14, v14, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v14}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 594
    :sswitch_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->checkAndTriggerRingTone()V

    goto/16 :goto_0

    .line 598
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->cfiStatus:[Z

    const/4 v15, 0x0

    aget-boolean v14, v14, v15

    if-eqz v14, :cond_c

    .line 599
    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/phone/CallNotifier;->onCfiChanged(ZI)V

    .line 601
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->cfiStatus:[Z

    const/4 v15, 0x1

    aget-boolean v14, v14, v15

    if-eqz v14, :cond_0

    .line 602
    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/phone/CallNotifier;->onCfiChanged(ZI)V

    goto/16 :goto_0

    .line 358
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_1
        0x3 -> :sswitch_b
        0x4 -> :sswitch_c
        0x5 -> :sswitch_2
        0x6 -> :sswitch_14
        0x7 -> :sswitch_15
        0x8 -> :sswitch_10
        0x9 -> :sswitch_18
        0xa -> :sswitch_19
        0xb -> :sswitch_1a
        0xc -> :sswitch_1b
        0xd -> :sswitch_3
        0xe -> :sswitch_3
        0xf -> :sswitch_4
        0x10 -> :sswitch_5
        0x11 -> :sswitch_6
        0x12 -> :sswitch_7
        0x15 -> :sswitch_e
        0x16 -> :sswitch_12
        0x17 -> :sswitch_13
        0x18 -> :sswitch_16
        0x19 -> :sswitch_17
        0x1a -> :sswitch_11
        0x1b -> :sswitch_1c
        0x1f -> :sswitch_9
        0x20 -> :sswitch_a
        0x21 -> :sswitch_1
        0x22 -> :sswitch_8
        0x24 -> :sswitch_c
        0x25 -> :sswitch_2
        0x26 -> :sswitch_1a
        0x27 -> :sswitch_1b
        0x28 -> :sswitch_f
        0x2a -> :sswitch_1d
        0x32 -> :sswitch_0
        0x64 -> :sswitch_d
        0x7d1 -> :sswitch_1e
    .end sparse-switch
.end method

.method hasPendingCallerInfoQuery()Z
    .locals 2

    .prologue
    .line 3503
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRinging()Z
    .locals 1

    .prologue
    .line 2465
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    return v0
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 18
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "ci"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 1720
    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/android/phone/CallNotifier$CustomInfo;

    if-eqz v1, :cond_1

    .line 1721
    const-string v1, "CallerInfo query complete, posting missed call notification"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1723
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    move-object/from16 v7, p2

    check-cast v7, Lcom/android/phone/CallNotifier$CustomInfo;

    iget-wide v7, v7, Lcom/android/phone/CallNotifier$CustomInfo;->date:J

    check-cast p2, Lcom/android/phone/CallNotifier$CustomInfo;

    .end local p2    # "cookie":Ljava/lang/Object;
    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/phone/CallNotifier$CustomInfo;->callVideo:I

    invoke-virtual/range {v1 .. v9}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;JI)V

    .line 1845
    :cond_0
    :goto_0
    return-void

    .line 1726
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/android/phone/CallNotifier;

    if-eqz v1, :cond_0

    .line 1727
    const-string v1, "CallerInfo query complete (for CallNotifier), updating state for incoming call.."

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1731
    const/16 v1, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1733
    const/16 v16, 0x0

    .line 1734
    .local v16, "isQueryExecutionTimeOK":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 1735
    :try_start_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 1736
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 1737
    const/16 v16, 0x1

    .line 1739
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1740
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/phone/CallNotifier;->mIsWaitingQueryComplete:Z

    .line 1742
    if-eqz v16, :cond_0

    .line 1765
    move-object/from16 v0, p3

    iget-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-eqz v1, :cond_3

    .line 1766
    const-string v1, "send to voicemail flag detected. hanging up."

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1767
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 1768
    const/4 v1, 0x1

    move-object/from16 v0, p3

    iput-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    goto :goto_0

    .line 1739
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1773
    :cond_3
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v1, :cond_9

    .line 1774
    const-string v1, "custom ringtone found, setting up ringer."

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contactRingtoneUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    move-object/from16 v1, p2

    .line 1776
    check-cast v1, Lcom/android/phone/CallNotifier;

    iget-object v0, v1, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object/from16 v17, v0

    .line 1777
    .local v17, "r":Lcom/android/phone/Ringer;
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1785
    .end local v17    # "r":Lcom/android/phone/Ringer;
    :cond_4
    :goto_1
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1787
    check-cast p2, Lcom/android/phone/CallNotifier;

    .end local p2    # "cookie":Ljava/lang/Object;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object/from16 v17, v0

    .line 1788
    .restart local v17    # "r":Lcom/android/phone/Ringer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    .line 1789
    .local v14, "foregroundRingCall":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveRingCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    .line 1790
    .local v11, "backgroundRingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v13

    .line 1791
    .local v13, "foregroundInfo":Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v10

    .line 1793
    .local v10, "backgroundInfo":Lcom/android/internal/telephony/CallerInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "foregorund calller info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background calller info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1796
    const/4 v15, 0x0

    .line 1800
    .local v15, "foregroundUri":Landroid/net/Uri;
    if-eqz v13, :cond_5

    .line 1801
    iget-object v15, v13, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 1803
    :cond_5
    if-nez v15, :cond_6

    .line 1804
    invoke-static {v14}, Lcom/mediatek/phone/vt/VTCallUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1805
    sget-object v15, Landroid/provider/Settings$System;->DEFAULT_VIDEO_CALL_URI:Landroid/net/Uri;

    .line 1810
    :cond_6
    :goto_2
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    iget-object v12, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 1813
    .local v12, "backgroundUri":Landroid/net/Uri;
    if-nez v12, :cond_7

    .line 1814
    invoke-static {v11}, Lcom/mediatek/phone/vt/VTCallUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1815
    sget-object v12, Landroid/provider/Settings$System;->DEFAULT_VIDEO_CALL_URI:Landroid/net/Uri;

    .line 1821
    :cond_7
    :goto_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v15, v12}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1822
    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/Ringer;->stopRing()V

    .line 1823
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1825
    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/Ringer;->ring()V

    .line 1842
    .end local v10    # "backgroundInfo":Lcom/android/internal/telephony/CallerInfo;
    .end local v11    # "backgroundRingCall":Lcom/android/internal/telephony/Call;
    .end local v12    # "backgroundUri":Landroid/net/Uri;
    .end local v13    # "foregroundInfo":Lcom/android/internal/telephony/CallerInfo;
    .end local v14    # "foregroundRingCall":Lcom/android/internal/telephony/Call;
    .end local v15    # "foregroundUri":Landroid/net/Uri;
    .end local v17    # "r":Lcom/android/phone/Ringer;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto/16 :goto_0

    .line 1778
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_9
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v1, p2

    .line 1780
    check-cast v1, Lcom/android/phone/CallNotifier;

    iget-object v0, v1, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object/from16 v17, v0

    .line 1781
    .restart local v17    # "r":Lcom/android/phone/Ringer;
    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/Ringer;->getCustomRingToneUri()Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 1782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set call\'s uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/Ringer;->getCustomRingToneUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1807
    .end local p2    # "cookie":Ljava/lang/Object;
    .restart local v10    # "backgroundInfo":Lcom/android/internal/telephony/CallerInfo;
    .restart local v11    # "backgroundRingCall":Lcom/android/internal/telephony/Call;
    .restart local v13    # "foregroundInfo":Lcom/android/internal/telephony/CallerInfo;
    .restart local v14    # "foregroundRingCall":Lcom/android/internal/telephony/Call;
    .restart local v15    # "foregroundUri":Landroid/net/Uri;
    :cond_a
    sget-object v15, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_2

    .line 1817
    .restart local v12    # "backgroundUri":Landroid/net/Uri;
    :cond_b
    sget-object v12, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_3
.end method

.method public onTimeToReminder()V
    .locals 2

    .prologue
    .line 1894
    const/16 v0, 0xf

    .line 1896
    .local v0, "toneToPlay":I
    const-string v1, "- onTimeToReminder ..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1898
    new-instance v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1899
    return-void
.end method

.method resetAudioState()V
    .locals 3

    .prologue
    .line 3550
    const-string v0, "resetAudioState()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3553
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 3554
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    .line 3559
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3560
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 3562
    :cond_1
    return-void
.end method

.method public resetBeforeCall()V
    .locals 1

    .prologue
    .line 3578
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mToneThread:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mToneThread:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3579
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mToneThread:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 3581
    const-string v0, "resetBeforeCall: notify the tone thread to exit."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3588
    :goto_0
    return-void

    .line 3585
    :cond_0
    const-string v0, "resetBeforeCall: do nothing."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method restartRinger()V
    .locals 3

    .prologue
    .line 2485
    const-string v1, "restartRinger()..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2486
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2496
    :cond_0
    :goto_0
    return-void

    .line 2488
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2492
    .local v0, "ringingCall":Lcom/android/internal/telephony/Call;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- ringingCall state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2493
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 2494
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_0
.end method

.method sendCdmaCallWaitingReject()V
    .locals 1

    .prologue
    .line 2965
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->sendEmptyMessage(I)Z

    .line 2966
    return-void
.end method

.method sendMwiChangedDelayed(JI)V
    .locals 2
    .param p1, "delayMillis"    # J
    .param p3, "simId"    # I

    .prologue
    .line 2445
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2447
    .local v0, "message":Landroid/os/Message;
    if-nez p3, :cond_0

    .line 2448
    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2453
    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2454
    return-void

    .line 2450
    :cond_0
    const/16 v1, 0x28

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V
    .locals 12
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;
    .param p2, "date"    # J

    .prologue
    const/4 v0, 0x0

    .line 3079
    new-instance v10, Lcom/android/phone/CallNotifier$CustomInfo;

    const/4 v3, 0x0

    invoke-direct {v10, p0, v3}, Lcom/android/phone/CallNotifier$CustomInfo;-><init>(Lcom/android/phone/CallNotifier;Lcom/android/phone/CallNotifier$1;)V

    .line 3080
    .local v10, "customInfo":Lcom/android/phone/CallNotifier$CustomInfo;
    iput-wide p2, v10, Lcom/android/phone/CallNotifier$CustomInfo;->date:J

    .line 3081
    if-eqz p1, :cond_4

    .line 3082
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, v10, Lcom/android/phone/CallNotifier$CustomInfo;->callVideo:I

    .line 3086
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0, p1, p0, v10}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v11

    .line 3088
    .local v11, "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    if-eqz v11, :cond_7

    .line 3091
    const-string v0, "showMissedCallNotification: Querying for CallerInfo on missed call..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3092
    iget-boolean v0, v11, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v0, :cond_3

    .line 3095
    iget-object v9, v11, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 3100
    .local v9, "ci":Lcom/android/internal/telephony/CallerInfo;
    iget-object v1, v9, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 3101
    .local v1, "name":Ljava/lang/String;
    iget-object v2, v9, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3104
    .local v2, "number":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3105
    if-nez v1, :cond_1

    .line 3107
    iget-object v1, v9, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3109
    :cond_1
    if-eqz p1, :cond_2

    .line 3110
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 3115
    :cond_2
    iget v0, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne v0, v3, :cond_5

    .line 3116
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const v3, 0x7f0801ad

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3123
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v3, v9, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iget-object v4, v9, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v5, v9, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    iget v8, v10, Lcom/android/phone/CallNotifier$CustomInfo;->callVideo:I

    move-wide v6, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;JI)V

    .line 3131
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    .end local v9    # "ci":Lcom/android/internal/telephony/CallerInfo;
    :cond_3
    :goto_2
    return-void

    .line 3084
    .end local v11    # "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_4
    iput v0, v10, Lcom/android/phone/CallNotifier$CustomInfo;->callVideo:I

    goto :goto_0

    .line 3117
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    .restart local v9    # "ci":Lcom/android/internal/telephony/CallerInfo;
    .restart local v11    # "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_5
    iget v0, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v0, v3, :cond_6

    .line 3118
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const v3, 0x7f0801ac

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 3120
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget v3, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v9, v2, v3}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 3129
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    .end local v9    # "ci":Lcom/android/internal/telephony/CallerInfo;
    :cond_7
    const-string v0, "CallNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showMissedCallNotification: got null CallerInfo for Connection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method silenceRinger()V
    .locals 1

    .prologue
    .line 2473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 2474
    const-string v0, "stopRing()... (silenceRinger)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2475
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 2476
    return-void
.end method

.method stopSignalInfoTone()V
    .locals 2

    .prologue
    .line 2900
    const-string v0, "stopSignalInfoTone: Stopping SignalInfo tone player"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2901
    new-instance v0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    const/16 v1, 0x62

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 2902
    return-void
.end method

.method switchRingToneByNeeded(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .param p1, "ring"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 3513
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3514
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 3515
    .local v0, "ci":Lcom/android/internal/telephony/CallerInfo;
    if-nez v0, :cond_1

    .line 3542
    .end local v0    # "ci":Lcom/android/internal/telephony/CallerInfo;
    :cond_0
    :goto_0
    return-void

    .line 3519
    .restart local v0    # "ci":Lcom/android/internal/telephony/CallerInfo;
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 3521
    .local v1, "custUri":Landroid/net/Uri;
    if-nez v1, :cond_2

    .line 3522
    const-string v2, "switchRingToneByNeeded: custUri == null"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3523
    invoke-static {p1}, Lcom/mediatek/phone/vt/VTCallUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3524
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_VIDEO_CALL_URI:Landroid/net/Uri;

    .line 3529
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchRingToneByNeeded: ring call = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchRingToneByNeeded: new ringUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchRingToneByNeeded: old ringUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->getCustomRingToneUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3533
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->getCustomRingToneUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3534
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->stopRing()V

    .line 3535
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2, v1}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 3537
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->ring()V

    .line 3539
    const-string v2, "switchRingToneByNeeded: stop and start new ring!"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3526
    :cond_3
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_1
.end method

.method unregisterCallNotifierRegistrations()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1496
    const-string v0, "CallNotifier"

    const-string v1, "unregisterCallNotifierRegistrations..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1499
    invoke-virtual {p0, v2}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1500
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1501
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1512
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForNewRingingConnectionGemini(Landroid/os/Handler;I)V

    .line 1513
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V

    .line 1514
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    .line 1515
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForUnknownConnectionGemini(Landroid/os/Handler;I)V

    .line 1516
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForIncomingRingGemini(Landroid/os/Handler;I)V

    .line 1517
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCallWaitingGemini(Landroid/os/Handler;I)V

    .line 1518
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisplayInfoGemini(Landroid/os/Handler;I)V

    .line 1519
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForSignalInfoGemini(Landroid/os/Handler;I)V

    .line 1520
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCdmaOtaStatusChangeGemini(Landroid/os/Handler;I)V

    .line 1521
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForRingbackToneGemini(Landroid/os/Handler;I)V

    .line 1523
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForNewRingingConnectionGemini(Landroid/os/Handler;I)V

    .line 1524
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V

    .line 1525
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    .line 1526
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForUnknownConnectionGemini(Landroid/os/Handler;I)V

    .line 1527
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForIncomingRingGemini(Landroid/os/Handler;I)V

    .line 1528
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCallWaitingGemini(Landroid/os/Handler;I)V

    .line 1529
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisplayInfoGemini(Landroid/os/Handler;I)V

    .line 1530
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForSignalInfoGemini(Landroid/os/Handler;I)V

    .line 1531
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCdmaOtaStatusChangeGemini(Landroid/os/Handler;I)V

    .line 1532
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForRingbackToneGemini(Landroid/os/Handler;I)V

    .line 1542
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange2(Landroid/os/Handler;)V

    .line 1543
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting2(Landroid/os/Handler;)V

    .line 1544
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfo2(Landroid/os/Handler;)V

    .line 1545
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfo2(Landroid/os/Handler;)V

    .line 1546
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOn2(Landroid/os/Handler;)V

    .line 1547
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOff2(Landroid/os/Handler;)V

    .line 1567
    return-void
.end method

.method unregisterCallNotifierRegistrations(I)V
    .locals 5
    .param p1, "flag"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1419
    const-string v0, "CallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterCallNotifierRegistrations flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1422
    invoke-virtual {p0, v3}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1423
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1424
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1435
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForNewRingingConnectionGemini(Landroid/os/Handler;I)V

    .line 1436
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V

    .line 1437
    if-nez p1, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    .line 1440
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForUnknownConnectionGemini(Landroid/os/Handler;I)V

    .line 1441
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForIncomingRingGemini(Landroid/os/Handler;I)V

    .line 1442
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCallWaitingGemini(Landroid/os/Handler;I)V

    .line 1443
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisplayInfoGemini(Landroid/os/Handler;I)V

    .line 1444
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForSignalInfoGemini(Landroid/os/Handler;I)V

    .line 1445
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCdmaOtaStatusChangeGemini(Landroid/os/Handler;I)V

    .line 1446
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForRingbackToneGemini(Landroid/os/Handler;I)V

    .line 1448
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForNewRingingConnectionGemini(Landroid/os/Handler;I)V

    .line 1449
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V

    .line 1450
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    .line 1451
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForUnknownConnectionGemini(Landroid/os/Handler;I)V

    .line 1452
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForIncomingRingGemini(Landroid/os/Handler;I)V

    .line 1453
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCallWaitingGemini(Landroid/os/Handler;I)V

    .line 1454
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisplayInfoGemini(Landroid/os/Handler;I)V

    .line 1455
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForSignalInfoGemini(Landroid/os/Handler;I)V

    .line 1456
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCdmaOtaStatusChangeGemini(Landroid/os/Handler;I)V

    .line 1457
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForRingbackToneGemini(Landroid/os/Handler;I)V

    .line 1467
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange2(Landroid/os/Handler;)V

    .line 1468
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting2(Landroid/os/Handler;)V

    .line 1469
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfo2(Landroid/os/Handler;)V

    .line 1470
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfo2(Landroid/os/Handler;)V

    .line 1471
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOn2(Landroid/os/Handler;)V

    .line 1472
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOff2(Landroid/os/Handler;)V

    .line 1493
    return-void
.end method

.method updateCallNotifierRegistrationsAfterRadioTechnologyChange()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1570
    const-string v0, "CallNotifier"

    const-string v1, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForNewRingingConnectionGemini(Landroid/os/Handler;I)V

    .line 1574
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V

    .line 1575
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    .line 1576
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForUnknownConnectionGemini(Landroid/os/Handler;I)V

    .line 1577
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForIncomingRingGemini(Landroid/os/Handler;I)V

    .line 1578
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCallWaitingGemini(Landroid/os/Handler;I)V

    .line 1579
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisplayInfoGemini(Landroid/os/Handler;I)V

    .line 1580
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForSignalInfoGemini(Landroid/os/Handler;I)V

    .line 1581
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCdmaOtaStatusChangeGemini(Landroid/os/Handler;I)V

    .line 1582
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForRingbackToneGemini(Landroid/os/Handler;I)V

    .line 1584
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForNewRingingConnectionGemini(Landroid/os/Handler;I)V

    .line 1585
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V

    .line 1586
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    .line 1587
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForUnknownConnectionGemini(Landroid/os/Handler;I)V

    .line 1588
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForIncomingRingGemini(Landroid/os/Handler;I)V

    .line 1589
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCallWaitingGemini(Landroid/os/Handler;I)V

    .line 1590
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisplayInfoGemini(Landroid/os/Handler;I)V

    .line 1591
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForSignalInfoGemini(Landroid/os/Handler;I)V

    .line 1592
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCdmaOtaStatusChangeGemini(Landroid/os/Handler;I)V

    .line 1593
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForRingbackToneGemini(Landroid/os/Handler;I)V

    .line 1595
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange2(Landroid/os/Handler;)V

    .line 1596
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting2(Landroid/os/Handler;)V

    .line 1597
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfo2(Landroid/os/Handler;)V

    .line 1598
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfo2(Landroid/os/Handler;)V

    .line 1599
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOn2(Landroid/os/Handler;)V

    .line 1600
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOff2(Landroid/os/Handler;)V

    .line 1616
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 1621
    :cond_0
    iput-object v4, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1624
    iput-object v4, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1627
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForInCallVoicePrivacyOnGemini(Landroid/os/Handler;I)V

    .line 1628
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForInCallVoicePrivacyOffGemini(Landroid/os/Handler;I)V

    .line 1630
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForInCallVoicePrivacyOnGemini(Landroid/os/Handler;I)V

    .line 1631
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForInCallVoicePrivacyOffGemini(Landroid/os/Handler;I)V

    .line 1638
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 1639
    return-void
.end method
