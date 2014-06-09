.class public Lcom/mediatek/settings/CallSettings;
.super Landroid/preference/PreferenceActivity;
.source "CallSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/CallSettings$SIMInfoComparable;
    }
.end annotation


# static fields
.field public static final BUTTON_INCALL_BANNER_KEY:Ljava/lang/String; = "button_show_incall_banner"

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/CallSettings"

.field public static final MD_CAPABILITY_SLOT_1:Ljava/lang/String; = "gsm.baseband.capability"

.field public static final MD_CAPABILITY_SLOT_2:Ljava/lang/String; = "gsm.baseband.capability2"

.field public static final MODEM_3G:I = 0x3


# instance fields
.field private mBannerEnabledChangeObserver:Landroid/database/ContentObserver;

.field private mButtonInCallBanner:Landroid/preference/CheckBoxPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mSipCallSetting:Landroid/preference/Preference;

.field mVTSetting:Landroid/preference/Preference;

.field mVoiceSetting:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    .line 51
    iput-object v0, p0, Lcom/mediatek/settings/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    .line 52
    iput-object v0, p0, Lcom/mediatek/settings/CallSettings;->mSipCallSetting:Landroid/preference/Preference;

    .line 57
    new-instance v0, Lcom/mediatek/settings/CallSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/CallSettings$1;-><init>(Lcom/mediatek/settings/CallSettings;)V

    iput-object v0, p0, Lcom/mediatek/settings/CallSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 302
    new-instance v0, Lcom/mediatek/settings/CallSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/CallSettings$2;-><init>(Lcom/mediatek/settings/CallSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/settings/CallSettings;->mBannerEnabledChangeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/CallSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CallSettings;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mediatek/settings/CallSettings;->setScreenEnabled()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/CallSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CallSettings;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/settings/CallSettings;->mButtonInCallBanner:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method public static get3GSimCardSlots(Landroid/app/Activity;)[I
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v2, "simIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v3

    .line 217
    .local v3, "slot":I
    if-ltz v3, :cond_0

    .line 218
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [I

    .line 230
    .local v1, "md3GIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 231
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v0

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_1
    return-object v1
.end method

.method public static get3GSimCards(Landroid/app/Activity;)[J
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v2, "simIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v3

    .line 194
    .local v3, "slot":I
    if-ltz v3, :cond_0

    .line 195
    invoke-static {p0, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v4

    iget-wide v4, v4, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [J

    .line 207
    .local v1, "md3GIds":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 208
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_1
    return-object v1
.end method

.method public static getBaseband(I)I
    .locals 7
    .param p0, "slot"    # I

    .prologue
    .line 237
    const/4 v3, 0x0

    .line 238
    .local v3, "propertyKey":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 248
    :goto_0
    const/4 v0, 0x0

    .line 250
    .local v0, "baseband":I
    :try_start_0
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "capability":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 252
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 257
    .end local v1    # "capability":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v4, "Settings/CallSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[slot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v4, "Settings/CallSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[propertyKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v4, "Settings/CallSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[baseband = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return v0

    .line 240
    .end local v0    # "baseband":I
    :pswitch_0
    const-string v3, "gsm.baseband.capability"

    .line 241
    goto :goto_0

    .line 243
    :pswitch_1
    const-string v3, "gsm.baseband.capability2"

    .line 244
    goto :goto_0

    .line 254
    .restart local v0    # "baseband":I
    :catch_0
    move-exception v2

    .line 255
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Settings/CallSettings"

    const-string v5, "get base band error"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static goToMobileNetworkSettings(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 264
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 268
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 269
    return-void
.end method

.method public static goToOthersSettings(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/settings/OthersSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 188
    return-void
.end method

.method public static goUpToTopLevelSetting(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/settings/CallSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 179
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 180
    return-void
.end method

.method public static isMultipleSim()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method private isOnlyVt()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 289
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 290
    .local v0, "siminfoList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    iget v1, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-static {v1}, Lcom/mediatek/settings/CallSettings;->getBaseband(I)I

    move-result v1

    const/4 v4, 0x3

    if-le v1, v4, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method public static isRadioOn(I)Z
    .locals 5
    .param p0, "slot"    # I

    .prologue
    .line 162
    const/4 v1, 0x0

    .line 163
    .local v1, "isRadioOn":Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 164
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 165
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 166
    .local v0, "dualPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v1

    .line 171
    .end local v0    # "dualPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    :goto_0
    return v1

    .line 168
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setScreenEnabled()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 272
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 273
    .local v1, "insertSim":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 274
    invoke-static {p0}, Lcom/mediatek/settings/CallSettings;->get3GSimCardSlots(Landroid/app/Activity;)[I

    move-result-object v2

    .line 275
    .local v2, "simIds":[I
    iget-object v3, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 276
    iget-object v6, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 278
    :cond_0
    iget-object v3, p0, Lcom/mediatek/settings/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    :goto_1
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 286
    .end local v2    # "simIds":[I
    :goto_2
    return-void

    .restart local v2    # "simIds":[I
    :cond_1
    move v3, v5

    .line 276
    goto :goto_0

    :cond_2
    move v4, v5

    .line 278
    goto :goto_1

    .line 280
    .end local v2    # "simIds":[I
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    .line 281
    .local v0, "hasSimCard":Z
    iget-object v3, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    if-eqz v3, :cond_4

    .line 282
    iget-object v3, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 284
    :cond_4
    iget-object v3, p0, Lcom/mediatek/settings/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 77
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v4, 0x7f060001

    invoke-virtual {p0, v4}, Lcom/mediatek/settings/CallSettings;->addPreferencesFromResource(I)V

    .line 79
    const-string v4, "button_vedio_call_key"

    invoke-virtual {p0, v4}, Lcom/mediatek/settings/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    .line 80
    const-string v4, "button_voice_call_key"

    invoke-virtual {p0, v4}, Lcom/mediatek/settings/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/settings/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    .line 82
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v3

    .line 83
    .local v3, "voipSupported":Z
    if-nez v3, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v7, "button_internet_call_key"

    invoke-virtual {p0, v7}, Lcom/mediatek/settings/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    iput-object v10, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    .line 93
    const-string v4, "button_show_incall_banner"

    invoke-virtual {p0, v4}, Lcom/mediatek/settings/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/mediatek/settings/CallSettings;->mButtonInCallBanner:Landroid/preference/CheckBoxPreference;

    .line 94
    iget-object v4, p0, Lcom/mediatek/settings/CallSettings;->mButtonInCallBanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    invoke-static {}, Lcom/android/phone/Util;->isShellUiStyle()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone_banner_enable"

    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v9, 0x7f0c0000

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_0
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 98
    .local v2, "state":I
    iget-object v4, p0, Lcom/mediatek/settings/CallSettings;->mButtonInCallBanner:Landroid/preference/CheckBoxPreference;

    if-ne v2, v5, :cond_1

    move v6, v5

    :cond_1
    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "phone_banner_enable"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/settings/CallSettings;->mBannerEnabledChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 104
    .end local v2    # "state":I
    :cond_2
    invoke-static {}, Lcom/android/phone/Util;->isShellUiStyle()Z

    move-result v4

    if-nez v4, :cond_3

    .line 105
    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/mediatek/settings/CallSettings;->mButtonInCallBanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 106
    iput-object v10, p0, Lcom/mediatek/settings/CallSettings;->mButtonInCallBanner:Landroid/preference/CheckBoxPreference;

    .line 109
    :cond_3
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/mediatek/settings/CallSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/mediatek/settings/CallSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 113
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_4

    .line 115
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 117
    :cond_4
    return-void

    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_5
    move v4, v6

    .line 97
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 158
    iget-object v0, p0, Lcom/mediatek/settings/CallSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CallSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 122
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 129
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 124
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings;->finish()V

    .line 125
    const/4 v1, 0x1

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 312
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 313
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 297
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 298
    .local v0, "state":Z
    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone_banner_enable"

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 299
    return v2

    .line 298
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 133
    iget-object v1, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 134
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/mediatek/settings/CallSettings;->isOnlyVt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-class v1, Lcom/mediatek/settings/VTAdvancedSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 140
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CallSettings;->startActivity(Landroid/content/Intent;)V

    .line 141
    const/4 v1, 0x1

    .line 143
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return v1

    .line 138
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-class v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 143
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 149
    invoke-direct {p0}, Lcom/mediatek/settings/CallSettings;->setScreenEnabled()V

    .line 150
    return-void
.end method
