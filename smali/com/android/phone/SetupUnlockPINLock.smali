.class public Lcom/android/phone/SetupUnlockPINLock;
.super Landroid/app/Activity;
.source "SetupUnlockPINLock.java"


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field public static LOCKCATEGORY:Ljava/lang/String; = null

.field public static final LOGTAG:Ljava/lang/String; = "SetupUnlockPINLock "

.field public static final START_TYPE:Ljava/lang/String; = "start_type"

.field public static final START_TYPE_REQ:Ljava/lang/String; = "request"

.field public static final START_TYPE_RSP:Ljava/lang/String; = "response"

.field static final VERIFY_RESULT:Ljava/lang/String; = "verfiy_result"

.field static final VERIFY_TYPE:Ljava/lang/String; = "verfiy_type"

.field static final VERIFY_TYPE_PIN:I = 0x1f5

.field static final VERIFY_TYPE_PIN2:I = 0x1f8

.field static final VERIFY_TYPE_PUK:I = 0x1f6

.field static final VERIFY_TYPE_PUK2:I = 0x1f9

.field static final VERIFY_TYPE_SIMMELOCK:I = 0x1f7

.field public static iSIMMEUnlockNo:I

.field private static lockCategory:I

.field private static result:Z


# instance fields
.field public PwdLength:I

.field public mPwdLeftChances:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field public progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    const-string v0, "LockCategory"

    sput-object v0, Lcom/android/phone/SetupUnlockPINLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 102
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/SetupUnlockPINLock;->lockCategory:I

    .line 104
    sput v1, Lcom/android/phone/SetupUnlockPINLock;->iSIMMEUnlockNo:I

    .line 107
    sput-boolean v1, Lcom/android/phone/SetupUnlockPINLock;->result:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 94
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 110
    iput v0, p0, Lcom/android/phone/SetupUnlockPINLock;->PwdLength:I

    .line 111
    iput v0, p0, Lcom/android/phone/SetupUnlockPINLock;->mPwdLeftChances:I

    .line 384
    new-instance v0, Lcom/android/phone/SetupUnlockPINLock$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SetupUnlockPINLock$1;-><init>(Lcom/android/phone/SetupUnlockPINLock;)V

    iput-object v0, p0, Lcom/android/phone/SetupUnlockPINLock;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getRetryPinCount(I)I
    .locals 2
    .param p1, "simId"    # I

    .prologue
    const/4 v1, -0x1

    .line 378
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 379
    const-string v0, "gsm.sim.retry.pin1.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 381
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.pin1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getRetryPukCount(I)I
    .locals 2
    .param p1, "simId"    # I

    .prologue
    const/4 v1, -0x1

    .line 372
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 373
    const-string v0, "gsm.sim.retry.puk1.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 375
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.puk1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    const-string v1, "SetupUnlockPINLock "

    const-string v2, "[onCreate]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/SetupUnlockPINLock;->requestWindowFeature(I)Z

    .line 124
    invoke-virtual {p0}, Lcom/android/phone/SetupUnlockPINLock;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 125
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 126
    const-string v1, "PhoneConstants.GEMINI_SIM_ID_KEY"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/phone/SetupUnlockPINLock;->iSIMMEUnlockNo:I

    .line 127
    const-string v1, "SetupUnlockPINLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate][iSIMMEUnlockNo]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/SetupUnlockPINLock;->iSIMMEUnlockNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    const-string v1, "SetupUnlockPINLock "

    const-string v2, "[unlock][onCreate]-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 143
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 149
    return-void
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x4000000

    .line 155
    const-string v5, "SetupUnlockPINLock "

    const-string v6, "[onResume]+"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 217
    const-string v5, "SetupUnlockPINLock "

    const-string v6, "[onResume][GEMINI Card]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 219
    .local v2, "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    sget v5, Lcom/android/phone/SetupUnlockPINLock;->iSIMMEUnlockNo:I

    if-nez v5, :cond_3

    .line 221
    const-string v5, "SetupUnlockPINLock "

    const-string v6, "[onResume][GEMINI Card][SIM1]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v6, :cond_1

    .line 223
    const-string v5, "SetupUnlockPINLock "

    const-string v6, "[onResume][GEMINI Card][SIM1][PIN_REQUIRED]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-direct {p0, v9}, Lcom/android/phone/SetupUnlockPINLock;->getRetryPinCount(I)I

    move-result v3

    .line 226
    .local v3, "retryCount":I
    const-string v5, "SetupUnlockPINLock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onResume][GEMINI Card][SIM1][PIN Retries Left] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    if-lez v3, :cond_0

    .line 229
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/phone/UnlockPINLock;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "PINLEFTRETRIES"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v6, Lcom/android/phone/SetupUnlockPINLock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 234
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0, v1}, Lcom/android/phone/SetupUnlockPINLock;->startActivity(Landroid/content/Intent;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/phone/SetupUnlockPINLock;->finish()V

    .line 326
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "retryCount":I
    :goto_0
    return-void

    .line 242
    .restart local v3    # "retryCount":I
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/phone/UnlockPUKLock;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 244
    .restart local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {p0, v9}, Lcom/android/phone/SetupUnlockPINLock;->getRetryPukCount(I)I

    move-result v4

    .line 245
    .local v4, "retryPUKCount":I
    const-string v5, "PUKPHASE"

    const-string v6, "1"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v5, "PUKLEFTRETRIES"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v6, Lcom/android/phone/SetupUnlockPINLock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 249
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0, v1}, Lcom/android/phone/SetupUnlockPINLock;->startActivity(Landroid/content/Intent;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/phone/SetupUnlockPINLock;->finish()V

    goto :goto_0

    .line 254
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "retryCount":I
    .end local v4    # "retryPUKCount":I
    :cond_1
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v6, :cond_2

    .line 255
    const-string v5, "SetupUnlockPINLock "

    const-string v6, "[onResume][GEMINI Card][SIM1][PUK_REQUIRED]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-direct {p0, v9}, Lcom/android/phone/SetupUnlockPINLock;->getRetryPukCount(I)I

    move-result v4

    .line 257
    .restart local v4    # "retryPUKCount":I
    const-string v5, "SetupUnlockPINLock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onResume][GEMINI Card][SIM1][PUK Retries Left] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/phone/UnlockPUKLock;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 261
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v5, "PUKPHASE"

    const-string v6, "1"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v5, "PUKLEFTRETRIES"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 263
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v6, Lcom/android/phone/SetupUnlockPINLock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 265
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0, v1}, Lcom/android/phone/SetupUnlockPINLock;->startActivity(Landroid/content/Intent;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/phone/SetupUnlockPINLock;->finish()V

    goto/16 :goto_0

    .line 270
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "retryPUKCount":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/SetupUnlockPINLock;->finish()V

    goto/16 :goto_0

    .line 277
    :cond_3
    const-string v5, "SetupUnlockPINLock "

    const-string v6, "[onResume][GEMINI Card][SIM2]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v2, v10}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v6, :cond_5

    .line 280
    const-string v5, "SetupUnlockPINLock "

    const-string v6, "[onResume][GEMINI Card][SIM2][PIN_REQUIRED]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-direct {p0, v10}, Lcom/android/phone/SetupUnlockPINLock;->getRetryPinCount(I)I

    move-result v3

    .line 282
    .restart local v3    # "retryCount":I
    const-string v5, "SetupUnlockPINLock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onResume][GEMINI Card][SIM2][PIN Retries Left] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    if-lez v3, :cond_4

    .line 285
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/phone/UnlockPINLock;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 287
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v5, "PINLEFTRETRIES"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v6, Lcom/android/phone/SetupUnlockPINLock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 290
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v1}, Lcom/android/phone/SetupUnlockPINLock;->startActivity(Landroid/content/Intent;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/phone/SetupUnlockPINLock;->finish()V

    goto/16 :goto_0

    .line 298
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/phone/UnlockPUKLock;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 300
    .restart local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {p0, v10}, Lcom/android/phone/SetupUnlockPINLock;->getRetryPukCount(I)I

    move-result v4

    .line 301
    .restart local v4    # "retryPUKCount":I
    const-string v5, "PUKPHASE"

    const-string v6, "1"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v5, "PUKLEFTRETRIES"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v6, Lcom/android/phone/SetupUnlockPINLock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 305
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0, v1}, Lcom/android/phone/SetupUnlockPINLock;->startActivity(Landroid/content/Intent;)V

    .line 307
    invoke-virtual {p0}, Lcom/android/phone/SetupUnlockPINLock;->finish()V

    goto/16 :goto_0

    .line 309
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "retryCount":I
    .end local v4    # "retryPUKCount":I
    :cond_5
    invoke-virtual {v2, v10}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v6, :cond_6

    .line 310
    const-string v5, "SetupUnlockPINLock "

    const-string v6, "[onResume][GEMINI Card][SIM2][PUK_REQUIRED]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-direct {p0, v10}, Lcom/android/phone/SetupUnlockPINLock;->getRetryPukCount(I)I

    move-result v4

    .line 312
    .restart local v4    # "retryPUKCount":I
    const-string v5, "SetupUnlockPINLock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onResume][GEMINI Card][SIM2][PUK Retries Left] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/phone/UnlockPUKLock;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 316
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v5, "PUKPHASE"

    const-string v6, "1"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v5, "PUKLEFTRETRIES"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v6, Lcom/android/phone/SetupUnlockPINLock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 319
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 320
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0, v1}, Lcom/android/phone/SetupUnlockPINLock;->startActivity(Landroid/content/Intent;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/phone/SetupUnlockPINLock;->finish()V

    goto/16 :goto_0

    .line 325
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "retryPUKCount":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/SetupUnlockPINLock;->finish()V

    goto/16 :goto_0
.end method

.method public sendVerifyResult(IZ)V
    .locals 4
    .param p1, "verifyType"    # I
    .param p2, "bRet"    # Z

    .prologue
    .line 353
    const-string v1, "SetupUnlockPINLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendVerifyResult verifyType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bRet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 359
    .local v0, "retIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 360
    const-string v1, "SetupUnlockPINLock "

    const-string v2, "sendVerifyResult new retIntent failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :goto_0
    return-void

    .line 363
    :cond_0
    const-string v1, "verfiy_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    const-string v1, "verfiy_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0, v0}, Lcom/android/phone/SetupUnlockPINLock;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
