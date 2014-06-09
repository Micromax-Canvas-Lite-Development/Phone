.class public Lcom/mediatek/settings/FdnSetting2;
.super Landroid/preference/PreferenceActivity;
.source "FdnSetting2.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BUTTON_CHANGE_PIN2_KEY:Ljava/lang/String; = "button_change_pin2_key"

.field private static final BUTTON_FDN_ENABLE_KEY:Ljava/lang/String; = "button_fdn_enable_key"

.field private static final BUTTON_FDN_LIST_KEY:Ljava/lang/String; = "button_fdn_list_key"

.field private static final EVENT_PIN2_ENTRY_COMPLETE:I = 0x64

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/FdnSetting2"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4


# instance fields
.field private mButtonChangePin2:Landroid/preference/Preference;

.field private mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

.field private mButtonFDNList:Landroid/preference/Preference;

.field private mFDNHandler:Landroid/os/Handler;

.field private mFdnSupport:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryPin2New:I

.field private mRetryPin2Old:I

.field private mSimId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    .line 131
    new-instance v0, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;-><init>(Lcom/mediatek/settings/FdnSetting2;Lcom/mediatek/settings/FdnSetting2$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 259
    new-instance v0, Lcom/mediatek/settings/FdnSetting2$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/FdnSetting2$1;-><init>(Lcom/mediatek/settings/FdnSetting2;)V

    iput-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mFDNHandler:Landroid/os/Handler;

    .line 576
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/FdnSetting2;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2Count()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/FdnSetting2;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;

    .prologue
    .line 98
    iget v0, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/FdnSetting2;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;
    .param p1, "x1"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/mediatek/settings/FdnSetting2;->displayMessage(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/settings/FdnSetting2;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateFDNPreference()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/settings/FdnSetting2;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;
    .param p1, "x1"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/mediatek/settings/FdnSetting2;->resetFDNDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/settings/FdnSetting2;)Lcom/android/phone/EditPinPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/FdnSetting2;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateEnableFDN()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/settings/FdnSetting2;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;

    .prologue
    .line 98
    iget v0, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/settings/FdnSetting2;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;
    .param p1, "x1"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/settings/FdnSetting2;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;

    .prologue
    .line 98
    iget v0, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/settings/FdnSetting2;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/mediatek/settings/FdnSetting2;->updateMenuEnableState(Z)V

    return-void
.end method

.method private checkPhoneBookState()Z
    .locals 3

    .prologue
    .line 560
    const/4 v0, 0x0

    .line 561
    .local v0, "isPhoneBookReady":Z
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->isPhbReady()Z

    move-result v0

    .line 566
    :goto_0
    if-nez v0, :cond_0

    .line 567
    const v1, 0x7f0800fc

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0800ad

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/settings/FdnSetting2;->showTipToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :cond_0
    return v0

    .line 564
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->isPhbReady()Z

    move-result v0

    goto :goto_0
.end method

.method private checkPhoneBookStateExit()V
    .locals 3

    .prologue
    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, "isPhoneBookReady":Z
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 549
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->isPhbReady()Z

    move-result v0

    .line 553
    :goto_0
    if-nez v0, :cond_0

    .line 554
    const v1, 0x7f0800fc

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0800ad

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/settings/FdnSetting2;->showTipToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2;->finish()V

    .line 557
    :cond_0
    return-void

    .line 551
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->isPhbReady()Z

    move-result v0

    goto :goto_0
.end method

.method private displayMessage(I)V
    .locals 2
    .param p1, "strId"    # I

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 295
    return-void
.end method

.method private getRetryPin2()Ljava/lang/String;
    .locals 6

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2Count()I

    move-result v0

    .line 156
    .local v0, "retryCount":I
    iput v0, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    .line 157
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRetryPin2 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    packed-switch v0, :pswitch_data_0

    .line 165
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f080184

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/settings/FdnSetting2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 160
    :pswitch_1
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "getRetryPin2,GET_SIM_RETRY_EMPTY"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v1, " "

    goto :goto_0

    .line 163
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f080183

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getRetryPin2Count()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 144
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget v0, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    if-nez v0, :cond_0

    .line 146
    const-string v0, "gsm.sim.retry.pin2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 151
    :goto_0
    return v0

    .line 147
    :cond_0
    iget v0, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 148
    const-string v0, "gsm.sim.retry.pin2.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 151
    :cond_1
    const-string v0, "gsm.sim.retry.pin2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getRetryPuk2Count()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 133
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget v0, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    if-nez v0, :cond_0

    .line 135
    const-string v0, "gsm.sim.retry.puk2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 140
    :goto_0
    return v0

    .line 136
    :cond_0
    iget v0, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 137
    const-string v0, "gsm.sim.retry.puk2.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 140
    :cond_1
    const-string v0, "gsm.sim.retry.puk2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private resetFDNDialog(I)V
    .locals 4
    .param p1, "strId"    # I

    .prologue
    const v3, 0x7f0802d5

    .line 206
    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 215
    :goto_0
    return-void

    .line 211
    :cond_0
    const-string v0, "Settings/FdnSetting2"

    const-string v1, "resetFDNDialog 0"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setFDNSupport()V
    .locals 3

    .prologue
    .line 536
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 541
    .local v0, "iccCard":Lcom/android/internal/telephony/IccCard;
    :goto_0
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->isFDNExist()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    .line 542
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    iget-boolean v2, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 543
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    iget-boolean v2, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 544
    return-void

    .line 539
    .end local v0    # "iccCard":Lcom/android/internal/telephony/IccCard;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .restart local v0    # "iccCard":Lcom/android/internal/telephony/IccCard;
    goto :goto_0
.end method

.method private toggleFDNEnable(Z)V
    .locals 8
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v5, 0x0

    .line 221
    const-string v4, "Settings/FdnSetting2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleFDNEnable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-nez p1, :cond_0

    .line 224
    const-string v4, "Settings/FdnSetting2"

    const-string v6, "toggleFDNEnable positiveResult is false"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-direct {p0, v5}, Lcom/mediatek/settings/FdnSetting2;->resetFDNDialog(I)V

    .line 226
    iget v4, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    iput v4, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    .line 227
    const-string v4, "Settings/FdnSetting2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleFDNEnable mRetryPin2Old="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v4}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "password":Ljava/lang/String;
    invoke-direct {p0, v3, v5}, Lcom/mediatek/settings/FdnSetting2;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 236
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 237
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v6, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 241
    .local v0, "iccCard":Lcom/android/internal/telephony/IccCard;
    :goto_1
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    .line 242
    .local v1, "isEnabled":Z
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mFDNHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 245
    .local v2, "onComplete":Landroid/os/Message;
    if-nez v1, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-interface {v0, v4, v3, v2}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 253
    .end local v0    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .end local v1    # "isEnabled":Z
    .end local v2    # "onComplete":Landroid/os/Message;
    :goto_3
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_1
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .restart local v0    # "iccCard":Lcom/android/internal/telephony/IccCard;
    goto :goto_1

    .restart local v1    # "isEnabled":Z
    .restart local v2    # "onComplete":Landroid/os/Message;
    :cond_2
    move v4, v5

    .line 245
    goto :goto_2

    .line 248
    .end local v0    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .end local v1    # "isEnabled":Z
    .end local v2    # "onComplete":Landroid/os/Message;
    :cond_3
    const v4, 0x7f0802dc

    invoke-direct {p0, v4}, Lcom/mediatek/settings/FdnSetting2;->resetFDNDialog(I)V

    .line 249
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 250
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v4}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    goto :goto_3
.end method

.method private updateEnableFDN()V
    .locals 3

    .prologue
    .line 318
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 323
    .local v0, "iccCard":Lcom/android/internal/telephony/IccCard;
    :goto_0
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "updateEnableFDN is FdnEnabled=2131231392"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f0802a2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 326
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f08029d

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 327
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f0802a0

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 334
    :goto_1
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "updateEnableFDN"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/settings/FdnSetting2;->resetFDNDialog(I)V

    .line 336
    return-void

    .line 321
    .end local v0    # "iccCard":Lcom/android/internal/telephony/IccCard;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .restart local v0    # "iccCard":Lcom/android/internal/telephony/IccCard;
    goto :goto_0

    .line 329
    :cond_1
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "updateEnableFDN is not FdnEnabled=2131231391"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f0802a3

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 331
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f08029e

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 332
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f08029f

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    goto :goto_1
.end method

.method private updateFDNPreference()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 339
    const/4 v0, 0x0

    .line 341
    .local v0, "dualPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v1, v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    .end local v0    # "dualPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 344
    .restart local v0    # "dualPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_0
    iget v1, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v4}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 346
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 347
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 411
    :goto_0
    return-void

    .line 349
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2Count()I

    move-result v1

    if-nez v1, :cond_3

    .line 350
    iput v4, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    .line 351
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFDNPreference, mRetryPin2New="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v4}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 353
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 354
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const v2, 0x7f080186

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 356
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPuk2Count()I

    move-result v1

    if-nez v1, :cond_2

    .line 357
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 358
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const v2, 0x7f080187

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 363
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateEnableFDN()V

    goto :goto_0

    .line 360
    :cond_2
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 361
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const v2, 0x7f0802d4

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 365
    :cond_3
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "updateFDNPreference"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    iget-boolean v2, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 367
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 368
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const v2, 0x7f0802a1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 369
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const v2, 0x7f0802a5

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 370
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    iget-boolean v2, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 371
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateEnableFDN()V

    goto/16 :goto_0
.end method

.method private updateMenuEnableState(Z)V
    .locals 4
    .param p1, "bEnable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 615
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    iget-boolean v0, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 616
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    iget-boolean v3, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 617
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 618
    return-void

    :cond_0
    move v0, v2

    .line 615
    goto :goto_0

    :cond_1
    move v1, v2

    .line 616
    goto :goto_1
.end method

.method private validatePin(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "isPUK"    # Z

    .prologue
    const/16 v1, 0x8

    .line 307
    if-eqz p2, :cond_0

    move v0, v1

    .line 310
    .local v0, "pinMinimum":I
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 307
    .end local v0    # "pinMinimum":I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 310
    .restart local v0    # "pinMinimum":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 415
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 417
    const v3, 0x7f06000f

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/FdnSetting2;->addPreferencesFromResource(I)V

    .line 419
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 420
    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "simId"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    .line 421
    const-string v3, "Settings/FdnSetting2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate,Sim Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 424
    .local v2, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v3, "button_fdn_enable_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/EditPinPreference;

    iput-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    .line 425
    const-string v3, "button_change_pin2_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    .line 426
    const-string v3, "button_fdn_list_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    .line 428
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    if-eqz v3, :cond_0

    .line 429
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v3, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 430
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/mediatek/settings/FdnSetting2$2;

    invoke-direct {v4, p0}, Lcom/mediatek/settings/FdnSetting2$2;-><init>(Lcom/mediatek/settings/FdnSetting2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 452
    :cond_0
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    .line 453
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 455
    :cond_1
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 456
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 458
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 461
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/mediatek/settings/FdnSetting2;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 468
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v5, 0xa

    iget v6, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/phone/EditPinPreference;->initFdnModeData(Lcom/android/internal/telephony/Phone;II)V

    .line 469
    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "sub_title_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 470
    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "sub_title_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/FdnSetting2;->setTitle(Ljava/lang/CharSequence;)V

    .line 472
    :cond_3
    if-eqz p1, :cond_4

    .line 473
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateFDNPreference()V

    .line 475
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2Count()I

    move-result v3

    iput v3, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    .line 476
    const-string v3, "Settings/FdnSetting2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate,  mRetryPin2Old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->checkPhoneBookStateExit()V

    .line 478
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->setFDNSupport()V

    .line 479
    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 480
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_5

    .line 482
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 484
    :cond_5
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 529
    const-string v0, "Settings/FdnSetting2"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 531
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/FdnSetting2;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 532
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 516
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 517
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 524
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 519
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2;->finish()V

    .line 520
    const/4 v1, 0x1

    goto :goto_0

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .locals 2
    .param p1, "preference"    # Lcom/android/phone/EditPinPreference;
    .param p2, "positiveResult"    # Z

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_0

    .line 200
    const-string v0, "Settings/FdnSetting2"

    const-string v1, "onPinEntered"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0, p2}, Lcom/mediatek/settings/FdnSetting2;->toggleFDNEnable(Z)V

    .line 203
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 170
    const-string v2, "Settings/FdnSetting2"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    if-ne p1, v2, :cond_1

    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "pin2"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    if-ltz v2, :cond_0

    .line 175
    const-string v2, "simId"

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    :cond_0
    const-class v2, Lcom/android/phone/ChangeIccPinScreen;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/FdnSetting2;->startActivity(Landroid/content/Intent;)V

    .line 181
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    if-ne p1, v2, :cond_2

    .line 182
    const-string v2, "Settings/FdnSetting2"

    const-string v3, "onPreferenceClick mButtonFDNList"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->checkPhoneBookState()Z

    move-result v2

    if-nez v2, :cond_3

    .line 184
    const/4 v1, 0x0

    .line 192
    :cond_2
    :goto_0
    return v1

    .line 186
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/FdnList;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .restart local v0    # "intent":Landroid/content/Intent;
    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    if-ltz v2, :cond_4

    .line 188
    const-string v2, "simId"

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    :cond_4
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/FdnSetting2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 488
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 489
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 491
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateFDNPreference()V

    .line 493
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 495
    .local v0, "fdnDialog":Landroid/app/Dialog;
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, mRetryPin2New= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRetryPin2Old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget v1, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    if-eq v1, v2, :cond_1

    .line 499
    iget v1, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    iput v1, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    .line 500
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, fdnDialog= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    if-eqz v0, :cond_0

    .line 502
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, fdnDialog.isShowing()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, second mRetryPin2New= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRetryPin2Old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "onResume, isShowing"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 512
    :cond_1
    return-void
.end method

.method public showTipToast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 573
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 574
    return-void
.end method
