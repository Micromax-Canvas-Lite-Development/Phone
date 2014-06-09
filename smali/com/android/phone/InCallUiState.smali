.class public Lcom/android/phone/InCallUiState;
.super Ljava/lang/Object;
.source "InCallUiState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallUiState$FakeCall;,
        Lcom/android/phone/InCallUiState$ProgressIndicationType;,
        Lcom/android/phone/InCallUiState$InCallScreenMode;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final INCALLSCREEN_NOT_EXIT_NORMAL:I = -0x1

.field static final INCALLSCREEN_NOT_EXIT_NOT_FORGROUND:I = 0x0

.field static final INCALLSCREEN_NOT_EXIT_NOT_INIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "InCallUiState"

.field static mLastInCallScreenStatus:I

.field private static sInstance:Lcom/android/phone/InCallUiState;


# instance fields
.field delayFinished:Z

.field dialpadContextText:Ljava/lang/String;

.field dialpadDigits:Ljava/lang/String;

.field inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

.field latestActiveCallOrigin:Ljava/lang/String;

.field latestActiveCallOriginTimeStamp:J

.field latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

.field private mContext:Landroid/content/Context;

.field mLastInCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

.field private mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

.field private mSlot:I

.field private mStrNumber:Ljava/lang/String;

.field private mmiMsg:Landroid/os/Message;

.field needToShowCallLostDialog:Z

.field private progressIndication:Lcom/android/phone/InCallUiState$ProgressIndicationType;

.field providerAddress:Ljava/lang/String;

.field providerGatewayUri:Landroid/net/Uri;

.field providerIcon:Landroid/graphics/drawable/Drawable;

.field providerInfoVisible:Z

.field providerLabel:Ljava/lang/CharSequence;

.field showAlreadyDisconnectedState:Z

.field showDialpad:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InCallUiState;->mSlot:I

    .line 132
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 134
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->mLastInCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 219
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    .line 349
    sget-object v0, Lcom/android/phone/InCallUiState$ProgressIndicationType;->NONE:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->progressIndication:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    .line 486
    iput-object v1, p0, Lcom/android/phone/InCallUiState;->mmiMsg:Landroid/os/Message;

    .line 500
    iput-object v1, p0, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallUiState;->delayFinished:Z

    .line 93
    iput-object p1, p0, Lcom/android/phone/InCallUiState;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/InCallUiState;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const-class v1, Lcom/android/phone/InCallUiState;

    monitor-enter v1

    .line 79
    :try_start_0
    sget-object v0, Lcom/android/phone/InCallUiState;->sInstance:Lcom/android/phone/InCallUiState;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/android/phone/InCallUiState;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallUiState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/InCallUiState;->sInstance:Lcom/android/phone/InCallUiState;

    .line 84
    :goto_0
    sget-object v0, Lcom/android/phone/InCallUiState;->sInstance:Lcom/android/phone/InCallUiState;

    monitor-exit v1

    return-object v0

    .line 82
    :cond_0
    const-string v0, "InCallUiState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/InCallUiState;->sInstance:Lcom/android/phone/InCallUiState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static isNormalInCallScreenState()Z
    .locals 2

    .prologue
    .line 518
    sget v0, Lcom/android/phone/InCallUiState;->mLastInCallScreenStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 482
    const-string v0, "InCallUiState"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void
.end method


# virtual methods
.method public clearPendingCallStatusCode()V
    .locals 1

    .prologue
    .line 291
    const-string v0, "clearPendingCallStatusCode()..."

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    .line 292
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    .line 293
    return-void
.end method

.method public clearProgressIndication()V
    .locals 1

    .prologue
    .line 358
    sget-object v0, Lcom/android/phone/InCallUiState$ProgressIndicationType;->NONE:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->progressIndication:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    .line 359
    return-void
.end method

.method public clearProviderInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallUiState;->providerInfoVisible:Z

    .line 414
    iput-object v1, p0, Lcom/android/phone/InCallUiState;->providerLabel:Ljava/lang/CharSequence;

    .line 415
    iput-object v1, p0, Lcom/android/phone/InCallUiState;->providerIcon:Landroid/graphics/drawable/Drawable;

    .line 416
    iput-object v1, p0, Lcom/android/phone/InCallUiState;->providerGatewayUri:Landroid/net/Uri;

    .line 417
    iput-object v1, p0, Lcom/android/phone/InCallUiState;->providerAddress:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public clearState()V
    .locals 1

    .prologue
    .line 522
    const-string v0, "clearState()"

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    .line 525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 526
    return-void
.end method

.method public dumpState()V
    .locals 2

    .prologue
    .line 459
    const-string v0, "dumpState():"

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - showDialpad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    - dialpadContextText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallUiState;->dialpadContextText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Lcom/android/phone/InCallUiState;->hasPendingCallStatusCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    const-string v0, "  - status indication is pending!"

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    - pending call status code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    .line 468
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - progressIndication: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallUiState;->progressIndication:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    .line 469
    iget-boolean v0, p0, Lcom/android/phone/InCallUiState;->providerInfoVisible:Z

    if-eqz v0, :cond_1

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - provider info VISIBLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallUiState;->providerLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallUiState;->providerIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallUiState;->providerGatewayUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallUiState;->providerAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    .line 478
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - latestActiveCallOrigin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    .line 479
    return-void

    .line 466
    :cond_0
    const-string v0, "  - pending call status code: none"

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :cond_1
    const-string v0, "  - provider info: none"

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->mStrNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingCallStatusCode()Lcom/android/phone/Constants$CallStatusCode;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPendingCallStatusCode() ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    return-object v0
.end method

.method getPendingUssdMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->mmiMsg:Landroid/os/Message;

    return-object v0
.end method

.method public getProgressIndication()Lcom/android/phone/InCallUiState$ProgressIndicationType;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->progressIndication:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    return-object v0
.end method

.method public getSlot()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/android/phone/InCallUiState;->mSlot:I

    return v0
.end method

.method hasPendingCallEvents()Z
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x0

    return v0
.end method

.method public hasPendingCallStatusCode()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasPendingCallStatusCode() ==> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    sget-object v4, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v0, v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 226
    goto :goto_0

    :cond_1
    move v1, v2

    .line 228
    goto :goto_1
.end method

.method public isProgressIndicationActive()Z
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->progressIndication:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->NONE:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNumberSlot(ILjava/lang/String;)V
    .locals 0
    .param p1, "slot"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 263
    iput p1, p0, Lcom/android/phone/InCallUiState;->mSlot:I

    .line 264
    iput-object p2, p0, Lcom/android/phone/InCallUiState;->mStrNumber:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V
    .locals 3
    .param p1, "status"    # Lcom/android/phone/Constants$CallStatusCode;

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPendingCallStatusCode( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v0, v1, :cond_0

    .line 252
    const-string v0, "InCallUiState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPendingCallStatusCode: setting new code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but a previous code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was already pending!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    iput-object p1, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    .line 257
    return-void
.end method

.method setPendingUssdMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/phone/InCallUiState;->mmiMsg:Landroid/os/Message;

    .line 489
    return-void
.end method

.method public setProgressIndication(Lcom/android/phone/InCallUiState$ProgressIndicationType;)V
    .locals 0
    .param p1, "value"    # Lcom/android/phone/InCallUiState$ProgressIndicationType;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/phone/InCallUiState;->progressIndication:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    .line 354
    return-void
.end method

.method public setProviderInfo(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/phone/PhoneUtils;->getProviderLabel(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->providerLabel:Ljava/lang/CharSequence;

    .line 396
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/phone/PhoneUtils;->getProviderIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->providerIcon:Landroid/graphics/drawable/Drawable;

    .line 397
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->providerGatewayUri:Landroid/net/Uri;

    .line 398
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->providerGatewayUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->formatProviderUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->providerAddress:Ljava/lang/String;

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallUiState;->providerInfoVisible:Z

    .line 403
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->providerLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallUiState;->providerIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallUiState;->providerGatewayUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallUiState;->providerAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallUiState;->clearProviderInfo()V

    .line 407
    :cond_1
    return-void
.end method
