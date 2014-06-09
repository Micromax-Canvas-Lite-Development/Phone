.class public Lcom/mediatek/phone/ext/SettingsExtension;
.super Ljava/lang/Object;
.source "SettingsExtension.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NetworkSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customizeFeatureForOperator(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 0
    .param p1, "prefSet"    # Landroid/preference/PreferenceScreen;
    .param p2, "mPreferredNetworkMode"    # Landroid/preference/Preference;
    .param p3, "mButtonPreferencedNetworkMode"    # Landroid/preference/Preference;
    .param p4, "mPreference3GSwitch"    # Landroid/preference/Preference;
    .param p5, "mButtonPreferredGSMOnly"    # Landroid/preference/Preference;

    .prologue
    .line 65
    invoke-virtual {p1, p5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 66
    return-void
.end method

.method public customizePLMNFeature(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
    .locals 0
    .param p1, "prefSet"    # Landroid/preference/PreferenceScreen;
    .param p2, "mPLMNPreference"    # Landroid/preference/Preference;

    .prologue
    .line 74
    return-void
.end method

.method public dataEnableReminder(ZLandroid/preference/PreferenceActivity;)Z
    .locals 1
    .param p1, "isCheckedBefore"    # Z
    .param p2, "activity"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public disableDataRoaming(Landroid/preference/CheckBoxPreference;Z)V
    .locals 0
    .param p1, "buttonDataRoam"    # Landroid/preference/CheckBoxPreference;
    .param p2, "isEnabled"    # Z

    .prologue
    .line 143
    return-void
.end method

.method public getRoamingSummary(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # I

    .prologue
    .line 152
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "summary":Ljava/lang/String;
    const-string v1, "NetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default setRoamingSummary with summary="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 124
    const-string v0, "NetworkSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method public removeNMMode(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 0
    .param p1, "prefsc"    # Landroid/preference/PreferenceScreen;
    .param p2, "buttonPreferredNetworkMode"    # Landroid/preference/Preference;
    .param p3, "buttonPreferredGSMOnly"    # Landroid/preference/Preference;
    .param p4, "buttonPreferredNetworkModeEx"    # Landroid/preference/Preference;

    .prologue
    .line 85
    return-void
.end method

.method public removeNMOp(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Z)V
    .locals 0
    .param p1, "prefsc"    # Landroid/preference/PreferenceScreen;
    .param p2, "carrierSelPref"    # Landroid/preference/Preference;
    .param p3, "isShowPlmn"    # Z

    .prologue
    .line 94
    return-void
.end method

.method public removeNMOpFor3GSwitch(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
    .locals 0
    .param p1, "prefsc"    # Landroid/preference/PreferenceScreen;
    .param p2, "networkMode"    # Landroid/preference/Preference;

    .prologue
    .line 102
    return-void
.end method

.method public removeNMOpForMultiSim(Lcom/android/internal/telephony/Phone;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "targetClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    .local p2, "simList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    return-void
.end method

.method public showWarningDlg(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # I

    .prologue
    .line 133
    const-string v0, "default to do nothing"

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/ext/SettingsExtension;->log(Ljava/lang/String;)V

    .line 134
    return-void
.end method
