.class Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendBtSimapProfile"
.end annotation


# static fields
.field private static final BTSAP_CONNECT_COMPLETE:I = 0x12c

.field private static final BTSAP_DISCONNECT_COMPLETE:I = 0x12d

.field private static final BTSAP_POWEROFF_COMPLETE:I = 0x12f

.field private static final BTSAP_POWERON_COMPLETE:I = 0x12e

.field private static final BTSAP_RESETSIM_COMPLETE:I = 0x130

.field private static final BTSAP_TRANSFER_APDU_COMPLETE:I = 0x131

.field static final sInstSync:Ljava/lang/Object;

.field private static sInstance:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;


# instance fields
.field private mBtRsp:Landroid/telephony/BtSimapOperResponse;

.field private mBtSapPhone:Lcom/android/internal/telephony/Phone;

.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:Ljava/util/ArrayList;

.field private mRet:I

.field private mStrResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2148
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->sInstSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v1, 0x0

    .line 2165
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    .line 2141
    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mStrResult:Ljava/lang/String;

    .line 2143
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    .line 2166
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    .line 2167
    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    .line 2168
    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mStrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2138
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mStrResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Landroid/telephony/BtSimapOperResponse;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 2138
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    .prologue
    .line 2138
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;
    .param p1, "x1"    # I

    .prologue
    .line 2138
    iput p1, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    return p1
.end method

.method public static getInstance(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 2158
    sget-object v1, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->sInstSync:Ljava/lang/Object;

    monitor-enter v1

    .line 2159
    :try_start_0
    sget-object v0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->sInstance:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    if-nez v0, :cond_0

    .line 2160
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->sInstance:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    .line 2162
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2163
    sget-object v0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->sInstance:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    return-object v0

    .line 2162
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method declared-synchronized btSimapApduRequest(ILjava/lang/String;)I
    .locals 9
    .param p1, "type"    # I
    .param p2, "cmdAPDU"    # Ljava/lang/String;

    .prologue
    .line 2577
    monitor-enter p0

    const/4 v7, 0x0

    .line 2578
    .local v7, "ret":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2580
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2581
    :catch_0
    move-exception v6

    .line 2582
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2577
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2585
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    .line 2586
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x131

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 2589
    .local v4, "callback":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getBtConnectedSimId()I

    move-result v5

    .line 2590
    .local v5, "simId":I
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapApduRequest GEMINI connect Sim is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    if-eqz v5, :cond_1

    const/4 v0, 0x1

    if-ne v5, v0, :cond_2

    .line 2592
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x5

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendBTSIMProfileGemini(IILjava/lang/String;Landroid/os/Message;I)V

    .line 2601
    :goto_1
    iget-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    .line 2603
    :try_start_4
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "wait for done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2605
    :catch_1
    move-exception v6

    .line 2607
    .restart local v6    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 2594
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const/4 v7, 0x7

    move v8, v7

    .line 2618
    .end local v7    # "ret":I
    .local v8, "ret":I
    :goto_2
    monitor-exit p0

    return v8

    .line 2610
    .end local v8    # "ret":I
    .restart local v7    # "ret":I
    :cond_3
    :try_start_6
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    if-nez v0, :cond_4

    .line 2612
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btSimapApduRequest APDU "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v2}, Landroid/telephony/BtSimapOperResponse;->getApduString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    :goto_3
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapApduRequest ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 2618
    .end local v7    # "ret":I
    .restart local v8    # "ret":I
    goto :goto_2

    .line 2614
    .end local v8    # "ret":I
    .restart local v7    # "ret":I
    :cond_4
    iget v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method declared-synchronized btSimapConnectSIM(I)I
    .locals 8
    .param p1, "simId"    # I

    .prologue
    .line 2359
    monitor-enter p0

    const/4 v7, 0x0

    .line 2360
    .local v7, "ret":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2362
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2363
    :catch_0
    move-exception v6

    .line 2364
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2359
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2367
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    .line 2368
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 2370
    .local v4, "callback":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendBTSIMProfileGemini(IILjava/lang/String;Landroid/os/Message;I)V

    .line 2375
    :goto_1
    iget-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_1

    .line 2377
    :try_start_4
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "wait for done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2379
    :catch_1
    move-exception v6

    .line 2381
    .restart local v6    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 2385
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    if-nez v0, :cond_2

    .line 2389
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setBtConnectedSimId(I)V

    .line 2390
    const-string v1, "PhoneInterfaceManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapConnectSIM GEMINI connect Sim is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getBtConnectedSimId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btSimapConnectSIM curType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v2}, Landroid/telephony/BtSimapOperResponse;->getCurType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SupType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v2}, Landroid/telephony/BtSimapOperResponse;->getSupportType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ATR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v2}, Landroid/telephony/BtSimapOperResponse;->getAtrString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    :goto_2
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapConnectSIM ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2398
    monitor-exit p0

    return v7

    .line 2394
    :cond_2
    :try_start_6
    iget v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method declared-synchronized btSimapDisconnectSIM()I
    .locals 9

    .prologue
    const/4 v3, 0x1

    .line 2402
    monitor-enter p0

    const/4 v7, 0x0

    .line 2403
    .local v7, "ret":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2405
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2406
    :catch_0
    move-exception v6

    .line 2407
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2402
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2410
    :cond_0
    :try_start_3
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "synchronized btSimapDisconnectSIM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    .line 2412
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12d

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 2414
    .local v4, "callback":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getBtConnectedSimId()I

    move-result v5

    .line 2415
    .local v5, "simId":I
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapDisconnectSIM GEMINI connect Sim is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    if-eqz v5, :cond_1

    if-ne v5, v3, :cond_2

    .line 2417
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendBTSIMProfileGemini(IILjava/lang/String;Landroid/os/Message;I)V

    .line 2427
    :goto_1
    iget-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    .line 2429
    :try_start_4
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "wait for done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2431
    :catch_1
    move-exception v6

    .line 2433
    .restart local v6    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 2419
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const/4 v7, 0x7

    move v8, v7

    .line 2444
    .end local v7    # "ret":I
    .local v8, "ret":I
    :goto_2
    monitor-exit p0

    return v8

    .line 2436
    .end local v8    # "ret":I
    .restart local v7    # "ret":I
    :cond_3
    :try_start_6
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    if-nez v0, :cond_4

    .line 2439
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setBtConnectedSimId(I)V

    .line 2442
    :cond_4
    iget v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    .line 2443
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapDisconnectSIM ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v8, v7

    .line 2444
    .end local v7    # "ret":I
    .restart local v8    # "ret":I
    goto :goto_2
.end method

.method declared-synchronized btSimapPowerOffSIM()I
    .locals 9

    .prologue
    .line 2537
    monitor-enter p0

    const/4 v7, 0x0

    .line 2538
    .local v7, "ret":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2540
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2541
    :catch_0
    move-exception v6

    .line 2542
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2537
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2545
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    .line 2546
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12f

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 2549
    .local v4, "callback":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getBtConnectedSimId()I

    move-result v5

    .line 2550
    .local v5, "simId":I
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapPowerOffSIM GEMINI connect Sim is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    if-eqz v5, :cond_1

    const/4 v0, 0x1

    if-ne v5, v0, :cond_2

    .line 2552
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendBTSIMProfileGemini(IILjava/lang/String;Landroid/os/Message;I)V

    .line 2561
    :goto_1
    iget-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    .line 2563
    :try_start_4
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "wait for done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2565
    :catch_1
    move-exception v6

    .line 2567
    .restart local v6    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 2554
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const/4 v7, 0x7

    move v8, v7

    .line 2573
    .end local v7    # "ret":I
    .local v8, "ret":I
    :goto_2
    monitor-exit p0

    return v8

    .line 2570
    .end local v8    # "ret":I
    .restart local v7    # "ret":I
    :cond_3
    :try_start_6
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    iget v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    .line 2572
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapPowerOffSIM ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v8, v7

    .line 2573
    .end local v7    # "ret":I
    .restart local v8    # "ret":I
    goto :goto_2
.end method

.method declared-synchronized btSimapPowerOnSIM(I)I
    .locals 9
    .param p1, "type"    # I

    .prologue
    .line 2493
    monitor-enter p0

    const/4 v7, 0x0

    .line 2494
    .local v7, "ret":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2496
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2497
    :catch_0
    move-exception v6

    .line 2498
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2493
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2501
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    .line 2502
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12e

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 2505
    .local v4, "callback":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getBtConnectedSimId()I

    move-result v5

    .line 2506
    .local v5, "simId":I
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapPowerOnSIM GEMINI connect Sim is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    if-eqz v5, :cond_1

    const/4 v0, 0x1

    if-ne v5, v0, :cond_2

    .line 2508
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x2

    const/4 v3, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendBTSIMProfileGemini(IILjava/lang/String;Landroid/os/Message;I)V

    .line 2517
    :goto_1
    iget-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    .line 2519
    :try_start_4
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "wait for done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2521
    :catch_1
    move-exception v6

    .line 2523
    .restart local v6    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 2510
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const/4 v7, 0x7

    move v8, v7

    .line 2533
    .end local v7    # "ret":I
    .local v8, "ret":I
    :goto_2
    monitor-exit p0

    return v8

    .line 2526
    .end local v8    # "ret":I
    .restart local v7    # "ret":I
    :cond_3
    :try_start_6
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    if-nez v0, :cond_4

    .line 2528
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btSimapPowerOnSIM curType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v2}, Landroid/telephony/BtSimapOperResponse;->getCurType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ATR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v2}, Landroid/telephony/BtSimapOperResponse;->getAtrString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    :goto_3
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapPowerOnSIM ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 2533
    .end local v7    # "ret":I
    .restart local v8    # "ret":I
    goto :goto_2

    .line 2530
    .end local v8    # "ret":I
    .restart local v7    # "ret":I
    :cond_4
    iget v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method declared-synchronized btSimapResetSIM(I)I
    .locals 9
    .param p1, "type"    # I

    .prologue
    .line 2448
    monitor-enter p0

    const/4 v7, 0x0

    .line 2449
    .local v7, "ret":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2451
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2452
    :catch_0
    move-exception v6

    .line 2453
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2448
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2456
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    .line 2457
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x130

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 2460
    .local v4, "callback":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getBtConnectedSimId()I

    move-result v5

    .line 2461
    .local v5, "simId":I
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapResetSIM GEMINI connect Sim is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    if-eqz v5, :cond_1

    const/4 v0, 0x1

    if-ne v5, v0, :cond_2

    .line 2463
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x4

    const/4 v3, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendBTSIMProfileGemini(IILjava/lang/String;Landroid/os/Message;I)V

    .line 2472
    :goto_1
    iget-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    .line 2474
    :try_start_4
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "wait for done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2476
    :catch_1
    move-exception v6

    .line 2478
    .restart local v6    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 2465
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const/4 v7, 0x7

    move v8, v7

    .line 2489
    .end local v7    # "ret":I
    .local v8, "ret":I
    :goto_2
    monitor-exit p0

    return v8

    .line 2481
    .end local v8    # "ret":I
    .restart local v7    # "ret":I
    :cond_3
    :try_start_6
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    if-nez v0, :cond_4

    .line 2483
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btSimapResetSIM curType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v2}, Landroid/telephony/BtSimapOperResponse;->getCurType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ATR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v2}, Landroid/telephony/BtSimapOperResponse;->getAtrString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    :goto_3
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapResetSIM ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 2489
    .end local v7    # "ret":I
    .restart local v8    # "ret":I
    goto :goto_2

    .line 2485
    .end local v8    # "ret":I
    .restart local v7    # "ret":I
    :cond_4
    iget v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method public run()V
    .locals 1

    .prologue
    .line 2177
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2178
    monitor-enter p0

    .line 2179
    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;

    .line 2353
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2354
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2355
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2356
    return-void

    .line 2354
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setBtOperResponse(Landroid/telephony/BtSimapOperResponse;)V
    .locals 0
    .param p1, "btRsp"    # Landroid/telephony/BtSimapOperResponse;

    .prologue
    .line 2172
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    .line 2173
    return-void
.end method
