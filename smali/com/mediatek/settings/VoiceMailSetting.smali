.class public Lcom/mediatek/settings/VoiceMailSetting;
.super Landroid/preference/PreferenceActivity;
.source "VoiceMailSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/VoiceMailSetting$CallFeaturesSettingBroadcastReceiver;,
        Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;,
        Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

.field public static final ACTION_CONFIGURE_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

.field private static final BUTTON_VOICEMAIL_KEY:Ljava/lang/String; = "button_voicemail_key"

.field private static final BUTTON_VOICEMAIL_PROVIDER_KEY:Ljava/lang/String; = "button_voicemail_provider_key"

.field private static final BUTTON_VOICEMAIL_SETTING_KEY:Ljava/lang/String; = "button_voicemail_setting_key"

.field private static final DBG:Z = true

.field public static final DEFAULT_VM_PROVIDER_KEY:Ljava/lang/String; = "1"

.field public static final DEFAULT_VM_PROVIDER_KEY2:Ljava/lang/String; = "2"

.field static final DTMF_TONE_TYPE_LONG:I = 0x1

.field static final DTMF_TONE_TYPE_NORMAL:I = 0x0

.field private static final EVENT_FORWARDING_CHANGED:I = 0x1f5

.field private static final EVENT_FORWARDING_GET_COMPLETED:I = 0x1f6

.field private static final EVENT_VOICEMAIL_CHANGED:I = 0x1f4

.field static final FORWARDING_SETTINGS_REASONS:[I

.field public static final FWD_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumber"

.field public static final FWD_NUMBER_TIME_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumberTime"

.field public static final FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

.field public static final FWD_SETTINGS_LENGTH_TAG:Ljava/lang/String; = "#Length"

.field public static final FWD_SETTINGS_TAG:Ljava/lang/String; = "#FWDSettings"

.field public static final FWD_SETTING_NUMBER:Ljava/lang/String; = "#Number"

.field public static final FWD_SETTING_REASON:Ljava/lang/String; = "#Reason"

.field public static final FWD_SETTING_STATUS:Ljava/lang/String; = "#Status"

.field public static final FWD_SETTING_TAG:Ljava/lang/String; = "#Setting"

.field public static final FWD_SETTING_TIME:Ljava/lang/String; = "#Time"

.field private static final FW_GET_RESPONSE_ERROR:I = 0x1f6

.field private static final FW_SET_RESPONSE_ERROR:I = 0x1f5

.field public static final IGNORE_PROVIDER_EXTRA:Ljava/lang/String; = "com.android.phone.ProviderToIgnore"

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/VoiceMailSetting"

.field private static final MSG_FW_GET_EXCEPTION:I = 0x192

.field private static final MSG_FW_SET_EXCEPTION:I = 0x191

.field private static final MSG_VM_EXCEPTION:I = 0x190

.field private static final MSG_VM_NOCHANGE:I = 0x2bc

.field private static final MSG_VM_OK:I = 0x258

.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field public static final SIGNOUT_EXTRA:Ljava/lang/String; = "com.android.phone.Signout"

.field private static final VM_NOCHANGE_ERROR:I = 0x190

.field private static final VM_NUMBERS_SHARED_PREFERENCES_NAME:Ljava/lang/String; = "vm_numbers"

.field private static final VM_NUMBERS_SHARED_PREFERENCES_NAME2:Ljava/lang/String; = "vm_numbers_sim2"

.field public static final VM_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.VoicemailNumber"

.field public static final VM_NUMBER_TAG:Ljava/lang/String; = "#VMNumber"

.field private static final VM_RESPONSE_ERROR:I = 0x1f4

.field private static final VOICEMAIL_DIALOG_CONFIRM:I = 0x258

.field private static final VOICEMAIL_FWD_READING_DIALOG:I = 0x25a

.field private static final VOICEMAIL_FWD_SAVING_DIALOG:I = 0x259

.field private static final VOICEMAIL_PREF_ID:I = 0x1

.field private static final VOICEMAIL_PROVIDER_CFG_ID:I = 0x2

.field private static final VOICEMAIL_REVERTING_DIALOG:I = 0x25b


# instance fields
.field mChangingVMorFwdDueToProviderChange:Z

.field mCurrentDialogId:I

.field private mExpectedChangeResultReasons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForeground:Z

.field private mForwardingChangeResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncResult;",
            ">;"
        }
    .end annotation
.end field

.field mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

.field mFwdChangesRequireRollback:Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field private mInitTitle:Ljava/lang/String;

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field mNewVMNumber:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPreviousVMProviderKey:Ljava/lang/String;

.field private mReadingSettingsForDefaultProvider:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private mSimId:I

.field private mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

.field mVMChangeCompletedSuccesfully:Z

.field mVMOrFwdSetError:I

.field mVMProviderSettingsForced:Z

.field private final mVMProvidersData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailProviders:Landroid/preference/ListPreference;

.field private mVoicemailSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/settings/VoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/settings/VoiceMailSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 191
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/settings/VoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 151
    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mInitTitle:Ljava/lang/String;

    .line 170
    new-instance v0, Lcom/mediatek/settings/VoiceMailSetting$CallFeaturesSettingBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/settings/VoiceMailSetting$CallFeaturesSettingBroadcastReceiver;-><init>(Lcom/mediatek/settings/VoiceMailSetting;Lcom/mediatek/settings/VoiceMailSetting$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 290
    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 296
    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 303
    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 308
    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 313
    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 318
    iput v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mCurrentDialogId:I

    .line 324
    iput-boolean v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProviderSettingsForced:Z

    .line 330
    iput-boolean v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 336
    iput-boolean v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMChangeCompletedSuccesfully:Z

    .line 342
    iput-boolean v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mFwdChangesRequireRollback:Z

    .line 348
    iput v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMOrFwdSetError:I

    .line 358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    .line 384
    iput-boolean v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mReadingSettingsForDefaultProvider:Z

    .line 873
    new-instance v0, Lcom/mediatek/settings/VoiceMailSetting$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/VoiceMailSetting$1;-><init>(Lcom/mediatek/settings/VoiceMailSetting;)V

    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mGetOptionComplete:Landroid/os/Handler;

    .line 1096
    new-instance v0, Lcom/mediatek/settings/VoiceMailSetting$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/VoiceMailSetting$2;-><init>(Lcom/mediatek/settings/VoiceMailSetting;)V

    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSetOptionComplete:Landroid/os/Handler;

    .line 1170
    new-instance v0, Lcom/mediatek/settings/VoiceMailSetting$3;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/VoiceMailSetting$3;-><init>(Lcom/mediatek/settings/VoiceMailSetting;)V

    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    .line 1998
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/VoiceMailSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p0}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/settings/VoiceMailSetting;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/VoiceMailSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->checkForwardingCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/VoiceMailSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/VoiceMailSetting;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/settings/VoiceMailSetting;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/settings/VoiceMailSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->handleSetVMOrFwdMessage()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/settings/VoiceMailSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;

    .prologue
    .line 73
    iget v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    return v0
.end method

.method private checkForwardingCompleted()Z
    .locals 4

    .prologue
    .line 1218
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 1219
    const/4 v2, 0x1

    .line 1231
    .local v2, "result":Z
    :cond_0
    :goto_0
    return v2

    .line 1223
    .end local v2    # "result":Z
    :cond_1
    const/4 v2, 0x1

    .line 1224
    .restart local v2    # "result":Z
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1225
    .local v1, "reason":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1226
    const/4 v2, 0x0

    .line 1227
    goto :goto_0
.end method

.method private checkFwdChangeSuccess()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1237
    const/4 v3, 0x0

    .line 1238
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1240
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1241
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1242
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1243
    .local v1, "exception":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 1244
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1245
    if-nez v3, :cond_1

    .line 1246
    const-string v3, ""

    .line 1251
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    .end local v1    # "exception":Ljava/lang/Throwable;
    :cond_1
    return-object v3
.end method

.method private checkVMChangeSuccess()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1258
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1259
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1260
    .local v0, "msg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1261
    const-string v0, ""

    .line 1265
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteSettingsForVoicemailProvider(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting settings for"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 1961
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v0, :cond_0

    .line 1968
    :goto_0
    return-void

    .line 1964
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#VMNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#FWDSettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#Length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private dismissDialogSafely(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 796
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/VoiceMailSetting;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :goto_0
    return-void

    .line 797
    :catch_0
    move-exception v0

    .line 798
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "IllegalArgumentException"

    invoke-static {v1}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCurrentVoicemailProviderKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1971
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1973
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1974
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1978
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "button_voicemail_provider_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1981
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1982
    iget v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    if-nez v2, :cond_3

    .line 1983
    if-eqz v0, :cond_2

    .line 1988
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 1983
    .restart local v0    # "key":Ljava/lang/String;
    :cond_2
    const-string v0, "1"

    goto :goto_0

    .line 1985
    :cond_3
    if-nez v0, :cond_1

    const-string v0, "2"

    goto :goto_0

    .line 1988
    :cond_4
    if-nez v0, :cond_1

    const-string v0, "1"

    goto :goto_0
.end method

.method private handleSetVMOrFwdMessage()V
    .locals 5

    .prologue
    .line 1270
    const-string v3, "handleSetVMMessage: set VM request complete"

    invoke-static {v3}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 1272
    const/4 v2, 0x1

    .line 1273
    .local v2, "success":Z
    const/4 v1, 0x0

    .line 1274
    .local v1, "fwdFailure":Z
    const-string v0, ""

    .line 1275
    .local v0, "exceptionMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 1276
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1277
    if-eqz v0, :cond_0

    .line 1278
    const/4 v2, 0x0

    .line 1279
    const/4 v1, 0x1

    .line 1282
    :cond_0
    if-eqz v2, :cond_1

    .line 1283
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1284
    if-eqz v0, :cond_1

    .line 1285
    const/4 v2, 0x0

    .line 1288
    :cond_1
    if-eqz v2, :cond_2

    .line 1290
    const-string v3, "change VM success!"

    invoke-static {v3}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 1292
    const/16 v3, 0x258

    invoke-direct {p0, v3}, Lcom/mediatek/settings/VoiceMailSetting;->handleVMAndFwdSetSuccess(I)V

    .line 1293
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->updateVoiceNumberField()V

    .line 1303
    :goto_0
    return-void

    .line 1295
    :cond_2
    if-eqz v1, :cond_3

    .line 1296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change FW failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 1297
    const/16 v3, 0x191

    invoke-direct {p0, v3}, Lcom/mediatek/settings/VoiceMailSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0

    .line 1299
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change VM failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 1300
    const/16 v3, 0x190

    invoke-direct {p0, v3}, Lcom/mediatek/settings/VoiceMailSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0
.end method

.method private handleVMAndFwdSetSuccess(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    .line 1318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1319
    invoke-direct {p0, p1}, Lcom/mediatek/settings/VoiceMailSetting;->showVMDialog(I)V

    .line 1320
    return-void
.end method

.method private handleVMBtnClickRequest()V
    .locals 4

    .prologue
    .line 757
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mediatek/settings/VoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;-><init>(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/mediatek/settings/VoiceMailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;)V

    .line 761
    return-void
.end method

.method private handleVMOrFwdSetError(I)V
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1306
    iget-boolean v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    if-eqz v0, :cond_0

    .line 1307
    iput p1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMOrFwdSetError:I

    .line 1308
    iput-boolean v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1309
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->switchToPreviousVoicemailProvider()V

    .line 1315
    :goto_0
    return-void

    .line 1312
    :cond_0
    iput-boolean v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1313
    invoke-direct {p0, p1}, Lcom/mediatek/settings/VoiceMailSetting;->showVMDialog(I)V

    .line 1314
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->updateVoiceNumberField()V

    goto :goto_0
.end method

.method private infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 6
    .param p1, "infos"    # [Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "reason"    # I

    .prologue
    .line 995
    const/4 v4, 0x0

    .line 996
    .local v4, "result":Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_0

    .line 997
    move-object v0, p1

    .local v0, "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 998
    .local v2, "info":Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, p2, :cond_1

    .line 999
    move-object v4, v2

    .line 1004
    .end local v0    # "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v1    # "i$":I
    .end local v2    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3    # "len$":I
    :cond_0
    return-object v4

    .line 997
    .restart local v0    # "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v1    # "i$":I
    .restart local v2    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initVoiceMailProviders()V
    .locals 25

    .prologue
    .line 1713
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "callFeaturesSettings, initVoiceMailProviders: simId = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 1714
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1715
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 1716
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/VoiceMailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "vm_numbers"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/settings/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    .line 1730
    :goto_0
    const/4 v15, 0x0

    .line 1731
    .local v15, "providerToIgnore":Ljava/lang/String;
    const-string v21, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/VoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 1733
    const-string v21, "ACTION_ADD_VOICEMAIL"

    invoke-static/range {v21 .. v21}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 1735
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/VoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1736
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/VoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1739
    :cond_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "providerToIgnore="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 1741
    if-eqz v15, :cond_1

    .line 1742
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/settings/VoiceMailSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;)V

    .line 1746
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->clear()V

    .line 1749
    const v21, 0x7f080227

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/VoiceMailSetting;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1750
    .local v11, "myCarrier":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 1751
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    move/from16 v21, v0

    if-nez v21, :cond_4

    .line 1752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "1"

    new-instance v23, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v11, v2}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;-><init>(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/VoiceMailSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 1762
    .local v13, "pm":Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1763
    .local v8, "intent":Landroid/content/Intent;
    const-string v21, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1764
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v8, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v16

    .line 1765
    .local v16, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v21

    add-int/lit8 v10, v21, 0x1

    .line 1769
    .local v10, "len":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_7

    .line 1770
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 1771
    .local v17, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1772
    .local v3, "currentActivityInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/settings/VoiceMailSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v9

    .line 1774
    .local v9, "key":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Loading "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 1776
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 1778
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Ignoring "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 1780
    add-int/lit8 v10, v10, -0x1

    .line 1769
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1720
    .end local v3    # "currentActivityInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "i":I
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "len":I
    .end local v11    # "myCarrier":Ljava/lang/String;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    .end local v15    # "providerToIgnore":Ljava/lang/String;
    .end local v16    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v17    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/VoiceMailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "vm_numbers_sim2"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/settings/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    goto/16 :goto_0

    .line 1725
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/VoiceMailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "vm_numbers"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/settings/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    goto/16 :goto_0

    .line 1754
    .restart local v11    # "myCarrier":Ljava/lang/String;
    .restart local v15    # "providerToIgnore":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "2"

    new-instance v23, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v11, v2}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;-><init>(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1757
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "1"

    new-instance v23, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v11, v2}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;-><init>(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1783
    .restart local v3    # "currentActivityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "i":I
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "len":I
    .restart local v13    # "pm":Landroid/content/pm/PackageManager;
    .restart local v16    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v17    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1784
    .local v12, "nameForDisplay":Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1785
    .local v14, "providerIntent":Landroid/content/Intent;
    const-string v21, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1786
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v21, v0

    new-instance v22, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v14}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;-><init>(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1796
    .end local v3    # "currentActivityInfo":Landroid/content/pm/ActivityInfo;
    .end local v9    # "key":Ljava/lang/String;
    .end local v12    # "nameForDisplay":Ljava/lang/String;
    .end local v14    # "providerIntent":Landroid/content/Intent;
    .end local v17    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_7
    new-array v5, v10, [Ljava/lang/String;

    .line 1797
    .local v5, "entries":[Ljava/lang/String;
    new-array v0, v10, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1798
    .local v20, "values":[Ljava/lang/String;
    const/16 v21, 0x0

    aput-object v11, v5, v21

    .line 1799
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 1800
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    move/from16 v21, v0

    if-nez v21, :cond_8

    .line 1801
    const/16 v21, 0x0

    const-string v22, "1"

    aput-object v22, v20, v21

    .line 1809
    :goto_4
    const/4 v6, 0x1

    .line 1810
    .local v6, "entryIdx":I
    const/4 v7, 0x0

    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_b

    .line 1811
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/settings/VoiceMailSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v9

    .line 1812
    .restart local v9    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 1810
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1803
    .end local v6    # "entryIdx":I
    .end local v9    # "key":Ljava/lang/String;
    :cond_8
    const/16 v21, 0x0

    const-string v22, "2"

    aput-object v22, v20, v21

    goto :goto_4

    .line 1806
    :cond_9
    const/16 v21, 0x0

    const-string v22, "1"

    aput-object v22, v20, v21

    goto :goto_4

    .line 1815
    .restart local v6    # "entryIdx":I
    .restart local v9    # "key":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;->mName:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v5, v6

    .line 1816
    aput-object v9, v20, v6

    .line 1817
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1820
    .end local v9    # "key":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1823
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/settings/VoiceMailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 1824
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 1825
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/VoiceMailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 1828
    .local v19, "sp":Landroid/content/SharedPreferences;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "button_voicemail_provider_key"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1829
    .local v18, "s":Ljava/lang/String;
    if-nez v18, :cond_c

    .line 1830
    const/16 v21, 0x0

    aget-object v18, v20, v21

    .line 1831
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1832
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "button_voicemail_provider_key"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1833
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1837
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "button_voicemail_provider_key"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1840
    .end local v18    # "s":Ljava/lang/String;
    .end local v19    # "sp":Landroid/content/SharedPreferences;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/settings/VoiceMailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 1841
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1666
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 2
    .param p1, "oldInfo"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "newInfo"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    .line 1009
    const/4 v0, 0x1

    .line 1010
    .local v0, "result":Z
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 1013
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 1014
    const/4 v0, 0x0

    .line 1017
    :cond_0
    return v0
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 1916
    iget-object v7, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#VMNumber"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1918
    .local v6, "vmNumberSetting":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1920
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Settings for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 1951
    :goto_0
    return-object v5

    .line 1925
    :cond_0
    sget-object v0, Lcom/mediatek/settings/VoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1926
    .local v0, "cfi":[Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1927
    .local v1, "fwdKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Length"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1928
    .local v2, "fwdLen":I
    if-lez v2, :cond_1

    .line 1929
    new-array v0, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1930
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_1

    .line 1931
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1932
    .local v4, "settingKey":Ljava/lang/String;
    new-instance v7, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v7}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v7, v0, v3

    .line 1933
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Status"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1935
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Reason"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1938
    aget-object v7, v0, v3

    const/4 v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1939
    aget-object v7, v0, v3

    const/16 v8, 0x91

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1940
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Number"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1942
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Time"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x14

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1930
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1947
    .end local v3    # "i":I
    .end local v4    # "settingKey":Ljava/lang/String;
    :cond_1
    new-instance v5, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    invoke-direct {v5, p0, v6, v0}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;-><init>(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 1949
    .local v5, "settings":Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loaded settings for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1671
    const-string v0, "Settings/VoiceMailSetting"

    invoke-static {v0, p0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    return-void
.end method

.method private makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 1844
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newSettings"    # Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    .prologue
    .line 1874
    iget-object v7, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v7, :cond_0

    .line 1905
    :goto_0
    return-void

    .line 1877
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/settings/VoiceMailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    move-result-object v0

    .line 1878
    .local v0, "curSettings":Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;
    invoke-virtual {p2, v0}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1880
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not saving setting for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " since they have not changed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1885
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Saving settings for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 1887
    iget-object v7, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1888
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#VMNumber"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p2, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mVoicemailNumber:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1889
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1890
    .local v3, "fwdKey":Ljava/lang/String;
    iget-object v5, p2, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1891
    .local v5, "s":[Lcom/android/internal/telephony/CallForwardInfo;
    sget-object v7, Lcom/mediatek/settings/VoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v5, v7, :cond_2

    .line 1892
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    array-length v8, v5

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1893
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, v5

    if-ge v4, v7, :cond_3

    .line 1894
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1895
    .local v6, "settingKey":Ljava/lang/String;
    aget-object v2, v5, v4

    .line 1896
    .local v2, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Status"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1897
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Reason"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1898
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Number"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1899
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1893
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1902
    .end local v2    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v4    # "i":I
    .end local v6    # "settingKey":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1904
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method private resetForwardingChangeState()V
    .locals 1

    .prologue
    .line 1021
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 1022
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 1023
    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newSettings"    # Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    .prologue
    const/16 v7, 0x1f6

    const/4 v3, 0x0

    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveVoiceMailAndForwardingNumber: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 807
    iget-object v2, p2, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mVoicemailNumber:Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    .line 809
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 810
    const-string v2, ""

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    .line 813
    :cond_0
    iget-object v2, p2, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newFwdNumber "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v2, v2

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " settings"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 821
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 823
    const-string v2, "ignoring forwarding setting since this is CDMA phone"

    invoke-static {v2}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 825
    sget-object v2, Lcom/mediatek/settings/VoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 829
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v4, Lcom/mediatek/settings/VoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v2, v4, :cond_3

    .line 830
    const/16 v2, 0x2bc

    invoke-direct {p0, v2}, Lcom/mediatek/settings/VoiceMailSetting;->showVMDialog(I)V

    .line 871
    :goto_1
    return-void

    :cond_2
    move v2, v3

    .line 815
    goto :goto_0

    .line 834
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/VoiceMailSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;)V

    .line 835
    iput-boolean v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMChangeCompletedSuccesfully:Z

    .line 836
    iput-boolean v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mFwdChangesRequireRollback:Z

    .line 837
    iput v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMOrFwdSetError:I

    .line 841
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 842
    iget v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    if-nez v2, :cond_4

    .line 843
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 851
    .local v1, "isKeySame":Z
    :goto_2
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz v1, :cond_8

    .line 854
    const-string v2, "Reading current forwarding settings"

    invoke-static {v2}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 856
    sget-object v2, Lcom/mediatek/settings/VoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v2, v2

    new-array v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 857
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    sget-object v2, Lcom/mediatek/settings/VoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 858
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 859
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 860
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    sget-object v4, Lcom/mediatek/settings/VoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mGetOptionComplete:Landroid/os/Handler;

    invoke-virtual {v5, v7, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCallForwardingOptionGemini(ILandroid/os/Message;I)V

    .line 857
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 845
    .end local v0    # "i":I
    .end local v1    # "isKeySame":Z
    :cond_4
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .restart local v1    # "isKeySame":Z
    goto :goto_2

    .line 848
    .end local v1    # "isKeySame":Z
    :cond_5
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .restart local v1    # "isKeySame":Z
    goto :goto_2

    .line 863
    .restart local v0    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v4, Lcom/mediatek/settings/VoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mGetOptionComplete:Landroid/os/Handler;

    invoke-virtual {v5, v7, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_4

    .line 867
    :cond_7
    const/16 v2, 0x25a

    invoke-direct {p0, v2}, Lcom/mediatek/settings/VoiceMailSetting;->showDialogIfForeground(I)V

    goto/16 :goto_1

    .line 869
    .end local v0    # "i":I
    :cond_8
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto/16 :goto_1
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .locals 14

    .prologue
    const/4 v0, 0x0

    const/16 v13, 0x1f5

    const/4 v10, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1028
    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 1029
    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 1030
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/mediatek/settings/VoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_4

    .line 1031
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->resetForwardingChangeState()V

    .line 1032
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    if-ge v9, v0, :cond_5

    .line 1033
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v8, v0, v9

    .line 1035
    .local v8, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v8, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/settings/VoiceMailSetting;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    invoke-direct {p0, v0, v8}, Lcom/mediatek/settings/VoiceMailSetting;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v7

    .line 1038
    .local v7, "doUpdate":Z
    if-eqz v7, :cond_0

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting fwd #: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 1042
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1044
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1045
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v1, v8, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v1, v12, :cond_1

    move v1, v10

    :goto_1
    iget v2, v8, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v8, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v8, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSetOptionComplete:Landroid/os/Handler;

    invoke-virtual {v5, v13, v9, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCallForwardingOptionGemini(IILjava/lang/String;ILandroid/os/Message;I)V

    .line 1065
    :cond_0
    :goto_2
    const/16 v0, 0x259

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->showDialogIfForeground(I)V

    .line 1032
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move v1, v11

    .line 1045
    goto :goto_1

    .line 1055
    :cond_2
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v8, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v1, v12, :cond_3

    move v1, v10

    :goto_3
    iget v2, v8, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v8, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v8, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSetOptionComplete:Landroid/os/Handler;

    invoke-virtual {v5, v13, v9, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_2

    :cond_3
    move v1, v11

    goto :goto_3

    .line 1069
    .end local v7    # "doUpdate":Z
    .end local v8    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v9    # "i":I
    :cond_4
    const-string v0, "Not touching fwd #"

    invoke-static {v0}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->setVMNumberWithCarrier()V

    .line 1073
    :cond_5
    return-void
.end method

.method private showDialogIfForeground(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForeground:Z

    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/VoiceMailSetting;->showDialog(I)V

    .line 792
    :cond_0
    return-void
.end method

.method private showVMDialog(I)V
    .locals 1
    .param p1, "msgStatus"    # I

    .prologue
    .line 1498
    sparse-switch p1, :sswitch_data_0

    .line 1519
    :goto_0
    return-void

    .line 1502
    :sswitch_0
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1505
    :sswitch_1
    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1508
    :sswitch_2
    const/16 v0, 0x1f6

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1511
    :sswitch_3
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1514
    :sswitch_4
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1498
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x192 -> :sswitch_2
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_3
    .end sparse-switch
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1856
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 1857
    .local v6, "adapter":Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 1858
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 1859
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1864
    :cond_0
    return-void

    .line 1857
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private switchToPreviousVoicemailProvider()V
    .locals 14

    .prologue
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchToPreviousVoicemailProvider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 543
    iget-boolean v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMChangeCompletedSuccesfully:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_9

    .line 545
    :cond_0
    const/16 v0, 0x25b

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->showDialogIfForeground(I)V

    .line 546
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    move-result-object v10

    .line 548
    .local v10, "prevSettings":Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;
    if-nez v10, :cond_2

    .line 621
    .end local v10    # "prevSettings":Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;
    :cond_1
    :goto_0
    return-void

    .line 551
    .restart local v10    # "prevSettings":Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMChangeCompletedSuccesfully:Z

    if-eqz v0, :cond_3

    .line 552
    iget-object v0, v10, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mVoicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "have to revert VM to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 557
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 558
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getVoiceMailAlphaTagGemini(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setVoiceMailNumberGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 570
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_1

    .line 572
    const-string v0, "have to revert fwd"

    invoke-static {v0}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 574
    iget-object v9, v10, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 576
    .local v9, "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v9, :cond_1

    .line 577
    iget-object v12, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 579
    .local v12, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->resetForwardingChangeState()V

    .line 580
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v0, v9

    if-ge v8, v0, :cond_1

    .line 581
    aget-object v7, v9, v8

    .line 583
    .local v7, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting fwd #: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 587
    iget v0, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/AsyncResult;

    .line 588
    .local v11, "result":Landroid/os/AsyncResult;
    if-eqz v11, :cond_4

    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    .line 589
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 592
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const/4 v1, 0x3

    :goto_3
    iget v2, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v6, 0x1f5

    const/4 v13, 0x0

    invoke-virtual {v5, v6, v8, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCallForwardingOptionGemini(IILjava/lang/String;ILandroid/os/Message;I)V

    .line 580
    :cond_4
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 564
    .end local v7    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v8    # "i":I
    .end local v9    # "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v11    # "result":Landroid/os/AsyncResult;
    .end local v12    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_5
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 592
    .restart local v7    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v8    # "i":I
    .restart local v9    # "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v11    # "result":Landroid/os/AsyncResult;
    .restart local v12    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 601
    :cond_7
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    const/4 v1, 0x3

    :goto_5
    iget v2, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v6, 0x1f5

    const/4 v13, 0x0

    invoke-virtual {v5, v6, v8, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    goto :goto_5

    .line 616
    .end local v7    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v8    # "i":I
    .end local v9    # "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v10    # "prevSettings":Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;
    .end local v11    # "result":Landroid/os/AsyncResult;
    .end local v12    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_9
    const-string v0, "No need to revert"

    invoke-static {v0}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->onRevertDone()V

    goto/16 :goto_0
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .locals 9
    .param p1, "currentProviderSetting"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1680
    move-object v0, p1

    .line 1681
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;

    .line 1687
    .local v1, "provider":Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;
    if-nez v1, :cond_0

    .line 1688
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const v4, 0x7f080226

    invoke-virtual {p0, v4}, Lcom/mediatek/settings/VoiceMailSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1689
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1690
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1691
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 1700
    :goto_0
    return-void

    .line 1693
    :cond_0
    iget-object v2, v1, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;->mName:Ljava/lang/String;

    .line 1694
    .local v2, "providerName":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1695
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0801a2

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1697
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1698
    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v4, v1, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateVoiceNumberField()V
    .locals 5

    .prologue
    .line 1327
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-nez v2, :cond_0

    .line 1357
    :goto_0
    return-void

    .line 1331
    :cond_0
    const-string v2, "Settings/VoiceMailSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVoiceNumberField, simid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1333
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getVoiceMailNumberGemini(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1338
    :goto_1
    const-string v2, "Settings/VoiceMailSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVoiceNumberField, mOldVmNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VoiceMailSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1341
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1343
    iget v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumberGemini(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1350
    :goto_2
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1351
    const-string v2, ""

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1353
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1354
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1356
    .local v0, "summary":Ljava/lang/String;
    :goto_3
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1335
    .end local v0    # "summary":Ljava/lang/String;
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    goto :goto_1

    .line 1346
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    goto :goto_2

    .line 1354
    :cond_4
    const v2, 0x7f0801a8

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VoiceMailSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "idx"    # I

    .prologue
    const/16 v8, 0x25a

    const/4 v9, 0x0

    .line 889
    const-string v5, "Settings/VoiceMailSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleForwardingSettingsReadResult: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/4 v2, 0x0

    .line 892
    .local v2, "error":Ljava/lang/Throwable;
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 894
    const-string v5, "Settings/VoiceMailSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FwdRead: ar.exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 899
    :cond_0
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 901
    const-string v6, "Settings/VoiceMailSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FwdRead: userObj="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2    # "error":Ljava/lang/Throwable;
    check-cast v2, Ljava/lang/Throwable;

    .line 908
    .restart local v2    # "error":Ljava/lang/Throwable;
    :cond_1
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v5, :cond_2

    .line 910
    const-string v5, "Settings/VoiceMailSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignoring fwd reading result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :goto_0
    return-void

    .line 916
    :cond_2
    if-eqz v2, :cond_3

    .line 918
    const-string v5, "Settings/VoiceMailSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error discovered for fwd read : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 921
    invoke-direct {p0, v8}, Lcom/mediatek/settings/VoiceMailSetting;->dismissDialogSafely(I)V

    .line 922
    const/16 v5, 0x192

    invoke-direct {p0, v5}, Lcom/mediatek/settings/VoiceMailSetting;->showVMDialog(I)V

    goto :goto_0

    .line 927
    :cond_3
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v5

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 928
    .local v0, "cfInfoArray":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v3, 0x0

    .line 929
    .local v3, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_4

    .line 930
    aget-object v5, v0, v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    .line 931
    aget-object v3, v0, v4

    .line 935
    :cond_4
    if-nez v3, :cond_8

    .line 940
    const-string v5, "Settings/VoiceMailSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating default info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    .end local v3    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 943
    .restart local v3    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 944
    sget-object v5, Lcom/mediatek/settings/VoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v5, v5, p2

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 945
    const/4 v5, 0x1

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 956
    :goto_2
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v3, v5, p2

    .line 959
    const/4 v1, 0x1

    .line 960
    .local v1, "done":Z
    const/4 v4, 0x0

    :goto_3
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 961
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v4

    if-nez v5, :cond_b

    .line 962
    const/4 v1, 0x0

    .line 966
    :cond_5
    if-eqz v1, :cond_e

    .line 968
    const-string v5, "Settings/VoiceMailSetting"

    const-string v6, "Done receiving fwd info"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-direct {p0, v8}, Lcom/mediatek/settings/VoiceMailSetting;->dismissDialogSafely(I)V

    .line 971
    iget-boolean v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mReadingSettingsForDefaultProvider:Z

    if-eqz v5, :cond_6

    .line 972
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 973
    iget v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    if-nez v5, :cond_c

    .line 974
    const-string v5, "1"

    new-instance v6, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    iget-object v7, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6, p0, v7, v8}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;-><init>(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v5, v6}, Lcom/mediatek/settings/VoiceMailSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;)V

    .line 984
    :goto_4
    iput-boolean v9, p0, Lcom/mediatek/settings/VoiceMailSetting;->mReadingSettingsForDefaultProvider:Z

    .line 986
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto/16 :goto_0

    .line 929
    .end local v1    # "done":Z
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 948
    :cond_8
    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a

    .line 949
    :cond_9
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 953
    :cond_a
    const-string v5, "Settings/VoiceMailSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 960
    .restart local v1    # "done":Z
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 977
    :cond_c
    const-string v5, "2"

    new-instance v6, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    iget-object v7, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6, p0, v7, v8}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;-><init>(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v5, v6}, Lcom/mediatek/settings/VoiceMailSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;)V

    goto :goto_4

    .line 981
    :cond_d
    const-string v5, "1"

    new-instance v6, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    iget-object v7, p0, Lcom/mediatek/settings/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6, p0, v7, v8}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;-><init>(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v5, v6}, Lcom/mediatek/settings/VoiceMailSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;)V

    goto :goto_4

    .line 989
    :cond_e
    const-string v5, "Settings/VoiceMailSetting"

    const-string v6, "Not done receiving fwd info"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 642
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_a

    .line 643
    const/4 v8, 0x0

    .line 647
    .local v8, "failure":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVMProviderSettingsForced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProviderSettingsForced:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 649
    iget-boolean v12, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProviderSettingsForced:Z

    .line 650
    .local v12, "isVMProviderSettingsForced":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProviderSettingsForced:Z

    .line 652
    const/4 v14, 0x0

    .line 653
    .local v14, "vmNum":Ljava/lang/String;
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_2

    .line 655
    const-string v1, "onActivityResult: vm provider cfg result not OK."

    invoke-static {v1}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 657
    const/4 v8, 0x1

    .line 695
    :cond_0
    :goto_0
    if-eqz v8, :cond_8

    .line 697
    const-string v1, "Failure in return from voicemail provider"

    invoke-static {v1}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 699
    if-eqz v12, :cond_7

    .line 700
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->switchToPreviousVoicemailProvider()V

    .line 748
    .end local v8    # "failure":Z
    .end local v12    # "isVMProviderSettingsForced":Z
    .end local v14    # "vmNum":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 659
    .restart local v8    # "failure":Z
    .restart local v12    # "isVMProviderSettingsForced":Z
    .restart local v14    # "vmNum":Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_3

    .line 661
    const-string v1, "onActivityResult: vm provider cfg result has no data"

    invoke-static {v1}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 663
    const/4 v8, 0x1

    goto :goto_0

    .line 665
    :cond_3
    const-string v1, "com.android.phone.Signout"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 667
    const-string v1, "Provider requested signout"

    invoke-static {v1}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 669
    if-eqz v12, :cond_4

    .line 671
    const-string v1, "Going back to previous provider on signout"

    invoke-static {v1}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 673
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_1

    .line 675
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v13

    .line 677
    .local v13, "victim":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Relaunching activity and ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 679
    new-instance v11, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 680
    .local v11, "i":Landroid/content/Intent;
    const-string v1, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v11, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    const/high16 v1, 0x4000000

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 682
    invoke-virtual {p0, v11}, Lcom/mediatek/settings/VoiceMailSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 686
    .end local v11    # "i":Landroid/content/Intent;
    .end local v13    # "victim":Ljava/lang/String;
    :cond_5
    const-string v1, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 687
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 689
    :cond_6
    const-string v1, "onActivityResult: vm provider cfg result has no vmnum"

    invoke-static {v1}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 691
    const/4 v8, 0x1

    goto :goto_0

    .line 703
    :cond_7
    const-string v1, "Not switching back the provider since this is not forced config"

    invoke-static {v1}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 708
    :cond_8
    iput-boolean v12, p0, Lcom/mediatek/settings/VoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 709
    const-string v1, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 712
    .local v9, "fwdNum":Ljava/lang/String;
    const-string v1, "com.android.phone.ForwardingNumberTime"

    const/16 v2, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 715
    .local v10, "fwdNumTime":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: vm provider cfg result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v9, :cond_9

    const-string v1, "has"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " forwarding number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 718
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    invoke-direct {v2, p0, v14, v9, v10}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;-><init>(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v1, v2}, Lcom/mediatek/settings/VoiceMailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;)V

    goto/16 :goto_1

    .line 715
    :cond_9
    const-string v1, " does not have"

    goto :goto_2

    .line 723
    .end local v8    # "failure":Z
    .end local v9    # "fwdNum":Ljava/lang/String;
    .end local v10    # "fwdNumTime":I
    .end local v12    # "isVMProviderSettingsForced":Z
    .end local v14    # "vmNum":Ljava/lang/String;
    :cond_a
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_b

    .line 725
    const-string v1, "onActivityResult: contact picker result not OK."

    invoke-static {v1}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 730
    :cond_b
    const/4 v7, 0x0

    .line 732
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/mediatek/settings/VoiceMailSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 734
    if-eqz v7, :cond_c

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_c

    .line 735
    packed-switch p1, :pswitch_data_0

    .line 744
    :cond_c
    :goto_3
    if-eqz v7, :cond_1

    .line 745
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 737
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 744
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_d

    .line 745
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v1

    .line 735
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v1, 0x1f6

    .line 1455
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1456
    packed-switch p2, :pswitch_data_0

    .line 1491
    :cond_0
    :goto_0
    const-string v0, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1492
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->finish()V

    .line 1494
    :cond_1
    :goto_1
    return-void

    .line 1459
    :pswitch_0
    const-string v0, "Neutral button"

    invoke-static {v0}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1464
    :pswitch_1
    const-string v0, "Negative button"

    invoke-static {v0}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 1466
    iget v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_0

    .line 1469
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_0

    .line 1474
    :pswitch_2
    const-string v0, "Positive button"

    invoke-static {v0}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 1476
    iget v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_2

    .line 1479
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1

    .line 1481
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->finish()V

    goto :goto_1

    .line 1456
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 1527
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1529
    const-string v2, "Creating activity"

    invoke-static {v2}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 1531
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1532
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "simId"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    .line 1534
    iget v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    if-eq v2, v4, :cond_0

    .line 1535
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "sub_title_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mInitTitle:Ljava/lang/String;

    .line 1536
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mInitTitle:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1537
    iget v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    invoke-static {p0, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mInitTitle:Ljava/lang/String;

    .line 1541
    :cond_0
    const v2, 0x7f060021

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VoiceMailSetting;->addPreferencesFromResource(I)V

    .line 1543
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mInitTitle:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1544
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mInitTitle:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VoiceMailSetting;->setTitle(Ljava/lang/CharSequence;)V

    .line 1547
    :cond_1
    const-string v2, "button_voicemail_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VoiceMailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    .line 1548
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_2

    .line 1549
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0, v5, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1550
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1551
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const v3, 0x7f0802e6

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1553
    :cond_2
    const-string v2, "button_voicemail_provider_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VoiceMailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    .line 1554
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v2, :cond_4

    .line 1555
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1556
    const-string v2, "button_voicemail_setting_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VoiceMailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    .line 1557
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1558
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "button_voicemail_provider_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1560
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->initVoiceMailProviders()V

    .line 1569
    :cond_4
    if-nez p1, :cond_5

    .line 1570
    const-string v2, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v2, :cond_5

    .line 1572
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-le v2, v5, :cond_7

    .line 1573
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/mediatek/settings/VoiceMailSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    .line 1591
    :cond_5
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProviderSettingsForced:Z

    .line 1593
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1597
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1600
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1603
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/settings/VoiceMailSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1604
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1605
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_6

    .line 1607
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1609
    :cond_6
    return-void

    .line 1575
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_7
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1576
    iget v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    if-nez v2, :cond_8

    .line 1577
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v3, "1"

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/settings/VoiceMailSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1578
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 1580
    :cond_8
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v3, "2"

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/settings/VoiceMailSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1581
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 1584
    :cond_9
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v3, "1"

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/settings/VoiceMailSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1585
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/16 v9, 0x25b

    const/16 v8, 0x259

    const/4 v7, 0x0

    const v6, 0x7f08021c

    .line 1377
    const/16 v5, 0x1f4

    if-eq p1, v5, :cond_0

    const/16 v5, 0x190

    if-eq p1, v5, :cond_0

    const/16 v5, 0x1f5

    if-eq p1, v5, :cond_0

    const/16 v5, 0x1f6

    if-eq p1, v5, :cond_0

    const/16 v5, 0x258

    if-ne p1, v5, :cond_1

    .line 1381
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1384
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f080213

    .line 1385
    .local v4, "titleId":I
    sparse-switch p1, :sswitch_data_0

    .line 1416
    const v3, 0x7f080218

    .line 1419
    .local v3, "msgId":I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1423
    :goto_0
    invoke-virtual {p0, v4}, Lcom/mediatek/settings/VoiceMailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1424
    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VoiceMailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1425
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1426
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1427
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1430
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1447
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "msgId":I
    .end local v4    # "titleId":I
    :goto_1
    return-object v1

    .line 1387
    .restart local v0    # "b":Landroid/app/AlertDialog$Builder;
    .restart local v4    # "titleId":I
    :sswitch_0
    const v3, 0x7f080221

    .line 1388
    .restart local v3    # "msgId":I
    const v4, 0x7f0801ea

    .line 1390
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1395
    .end local v3    # "msgId":I
    :sswitch_1
    const v3, 0x7f080225

    .line 1396
    .restart local v3    # "msgId":I
    const v4, 0x7f0801ea

    .line 1398
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1401
    .end local v3    # "msgId":I
    :sswitch_2
    const v3, 0x7f080222

    .line 1403
    .restart local v3    # "msgId":I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1406
    .end local v3    # "msgId":I
    :sswitch_3
    const v3, 0x7f080223

    .line 1408
    .restart local v3    # "msgId":I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1411
    .end local v3    # "msgId":I
    :sswitch_4
    const v3, 0x7f080224

    .line 1412
    .restart local v3    # "msgId":I
    const v5, 0x7f080341

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1413
    const v5, 0x7f080342

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1433
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v3    # "msgId":I
    .end local v4    # "titleId":I
    :cond_1
    if-eq p1, v8, :cond_2

    const/16 v5, 0x25a

    if-eq p1, v5, :cond_2

    if-ne p1, v9, :cond_5

    .line 1435
    :cond_2
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1436
    .local v1, "dialog":Landroid/app/ProgressDialog;
    const v5, 0x7f080212

    invoke-virtual {p0, v5}, Lcom/mediatek/settings/VoiceMailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1437
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1438
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1439
    if-ne p1, v8, :cond_3

    const v5, 0x7f080215

    :goto_2
    invoke-virtual {p0, v5}, Lcom/mediatek/settings/VoiceMailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-ne p1, v9, :cond_4

    const v5, 0x7f080216

    goto :goto_2

    :cond_4
    const v5, 0x7f080214

    goto :goto_2

    .line 1447
    .end local v1    # "dialog":Landroid/app/ProgressDialog;
    :cond_5
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_1

    .line 1385
    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_2
        0x1f5 -> :sswitch_3
        0x1f6 -> :sswitch_4
        0x258 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1994
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 1995
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1996
    return-void
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 3
    .param p1, "preference"    # Lcom/android/phone/EditPhoneNumberPreference;
    .param p2, "buttonClicked"    # I

    .prologue
    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceClick: request preference click on dialog close: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 473
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    instance-of v1, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_0

    .line 477
    move-object v0, p1

    .line 479
    .local v0, "epn":Lcom/android/phone/EditPhoneNumberPreference;
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v1, :cond_0

    .line 480
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->handleVMBtnClickRequest()V

    goto :goto_0
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 4
    .param p1, "preference"    # Lcom/android/phone/EditPhoneNumberPreference;

    .prologue
    const/4 v2, 0x0

    .line 491
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v1, :cond_0

    .line 495
    const-string v1, "updating default for voicemail dialog"

    invoke-static {v1}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 497
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->updateVoiceNumberField()V

    move-object v1, v2

    .line 519
    :goto_0
    return-object v1

    .line 502
    :cond_0
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getVoiceMailNumberGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "vmDisplay":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v2

    .line 511
    goto :goto_0

    .line 505
    .end local v0    # "vmDisplay":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "vmDisplay":Ljava/lang/String;
    goto :goto_1

    .line 516
    :cond_2
    const-string v1, "updating default for call forwarding dialogs"

    invoke-static {v1}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ongetDefaultnumber, vmDisplay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0801eb

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VoiceMailSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 1614
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/VoiceMailSetting;->setIntent(Landroid/content/Intent;)V

    .line 1615
    const-string v0, "simId"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    .line 1617
    iget v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    if-eq v0, v1, :cond_0

    .line 1618
    const-string v0, "sub_title_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mInitTitle:Ljava/lang/String;

    .line 1619
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mInitTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1620
    iget v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    invoke-static {p0, v0}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mInitTitle:Ljava/lang/String;

    .line 1624
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mInitTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1625
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mInitTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->setTitle(Ljava/lang/CharSequence;)V

    .line 1628
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_2

    .line 1629
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1630
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1631
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0802e6

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1633
    :cond_2
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v0, :cond_4

    .line 1634
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1635
    const-string v0, "button_voicemail_setting_key"

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    .line 1636
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1637
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "button_voicemail_provider_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1639
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->initVoiceMailProviders()V

    .line 1641
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->updateVoiceNumberField()V

    .line 1642
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1646
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1647
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 1654
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 1649
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->finish()V

    .line 1650
    const/4 v1, 0x1

    goto :goto_0

    .line 1647
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 374
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForeground:Z

    .line 376
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    .line 412
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_0

    .line 413
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "currentProviderKey":Ljava/lang/String;
    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    move-object v2, p2

    .line 415
    check-cast v2, Ljava/lang/String;

    .line 417
    .local v2, "newProviderKey":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VM provider changes to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 420
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 422
    const-string v5, "No change "

    invoke-static {v5}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 464
    .end local v0    # "currentProviderKey":Ljava/lang/String;
    .end local v2    # "newProviderKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return v7

    .line 428
    .restart local v0    # "currentProviderKey":Ljava/lang/String;
    .restart local v2    # "newProviderKey":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 429
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 430
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 431
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "button_voicemail_provider_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 432
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 435
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    invoke-direct {p0, v2}, Lcom/mediatek/settings/VoiceMailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 437
    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 439
    invoke-direct {p0, v2}, Lcom/mediatek/settings/VoiceMailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    move-result-object v3

    .line 448
    .local v3, "newProviderSettings":Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;
    if-nez v3, :cond_3

    .line 451
    const-string v5, "Saved preferences not found - invoking config"

    invoke-static {v5}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 453
    iput-boolean v7, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMProviderSettingsForced:Z

    goto :goto_0

    .line 456
    :cond_3
    const-string v5, "Saved preferences found - switching to them"

    invoke-static {v5}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 459
    iput-boolean v7, p0, Lcom/mediatek/settings/VoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 460
    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/VoiceMailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_0

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invoking cfg intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/settings/VoiceMailSetting;->startActivityForResult(Landroid/content/Intent;I)V

    .line 398
    const/4 v0, 0x1

    .line 400
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 1370
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1371
    iput p1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mCurrentDialogId:I

    .line 1372
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1659
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1661
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->updateVoiceNumberField()V

    .line 1662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mForeground:Z

    .line 1663
    return-void
.end method

.method onRevertDone()V
    .locals 2

    .prologue
    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flipping provider key back to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 629
    invoke-direct {p0}, Lcom/mediatek/settings/VoiceMailSetting;->updateVoiceNumberField()V

    .line 630
    iget v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMOrFwdSetError:I

    if-eqz v0, :cond_0

    .line 631
    iget v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMOrFwdSetError:I

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VoiceMailSetting;->showVMDialog(I)V

    .line 632
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mVMOrFwdSetError:I

    .line 634
    :cond_0
    return-void
.end method

.method setVMNumberWithCarrier()V
    .locals 5

    .prologue
    const/16 v4, 0x1f4

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save voicemail #: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 1080
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getVoiceMailAlphaTagGemini(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSetOptionComplete:Landroid/os/Handler;

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSimId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setVoiceMailNumberGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 1091
    :goto_0
    return-void

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/settings/VoiceMailSetting;->mSetOptionComplete:Landroid/os/Handler;

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 526
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 528
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 536
    :goto_0
    return-void

    .line 533
    :cond_0
    const-string v0, "startSubActivity: starting requested subactivity"

    invoke-static {v0}, Lcom/mediatek/settings/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 535
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
