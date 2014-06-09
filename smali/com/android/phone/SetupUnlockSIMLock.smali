.class public Lcom/android/phone/SetupUnlockSIMLock;
.super Landroid/app/Activity;
.source "SetupUnlockSIMLock.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "SetupUnlockSIMLock "

.field private static final SIM1QUERY:I = 0x78

.field private static final SIM2QUERY:I = 0x7a

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

.field public static iNextUnlock:I

.field public static iSIMMEUnlockNo:I


# instance fields
.field public SIM1MELockStatus:[I

.field public SIM2MELockStatus:[I

.field public iSIMMELockStatus:I

.field mHandlerSIMLock:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/SetupUnlockSIMLock;->iSIMMEUnlockNo:I

    .line 98
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/SetupUnlockSIMLock;->iNextUnlock:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 92
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/SetupUnlockSIMLock;->SIM1MELockStatus:[I

    .line 95
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/phone/SetupUnlockSIMLock;->SIM2MELockStatus:[I

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/SetupUnlockSIMLock;->iSIMMELockStatus:I

    .line 219
    new-instance v0, Lcom/android/phone/SetupUnlockSIMLock$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SetupUnlockSIMLock$1;-><init>(Lcom/android/phone/SetupUnlockSIMLock;)V

    iput-object v0, p0, Lcom/android/phone/SetupUnlockSIMLock;->mHandlerSIMLock:Landroid/os/Handler;

    .line 388
    new-instance v0, Lcom/android/phone/SetupUnlockSIMLock$2;

    invoke-direct {v0, p0}, Lcom/android/phone/SetupUnlockSIMLock$2;-><init>(Lcom/android/phone/SetupUnlockSIMLock;)V

    iput-object v0, p0, Lcom/android/phone/SetupUnlockSIMLock;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 94
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 95
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static packageArray([I[I)I
    .locals 13
    .param p0, "ArySrc1"    # [I
    .param p1, "ArySrc2"    # [I

    .prologue
    const-wide/high16 v11, 0x4000000000000000L

    .line 343
    array-length v1, p0

    .line 344
    .local v1, "iAry1Length":I
    array-length v2, p1

    .line 345
    .local v2, "iAry2Length":I
    add-int v3, v1, v2

    .line 346
    .local v3, "iArySumLength":I
    const/4 v4, 0x0

    .line 347
    .local v4, "intTempSrc":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 348
    int-to-double v5, v4

    aget v7, p0, v0

    int-to-double v7, v7

    add-int/lit8 v9, v3, -0x1

    sub-int/2addr v9, v0

    int-to-double v9, v9

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-int v4, v5

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 351
    int-to-double v5, v4

    aget v7, p1, v0

    int-to-double v7, v7

    add-int/lit8 v9, v2, -0x1

    sub-int/2addr v9, v0

    int-to-double v9, v9

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-int v4, v5

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 353
    :cond_1
    return v4
.end method

.method public static resetISIMMELockStatus([I[III)I
    .locals 7
    .param p0, "SIM1MELockStatus"    # [I
    .param p1, "SIM2MELockStatus"    # [I
    .param p2, "CurrentSIMNO"    # I
    .param p3, "unlockedType"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 303
    const/4 v2, 0x0

    .line 317
    .local v2, "tempISIMMELockStatus":I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 318
    .local v1, "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    if-nez p2, :cond_2

    .line 319
    if-eq p3, v5, :cond_0

    .line 320
    aput v4, p0, p3

    .line 322
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_1

    .line 323
    aput v4, p1, v0

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_1
    invoke-static {p0, p1}, Lcom/android/phone/SetupUnlockSIMLock;->packageArray([I[I)I

    move-result v2

    move v3, v2

    .line 335
    .end local v2    # "tempISIMMELockStatus":I
    .local v3, "tempISIMMELockStatus":I
    :goto_1
    return v3

    .line 328
    .end local v0    # "i":I
    .end local v3    # "tempISIMMELockStatus":I
    .restart local v2    # "tempISIMMELockStatus":I
    :cond_2
    if-eq p3, v5, :cond_3

    .line 329
    aput v4, p1, p3

    .line 331
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v6, :cond_4

    .line 332
    aput v4, p0, v0

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 334
    :cond_4
    invoke-static {p0, p1}, Lcom/android/phone/SetupUnlockSIMLock;->packageArray([I[I)I

    move-result v2

    move v3, v2

    .line 335
    .end local v2    # "tempISIMMELockStatus":I
    .restart local v3    # "tempISIMMELockStatus":I
    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    const-string v1, "SetupUnlockSIMLock "

    const-string v2, "[onCreate]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/SetupUnlockSIMLock;->requestWindowFeature(I)Z

    .line 111
    invoke-virtual {p0}, Lcom/android/phone/SetupUnlockSIMLock;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 112
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "SetupUnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate][Special bundle]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-eqz v0, :cond_0

    .line 114
    const-string v1, "SetupUnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate][Special bundle not null]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v1, "PhoneConstants.GEMINI_SIM_ID_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/phone/SetupUnlockSIMLock;->iSIMMEUnlockNo:I

    .line 121
    :cond_0
    const-string v1, "SetupUnlockSIMLock "

    const-string v2, "[onCreate]-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "SetupUnlockSIMLock "

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 142
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 156
    const-string v0, "SetupUnlockSIMLock "

    const-string v1, "[onNewIntent]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 158
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "SetupUnlockSIMLock "

    const-string v1, "[onPause]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 149
    return-void
.end method

.method protected onResume()V
    .locals 82

    .prologue
    .line 168
    const-string v1, "SetupUnlockSIMLock "

    const-string v2, "[onResume]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v1, "SetupUnlockSIMLock "

    const-string v2, "[onResume][Gemini Card]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v81

    check-cast v81, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 188
    .local v81, "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    sget v1, Lcom/android/phone/SetupUnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v1, :cond_1

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SetupUnlockSIMLock;->mHandlerSIMLock:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    .line 190
    .local v8, "msgQuerySIM1LockStatusNP":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SetupUnlockSIMLock;->mHandlerSIMLock:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v16

    .line 191
    .local v16, "msgQuerySIM1LockStatusNSP":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SetupUnlockSIMLock;->mHandlerSIMLock:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v24

    .line 192
    .local v24, "msgQuerySIM1LockStatusSP":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SetupUnlockSIMLock;->mHandlerSIMLock:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v32

    .line 193
    .local v32, "msgQuerySIM1LockStatusCP":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SetupUnlockSIMLock;->mHandlerSIMLock:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v40

    .line 194
    .local v40, "msgQuerySIM1LockStatusSIMP":Landroid/os/Message;
    const/4 v1, 0x0

    move-object/from16 v0, v81

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 195
    const/4 v1, 0x0

    move-object/from16 v0, v81

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v16}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 196
    const/4 v1, 0x0

    move-object/from16 v0, v81

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v17

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-interface/range {v17 .. v24}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 197
    const/4 v1, 0x0

    move-object/from16 v0, v81

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v25

    const/16 v26, 0x3

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-interface/range {v25 .. v32}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 198
    const/4 v1, 0x0

    move-object/from16 v0, v81

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v33

    const/16 v34, 0x4

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-interface/range {v33 .. v40}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 214
    .end local v8    # "msgQuerySIM1LockStatusNP":Landroid/os/Message;
    .end local v16    # "msgQuerySIM1LockStatusNSP":Landroid/os/Message;
    .end local v24    # "msgQuerySIM1LockStatusSP":Landroid/os/Message;
    .end local v32    # "msgQuerySIM1LockStatusCP":Landroid/os/Message;
    .end local v40    # "msgQuerySIM1LockStatusSIMP":Landroid/os/Message;
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 215
    const-string v1, "SetupUnlockSIMLock "

    const-string v2, "[onResume]-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void

    .line 200
    :cond_1
    sget v1, Lcom/android/phone/SetupUnlockSIMLock;->iSIMMEUnlockNo:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SetupUnlockSIMLock;->mHandlerSIMLock:Landroid/os/Handler;

    const/16 v2, 0x7a

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v48

    .line 202
    .local v48, "msgQuerySIM2LockStatusNP":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SetupUnlockSIMLock;->mHandlerSIMLock:Landroid/os/Handler;

    const/16 v2, 0x7a

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v56

    .line 203
    .local v56, "msgQuerySIM2LockStatusNSP":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SetupUnlockSIMLock;->mHandlerSIMLock:Landroid/os/Handler;

    const/16 v2, 0x7a

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v64

    .line 204
    .local v64, "msgQuerySIM2LockStatusSP":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SetupUnlockSIMLock;->mHandlerSIMLock:Landroid/os/Handler;

    const/16 v2, 0x7a

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v72

    .line 205
    .local v72, "msgQuerySIM2LockStatusCP":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SetupUnlockSIMLock;->mHandlerSIMLock:Landroid/os/Handler;

    const/16 v2, 0x7a

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v80

    .line 206
    .local v80, "msgQuerySIM2LockStatusSIMP":Landroid/os/Message;
    const/4 v1, 0x1

    move-object/from16 v0, v81

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v41

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-interface/range {v41 .. v48}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 207
    const/4 v1, 0x1

    move-object/from16 v0, v81

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v49

    const/16 v50, 0x1

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    invoke-interface/range {v49 .. v56}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 208
    const/4 v1, 0x1

    move-object/from16 v0, v81

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v57

    const/16 v58, 0x2

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    invoke-interface/range {v57 .. v64}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 209
    const/4 v1, 0x1

    move-object/from16 v0, v81

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v65

    const/16 v66, 0x3

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    invoke-interface/range {v65 .. v72}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 210
    const/4 v1, 0x1

    move-object/from16 v0, v81

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v73

    const/16 v74, 0x4

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    invoke-interface/range {v73 .. v80}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "SetupUnlockSIMLock "

    const-string v1, "[onStart]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 133
    return-void
.end method

.method public sendVerifyResult(IZ)V
    .locals 4
    .param p1, "verifyType"    # I
    .param p2, "bRet"    # Z

    .prologue
    .line 371
    const-string v1, "SetupUnlockSIMLock "

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

    .line 373
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 377
    .local v0, "retIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 378
    const-string v1, "SetupUnlockSIMLock "

    const-string v2, "sendVerifyResult new retIntent failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :goto_0
    return-void

    .line 381
    :cond_0
    const-string v1, "verfiy_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    const-string v1, "verfiy_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 385
    invoke-virtual {p0, v0}, Lcom/android/phone/SetupUnlockSIMLock;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
