.class public Lcom/android/phone/SetupUnlockPIN2Lock;
.super Landroid/app/Activity;
.source "SetupUnlockPIN2Lock.java"


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field public static LOCKCATEGORY:Ljava/lang/String; = null

.field public static final LOGTAG:Ljava/lang/String; = "SetupUnlockPIN2Lock "

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

    sput-object v0, Lcom/android/phone/SetupUnlockPIN2Lock;->LOCKCATEGORY:Ljava/lang/String;

    .line 102
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/SetupUnlockPIN2Lock;->lockCategory:I

    .line 104
    sput v1, Lcom/android/phone/SetupUnlockPIN2Lock;->iSIMMEUnlockNo:I

    .line 107
    sput-boolean v1, Lcom/android/phone/SetupUnlockPIN2Lock;->result:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 94
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 110
    iput v0, p0, Lcom/android/phone/SetupUnlockPIN2Lock;->PwdLength:I

    .line 111
    iput v0, p0, Lcom/android/phone/SetupUnlockPIN2Lock;->mPwdLeftChances:I

    .line 315
    new-instance v0, Lcom/android/phone/SetupUnlockPIN2Lock$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SetupUnlockPIN2Lock$1;-><init>(Lcom/android/phone/SetupUnlockPIN2Lock;)V

    iput-object v0, p0, Lcom/android/phone/SetupUnlockPIN2Lock;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getRetryPin2Count(I)I
    .locals 2
    .param p1, "simId"    # I

    .prologue
    const/4 v1, -0x1

    .line 309
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 310
    const-string v0, "gsm.sim.retry.pin2.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 312
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.pin2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getRetryPuk2Count(I)I
    .locals 2
    .param p1, "simId"    # I

    .prologue
    const/4 v1, -0x1

    .line 303
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 304
    const-string v0, "gsm.sim.retry.puk2.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 306
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.puk2"

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
    const-string v1, "SetupUnlockPIN2Lock "

    const-string v2, "[onCreate]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/SetupUnlockPIN2Lock;->requestWindowFeature(I)Z

    .line 124
    invoke-virtual {p0}, Lcom/android/phone/SetupUnlockPIN2Lock;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 125
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 126
    const-string v1, "SetupUnlockPIN2Lock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate][iSIMMEUnlockNo]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/SetupUnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v1, "PhoneConstants.GEMINI_SIM_ID_KEY"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/phone/SetupUnlockPIN2Lock;->iSIMMEUnlockNo:I

    .line 131
    :cond_0
    const-string v1, "SetupUnlockPIN2Lock "

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
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x4000000

    .line 155
    const-string v4, "SetupUnlockPIN2Lock "

    const-string v5, "[onResume]+"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 192
    const-string v4, "SetupUnlockPIN2Lock "

    const-string v5, "[onResume][GEMINI Card]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget v4, Lcom/android/phone/SetupUnlockPIN2Lock;->iSIMMEUnlockNo:I

    if-nez v4, :cond_1

    .line 195
    const-string v4, "SetupUnlockPIN2Lock "

    const-string v5, "[onResume][GEMINI Card][SIM1]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0, v8}, Lcom/android/phone/SetupUnlockPIN2Lock;->getRetryPin2Count(I)I

    move-result v2

    .line 198
    .local v2, "retryCount":I
    const-string v4, "SetupUnlockPIN2Lock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onResume][GEMINI Card][SIM1][PIN Retries Left] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    if-lez v2, :cond_0

    .line 201
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/UnlockPIN2Lock;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 203
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "PINLEFTRETRIES"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    const-string v4, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v5, Lcom/android/phone/SetupUnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 206
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v1}, Lcom/android/phone/SetupUnlockPIN2Lock;->startActivity(Landroid/content/Intent;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/phone/SetupUnlockPIN2Lock;->finish()V

    .line 257
    :goto_0
    return-void

    .line 214
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 216
    .restart local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {p0, v8}, Lcom/android/phone/SetupUnlockPIN2Lock;->getRetryPuk2Count(I)I

    move-result v3

    .line 217
    .local v3, "retryPUKCount":I
    const-string v4, "PUKPHASE"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v4, "PUKLEFTRETRIES"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    const-string v4, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v5, Lcom/android/phone/SetupUnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 221
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0, v1}, Lcom/android/phone/SetupUnlockPIN2Lock;->startActivity(Landroid/content/Intent;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/phone/SetupUnlockPIN2Lock;->finish()V

    goto :goto_0

    .line 229
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "retryCount":I
    .end local v3    # "retryPUKCount":I
    :cond_1
    const-string v4, "SetupUnlockPIN2Lock "

    const-string v5, "[onResume][GEMINI Card][SIM2]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0, v9}, Lcom/android/phone/SetupUnlockPIN2Lock;->getRetryPin2Count(I)I

    move-result v2

    .line 231
    .restart local v2    # "retryCount":I
    const-string v4, "SetupUnlockPIN2Lock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onResume][GEMINI Card][SIM2][PIN Retries Left] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    if-lez v2, :cond_2

    .line 234
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/UnlockPIN2Lock;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 236
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v4, "PINLEFTRETRIES"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    const-string v4, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v5, Lcom/android/phone/SetupUnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 238
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 239
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, v1}, Lcom/android/phone/SetupUnlockPIN2Lock;->startActivity(Landroid/content/Intent;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/phone/SetupUnlockPIN2Lock;->finish()V

    goto :goto_0

    .line 247
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 249
    .restart local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {p0, v9}, Lcom/android/phone/SetupUnlockPIN2Lock;->getRetryPuk2Count(I)I

    move-result v3

    .line 250
    .restart local v3    # "retryPUKCount":I
    const-string v4, "PUKPHASE"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v4, "PUKLEFTRETRIES"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    const-string v4, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v5, Lcom/android/phone/SetupUnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 254
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 255
    invoke-virtual {p0, v1}, Lcom/android/phone/SetupUnlockPIN2Lock;->startActivity(Landroid/content/Intent;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/phone/SetupUnlockPIN2Lock;->finish()V

    goto/16 :goto_0
.end method

.method public sendVerifyResult(IZ)V
    .locals 4
    .param p1, "verifyType"    # I
    .param p2, "bRet"    # Z

    .prologue
    .line 284
    const-string v1, "SetupUnlockPIN2Lock "

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

    .line 286
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 290
    .local v0, "retIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 291
    const-string v1, "SetupUnlockPIN2Lock "

    const-string v2, "sendVerifyResult new retIntent failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_0
    return-void

    .line 294
    :cond_0
    const-string v1, "verfiy_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 296
    const-string v1, "verfiy_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0, v0}, Lcom/android/phone/SetupUnlockPIN2Lock;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
