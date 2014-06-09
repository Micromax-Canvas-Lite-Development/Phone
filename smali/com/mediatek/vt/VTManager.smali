.class public Lcom/mediatek/vt/VTManager;
.super Ljava/lang/Object;
.source "VTManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/vt/VTManager$TelMsgHandler;,
        Lcom/mediatek/vt/VTManager$VTHanlder;,
        Lcom/mediatek/vt/VTManager$State;
    }
.end annotation


# static fields
.field public static final QUIT_THREAD:I = 0x8000000

.field public static final RECORD_TYPE_AUDIO_ONLY:I = 0x2

.field public static final RECORD_TYPE_VIDEO_AUDIO:I = 0x1

.field public static final RECORD_TYPE_VIDEO_ONLY:I = 0x3

.field public static final SET_VT_CLOSE:I = 0x0

.field public static final SET_VT_OPEN:I = 0x1

.field public static final SET_VT_READY:I = 0x2

.field static final TAG:Ljava/lang/String; = "VTManager"

.field private static final VIDEO_TYPE_CAMERA:I = 0x0

.field private static final VIDEO_TYPE_IMAGE:I = 0x1

.field private static final VIDEO_TYPE_LAST_SHOT:I = 0x2

.field public static final VT_ERROR_CALL_DISCONNECT:I = 0x8001

.field public static final VT_ERROR_CAMERA:I = 0x8003

.field public static final VT_ERROR_MEDIA_RECORDER_COMPLETE:I = 0x8007

.field public static final VT_ERROR_MEDIA_RECORDER_EVENT_ERROR:I = 0x8006

.field public static final VT_ERROR_MEDIA_RECORDER_EVENT_INFO:I = 0x8005

.field public static final VT_ERROR_MEDIA_SERVER_DIED:I = 0x8004

.field public static final VT_ERROR_START_VTS_FAIL:I = 0x8002

.field public static final VT_MSG_CAM_BEGIN:I = 0x1000

.field public static final VT_MSG_CLOSE:I = 0x1

.field public static final VT_MSG_CONNECTED:I = 0x4

.field public static final VT_MSG_DISCONNECTED:I = 0x5

.field public static final VT_MSG_EM_INDICATION:I = 0x6

.field public static final VT_MSG_OPEN:I = 0x2

.field public static final VT_MSG_PEER_CAMERA_CLOSE:I = 0x10

.field public static final VT_MSG_PEER_CAMERA_OPEN:I = 0x9

.field public static final VT_MSG_READY:I = 0x3

.field public static final VT_MSG_RECEIVE_FIRSTFRAME:I = 0x8

.field public static final VT_MSG_RING:I = 0x7

.field public static final VT_MSG_START_COUNTER:I = 0x7

.field public static final VT_MSG_VTSTATUS:I = 0x6

.field public static final VT_NORMAL_END_SESSION_COMMAND:I = 0x8101

.field public static final VT_RET_FROM_JNI_FALSE:I = 0x1

.field public static final VT_RET_FROM_JNI_TRUE:I = 0x0

.field public static final VT_VQ_NORMAL:I = 0x1

.field public static final VT_VQ_SHARP:I = 0x0

.field public static final VT_VQ_SMOOTH:I = 0x2

.field private static sVTManager:Lcom/mediatek/vt/VTManager;


# instance fields
.field mCallManager:Ljava/lang/Object;

.field private mClosingVTService:Z

.field mContext:Landroid/content/Context;

.field private mDateTakenRecording:J

.field private mEnableReplacePeerVideo:I

.field private mEndCallLock:Ljava/lang/Integer;

.field private mInvokeHideMeBeforeOpen:Z

.field private mInvokeLockPeerVideoBeforeOpen:Z

.field private mRecordedFileName:Ljava/lang/String;

.field private mRecordedFilePath:Ljava/lang/String;

.field private mReplacePeerVideoPicturePath:Ljava/lang/String;

.field mSettings:Lcom/mediatek/vt/VTSettings;

.field private mSimId:I

.field private mStartVTSMALFail:Z

.field mState:Lcom/mediatek/vt/VTManager$State;

.field mTelMsgHandler:Landroid/os/Handler;

.field mTelMsgThread:Ljava/lang/Thread;

.field mVTListener:Landroid/os/Handler;

.field private mVTListenerLock:Ljava/lang/Integer;

.field mVTThread:Ljava/lang/Thread;

.field mVtHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 298
    new-instance v0, Lcom/mediatek/vt/VTManager;

    invoke-direct {v0}, Lcom/mediatek/vt/VTManager;-><init>()V

    sput-object v0, Lcom/mediatek/vt/VTManager;->sVTManager:Lcom/mediatek/vt/VTManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 304
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 124
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 142
    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    .line 145
    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    .line 147
    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    .line 149
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mVTListenerLock:Ljava/lang/Integer;

    .line 150
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    .line 152
    iput-boolean v1, p0, Lcom/mediatek/vt/VTManager;->mInvokeHideMeBeforeOpen:Z

    .line 153
    iput-boolean v1, p0, Lcom/mediatek/vt/VTManager;->mInvokeLockPeerVideoBeforeOpen:Z

    .line 154
    iput-boolean v1, p0, Lcom/mediatek/vt/VTManager;->mClosingVTService:Z

    .line 155
    iput-boolean v1, p0, Lcom/mediatek/vt/VTManager;->mStartVTSMALFail:Z

    .line 162
    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    .line 163
    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mRecordedFileName:Ljava/lang/String;

    .line 164
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/vt/VTManager;->mDateTakenRecording:J

    .line 169
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/vt/VTManager;->mSimId:I

    .line 305
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 306
    new-instance v0, Lcom/mediatek/vt/VTSettings;

    invoke-direct {v0}, Lcom/mediatek/vt/VTSettings;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    .line 307
    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/vt/VTManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/vt/VTManager;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/vt/VTManager;->setVTCloseImpl()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/vt/VTManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/vt/VTManager;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/vt/VTManager;->setVTOpenImpl()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/vt/VTManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/vt/VTManager;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/vt/VTManager;->setVTReadyImpl()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/vt/VTManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/vt/VTManager;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mediatek/vt/VTManager;->mStartVTSMALFail:Z

    return v0
.end method

.method public static getInstance()Lcom/mediatek/vt/VTManager;
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lcom/mediatek/vt/VTManager;->sVTManager:Lcom/mediatek/vt/VTManager;

    return-object v0
.end method

.method public static setEM(III)V
    .locals 0
    .param p0, "item"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    .line 934
    invoke-static {p0, p1, p2}, Lcom/mediatek/vt/VTelProvider;->setEM(III)V

    .line 935
    return-void
.end method

.method private setInvokeHideMeBeforeOpen(Z)V
    .locals 0
    .param p1, "invokeHideMeBeforeOpen"    # Z

    .prologue
    .line 1167
    iput-boolean p1, p0, Lcom/mediatek/vt/VTManager;->mInvokeHideMeBeforeOpen:Z

    .line 1168
    return-void
.end method

.method private setInvokeLockPeerVideoBeforeOpen(Z)V
    .locals 0
    .param p1, "invokeLockPeerVideoBeforeOpen"    # Z

    .prologue
    .line 1205
    iput-boolean p1, p0, Lcom/mediatek/vt/VTManager;->mInvokeLockPeerVideoBeforeOpen:Z

    .line 1206
    return-void
.end method

.method private declared-synchronized setVTCloseImpl()V
    .locals 6

    .prologue
    .line 444
    monitor-enter p0

    :try_start_0
    const-string v2, "VTManager"

    const-string v3, "=>setVTCloseImpl"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :goto_0
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    sget-object v3, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_0

    .line 447
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "VTManager"

    const-string v3, "createThreads, wait error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 458
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V

    .line 461
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/vt/VTManager;->mClosingVTService:Z

    .line 463
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 464
    :try_start_3
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->closeVTService()I

    move-result v1

    .line 465
    .local v1, "ret":I
    if-eqz v1, :cond_1

    .line 466
    const-string v2, "VTManager"

    const-string v4, "setVTCloseImpl, error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 475
    :goto_1
    monitor-exit p0

    return-void

    .line 469
    :cond_1
    :try_start_4
    sget-object v2, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 470
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/vt/VTManager;->mStartVTSMALFail:Z

    .line 471
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/vt/VTManager;->mSimId:I

    .line 472
    const-string v2, "VTManager"

    iget-object v4, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v4}, Lcom/mediatek/vt/VTManager$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 474
    :try_start_5
    const-string v2, "VTManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<=setVTCloseImpl, mState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v4}, Lcom/mediatek/vt/VTManager$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 444
    .end local v1    # "ret":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 473
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private declared-synchronized setVTOpenImpl()V
    .locals 5

    .prologue
    .line 355
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/mediatek/vt/VTManager;->mSimId:I

    invoke-static {v1}, Lcom/mediatek/vt/VTelProvider;->openVTService(I)I

    move-result v0

    .line 356
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 357
    const-string v1, "VTManager"

    const-string v2, "setVTOpenImpl, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    :goto_0
    monitor-exit p0

    return-void

    .line 360
    :cond_0
    :try_start_1
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->OPEN:Lcom/mediatek/vt/VTManager$State;

    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 362
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 363
    const-string v1, "VTManager"

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v1, "VTManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/vt/VTManager;->mInvokeHideMeBeforeOpen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-boolean v1, p0, Lcom/mediatek/vt/VTManager;->mInvokeHideMeBeforeOpen:Z

    if-eqz v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->getVideoType()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTSettings;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    .line 368
    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 355
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setVTReadyImpl()V
    .locals 6

    .prologue
    .line 391
    monitor-enter p0

    :try_start_0
    const-string v2, "VTManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVTReadyImpl, mTelMsgHandler = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v1, 0x0

    .line 393
    .local v1, "ret":I
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTSettings;->getIsSwitch()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTSettings;->getPeerSurface()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v3}, Lcom/mediatek/vt/VTSettings;->getLocalSurface()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/vt/VTelProvider;->initVTService(Landroid/view/Surface;Landroid/view/Surface;)I

    move-result v1

    .line 401
    :goto_0
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 402
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 404
    :try_start_1
    const-string v2, "VTManager"

    const-string v4, "setVTReadyImpl mTelMsgThread wait "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 412
    :cond_0
    if-eqz v1, :cond_2

    .line 413
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/mediatek/vt/VTManager;->mStartVTSMALFail:Z

    .line 414
    const-string v2, "VTManager"

    const-string v3, "setVTReadyImpl, error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 417
    :try_start_4
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 418
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 428
    :goto_2
    monitor-exit p0

    return-void

    .line 397
    :cond_1
    :try_start_5
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTSettings;->getLocalSurface()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v3}, Lcom/mediatek/vt/VTSettings;->getPeerSurface()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/vt/VTelProvider;->initVTService(Landroid/view/Surface;Landroid/view/Surface;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v1

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string v2, "VTManager"

    const-string v4, "setVTReadyImpl, wait error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 410
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 391
    .end local v1    # "ret":I
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 418
    .restart local v1    # "ret":I
    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v2

    .line 421
    :cond_2
    sget-object v2, Lcom/mediatek/vt/VTManager$State;->READY:Lcom/mediatek/vt/VTManager$State;

    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 422
    const-string v2, "VTManager"

    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTSettings;->getCameraSettings()V

    .line 424
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V

    .line 425
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    monitor-enter v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 426
    :try_start_a
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 427
    monitor-exit v3

    goto :goto_2

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
.end method


# virtual methods
.method public canDecBrightness()Z
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canDecBrightness()Z

    move-result v0

    return v0
.end method

.method public canDecContrast()Z
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canDecContrast()Z

    move-result v0

    return v0
.end method

.method public canDecZoom()Z
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canDecZoom()Z

    move-result v0

    return v0
.end method

.method public canIncBrightness()Z
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canIncBrightness()Z

    move-result v0

    return v0
.end method

.method public canIncContrast()Z
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canIncContrast()Z

    move-result v0

    return v0
.end method

.method public canIncZoom()Z
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canIncZoom()Z

    move-result v0

    return v0
.end method

.method createThreads()V
    .locals 4

    .prologue
    .line 181
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 182
    :cond_0
    const-string v1, "VTManager"

    const-string v2, "init error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_0
    return-void

    .line 186
    :cond_1
    new-instance v1, Lcom/mediatek/vt/VTManager$1;

    invoke-direct {v1, p0}, Lcom/mediatek/vt/VTManager$1;-><init>(Lcom/mediatek/vt/VTManager;)V

    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    .line 200
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 202
    new-instance v1, Lcom/mediatek/vt/VTManager$2;

    invoke-direct {v1, p0}, Lcom/mediatek/vt/VTManager$2;-><init>(Lcom/mediatek/vt/VTManager;)V

    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    .line 231
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    monitor-enter v2

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 234
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    const-string v1, "VTManager"

    const-string v2, "mVtHandler.sendEmptyMessage()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 244
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "VTManager"

    const-string v3, "createThreads, wait error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 240
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public decBrightness()Z
    .locals 2

    .prologue
    .line 791
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->decBrightness()Z

    move-result v0

    .line 792
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 795
    :cond_0
    return v0
.end method

.method public decContrast()Z
    .locals 2

    .prologue
    .line 839
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->decContrast()Z

    move-result v0

    .line 840
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 843
    :cond_0
    return v0
.end method

.method public decZoom()Z
    .locals 2

    .prologue
    .line 815
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->decZoom()Z

    move-result v0

    .line 816
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 819
    :cond_0
    return v0
.end method

.method public deinit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 317
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->joinThreads()V

    .line 318
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->deinit()V

    .line 319
    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mContext:Landroid/content/Context;

    .line 320
    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mCallManager:Ljava/lang/Object;

    .line 321
    return-void
.end method

.method public enableAlwaysAskSettings(I)V
    .locals 3
    .param p1, "flag"    # I

    .prologue
    .line 1175
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableAlwaysAskSettings in VTManager.java, flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->enableAlwaysAskSettings(I)I

    .line 1177
    return-void
.end method

.method public enableHideMe(I)V
    .locals 3
    .param p1, "flag"    # I

    .prologue
    .line 1190
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableHideMe in VTManager.java, flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->enableHideMe(I)I

    .line 1192
    return-void
.end method

.method public enableHideYou(I)V
    .locals 3
    .param p1, "flag"    # I

    .prologue
    .line 1185
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableHideYou in VTManager.java, flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->enableHideYou(I)I

    .line 1187
    return-void
.end method

.method public enlargeDisplaySurface(Z)V
    .locals 0
    .param p1, "isEnlarge"    # Z

    .prologue
    .line 665
    return-void
.end method

.method public getCameraSensorCount()I
    .locals 5

    .prologue
    .line 903
    const/4 v0, 0x0

    .line 904
    .local v0, "ret":I
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v3

    .line 905
    :try_start_0
    sget-object v2, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v4, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v2, v4, :cond_0

    .line 906
    monitor-exit v3

    move v1, v0

    .line 910
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    return v1

    .line 908
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->getCameraSensorCount()I

    move-result v0

    .line 909
    monitor-exit v3

    move v1, v0

    .line 910
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0

    .line 909
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getColorEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute(Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 899
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->isMicrophoneOn()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNightMode()Z
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getNightMode()Z

    move-result v0

    return v0
.end method

.method getParameters()V
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->getParameters()Lcom/mediatek/vt/CameraParamters;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    .line 772
    return-void
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 1213
    iget v0, p0, Lcom/mediatek/vt/VTManager;->mSimId:I

    return v0
.end method

.method public getState()Lcom/mediatek/vt/VTManager$State;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    return-object v0
.end method

.method public getSupportedColorEffects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 864
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVideoQuality()I
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getVideoQuality()I

    move-result v0

    return v0
.end method

.method public getmVTListener()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    return-object v0
.end method

.method public incBrightness()Z
    .locals 2

    .prologue
    .line 799
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->incBrightness()Z

    move-result v0

    .line 800
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 801
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 803
    :cond_0
    return v0
.end method

.method public incContrast()Z
    .locals 2

    .prologue
    .line 847
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->incContrast()Z

    move-result v0

    .line 848
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 851
    :cond_0
    return v0
.end method

.method public incZoom()Z
    .locals 2

    .prologue
    .line 823
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->incZoom()Z

    move-result v0

    .line 824
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 825
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 827
    :cond_0
    return v0
.end method

.method public incomingVTCall(I)V
    .locals 3
    .param p1, "flag"    # I

    .prologue
    .line 1200
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incomingVTCall in VTManager.java, flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->incomingVTCall(I)I

    .line 1202
    return-void
.end method

.method public incomingVideoDispaly(I)V
    .locals 3
    .param p1, "flag"    # I

    .prologue
    .line 1195
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incomingVideoDispaly in VTManager.java, flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->incomingVideoDispaly(I)I

    .line 1197
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callManager"    # Ljava/lang/Object;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/mediatek/vt/VTManager;->mContext:Landroid/content/Context;

    .line 311
    iput-object p2, p0, Lcom/mediatek/vt/VTManager;->mCallManager:Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->init(Landroid/content/Context;)V

    .line 313
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->createThreads()V

    .line 314
    return-void
.end method

.method public isInvokeHideMeBeforeOpen()Z
    .locals 1

    .prologue
    .line 1163
    iget-boolean v0, p0, Lcom/mediatek/vt/VTManager;->mInvokeHideMeBeforeOpen:Z

    return v0
.end method

.method public isInvokeLockPeerVideoBeforeOpenn()Z
    .locals 1

    .prologue
    .line 1171
    iget-boolean v0, p0, Lcom/mediatek/vt/VTManager;->mInvokeLockPeerVideoBeforeOpen:Z

    return v0
.end method

.method public isSpeakerOn(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 923
    const/4 v0, 0x0

    .line 924
    .local v0, "result":Z
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v2

    .line 925
    :try_start_0
    sget-object v3, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v4, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v3, v4, :cond_0

    .line 926
    monitor-exit v2

    .line 930
    :goto_0
    return v1

    .line 928
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->isSpeakerOn()I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 929
    :goto_1
    monitor-exit v2

    move v1, v0

    .line 930
    goto :goto_0

    .line 928
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 929
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSupportNightMode()Z
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->isSupportNightMode()Z

    move-result v0

    return v0
.end method

.method joinThreads()V
    .locals 7

    .prologue
    const/high16 v6, 0x8000000

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 249
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mCallManager:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForVtStatusInfoGemini(Landroid/os/Handler;I)V

    .line 250
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mCallManager:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForVtRingInfoGemini(Landroid/os/Handler;I)V

    .line 252
    const-string v1, "VTManager"

    const-string v2, "register unregister, MODE_5_WGNTG_DUALTALK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mCallManager:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v5}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForVtStatusInfoGemini(Landroid/os/Handler;I)V

    .line 254
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mCallManager:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v5}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForVtRingInfoGemini(Landroid/os/Handler;I)V

    .line 261
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 263
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 264
    const-string v1, "VTManager"

    const-string v2, "null == mTelMsgHandler in joinThreads()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 275
    :try_start_0
    const-string v1, "VTManager"

    const-string v3, "mTelMsgHandler notify in joinThreads()"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 285
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 290
    :goto_2
    iput-object v4, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    .line 291
    iput-object v4, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    .line 293
    iput-object v4, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    .line 294
    iput-object v4, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    .line 296
    return-void

    .line 266
    :cond_0
    const-string v1, "VTManager"

    const-string v2, "null != mTelMsgHandler in joinThreads()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/IllegalMonitorStateException;
    :try_start_3
    const-string v1, "VTManager"

    const-string v3, "mTelMsgHandler notify in joinThreads(), wait error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v0}, Ljava/lang/IllegalMonitorStateException;->printStackTrace()V

    goto :goto_1

    .line 281
    .end local v0    # "e":Ljava/lang/IllegalMonitorStateException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 286
    :catch_1
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "VTManager"

    const-string v2, "joinThreads error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public lockPeerVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1010
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 1011
    const-string v0, "VTManager"

    const-string v1, "lockPeerVideo, vtmanager state error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-direct {p0, v2}, Lcom/mediatek/vt/VTManager;->setInvokeLockPeerVideoBeforeOpen(Z)V

    .line 1013
    invoke-static {v2}, Lcom/mediatek/vt/VTelProvider;->setInvokeLockPeerVideoBeforeOpen(I)I

    .line 1017
    :goto_0
    return-void

    .line 1016
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->lockPeerVideo()I

    goto :goto_0
.end method

.method public declared-synchronized onConnected()V
    .locals 5

    .prologue
    .line 478
    monitor-enter p0

    :try_start_0
    const-string v1, "VTManager"

    const-string v2, "=>onConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    .line 502
    :goto_0
    monitor-exit p0

    return-void

    .line 482
    :cond_0
    :try_start_1
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v1, v2, :cond_1

    .line 483
    const-string v1, "VTManager"

    const-string v2, "onConnected, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 478
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 493
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->startVTService()I

    move-result v0

    .line 494
    .local v0, "ret":I
    if-eqz v0, :cond_2

    .line 495
    const-string v1, "VTManager"

    const-string v2, "onConnected, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 498
    :cond_2
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 499
    const-string v1, "VTManager"

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V

    .line 501
    const-string v1, "VTManager"

    const-string v2, "<=onConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 505
    const-string v0, "VTManager"

    const-string v1, "pre-onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->setEndCallFlag()V

    .line 507
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->onDisconnectedActual()V

    .line 508
    return-void
.end method

.method public declared-synchronized onDisconnectedActual()V
    .locals 5

    .prologue
    .line 511
    monitor-enter p0

    :try_start_0
    const-string v1, "VTManager"

    const-string v2, "onDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-eq v1, v2, :cond_0

    .line 513
    const-string v1, "VTManager"

    const-string v2, "onDisconnected, VT Manager state error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    :goto_0
    monitor-exit p0

    return-void

    .line 516
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->stopVTService()I

    move-result v0

    .line 517
    .local v0, "ret":I
    if-eqz v0, :cond_1

    .line 518
    const-string v1, "VTManager"

    const-string v2, "onDisconnected, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 511
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 521
    .restart local v0    # "ret":I
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 522
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->READY:Lcom/mediatek/vt/VTManager$State;

    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 523
    const-string v1, "VTManager"

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onUserInput(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 997
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 998
    const-string v0, "VTManager"

    const-string v1, "onUserInput, vtmanager state error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :goto_0
    return-void

    .line 1001
    :cond_0
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->onUserInput(Ljava/lang/String;)V

    goto :goto_0
.end method

.method postEventFromNative(IIILjava/lang/Object;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 987
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventFromNative ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V

    .line 989
    return-void
.end method

.method postEventToMMI(IIILjava/lang/Object;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 973
    iget-boolean v0, p0, Lcom/mediatek/vt/VTManager;->mClosingVTService:Z

    if-eqz v0, :cond_0

    const v0, 0x8001

    if-ne v0, p1, :cond_0

    .line 984
    :goto_0
    return-void

    .line 976
    :cond_0
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTListenerLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 977
    :try_start_0
    const-string v0, "VTManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postEventToMMI ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 979
    const-string v0, "VTManager"

    const-string v2, "error postEventToMMI"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 981
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public registerVTListener(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 551
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTListenerLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 552
    :try_start_0
    iput-object p1, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    .line 553
    monitor-exit v1

    .line 554
    return-void

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public replacePeerVideoSettings(ILjava/lang/String;)V
    .locals 2
    .param p1, "bEnableReplacePeerVideo"    # I
    .param p2, "sReplacePeerVideoPicturePath"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string v0, "VTManager"

    const-string v1, "replacePeerVideoSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iput p1, p0, Lcom/mediatek/vt/VTManager;->mEnableReplacePeerVideo:I

    .line 175
    iput-object p2, p0, Lcom/mediatek/vt/VTManager;->mReplacePeerVideoPicturePath:Ljava/lang/String;

    .line 176
    invoke-static {p1, p2}, Lcom/mediatek/vt/VTelProvider;->replacePeerVideoSettings(ILjava/lang/String;)I

    .line 178
    return-void
.end method

.method public savePeerPhoto()Z
    .locals 15

    .prologue
    .line 719
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 722
    .local v2, "dateTaken":J
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "yyyy-MM-dd kk.mm.ss.SSS"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 723
    .local v8, "name":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".png"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 724
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, "cameraImageBucketName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/DCIM/Camera/IMG_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 728
    .local v9, "path":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/DCIM/Camera/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 730
    .local v6, "imageDirectory":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 732
    const/4 v13, 0x0

    invoke-static {v13, v9}, Lcom/mediatek/vt/VTelProvider;->snapshot(ILjava/lang/String;)I

    move-result v5

    .line 733
    .local v5, "flag":I
    if-eqz v5, :cond_0

    .line 734
    const-string v13, "VTManager"

    const-string v14, "***snapshot() fail in Manager layer***"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/4 v13, 0x0

    .line 763
    :goto_0
    return v13

    .line 739
    :cond_0
    iget-object v13, p0, Lcom/mediatek/vt/VTManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 740
    .local v1, "cr":Landroid/content/ContentResolver;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 741
    .local v12, "values":Landroid/content/ContentValues;
    const-string v13, "title"

    invoke-virtual {v12, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v13, "_display_name"

    invoke-virtual {v12, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v13, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 744
    const-string v13, "mime_type"

    const-string v14, "image/png"

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v13, "orientation"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 747
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 748
    .local v7, "imageFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 749
    const-string v13, "VTManager"

    const-string v14, "***image_File does not exist in Manager layer***"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v13, 0x0

    goto :goto_0

    .line 752
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 753
    .local v10, "size":J
    const-string v13, "_size"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 754
    const-string v13, "_data"

    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v13, "VTManager"

    invoke-virtual {v12}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :try_start_0
    sget-object v13, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v13, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    const/4 v13, 0x1

    goto :goto_0

    .line 759
    :catch_0
    move-exception v4

    .line 760
    .local v4, "e":Ljava/lang/Exception;
    const-string v13, "VTManager"

    const-string v14, "insert fail in savePeerPhoto()"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 859
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setColorEffect(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 861
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "local"    # Landroid/view/SurfaceHolder;
    .param p2, "peer"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 644
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setLocalSurface(Landroid/view/SurfaceHolder;)V

    .line 646
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p2}, Lcom/mediatek/vt/VTSettings;->setPeerSurface(Landroid/view/SurfaceHolder;)V

    .line 647
    return-void
.end method

.method public setLocalVideoType(ILjava/lang/String;)V
    .locals 4
    .param p1, "videoType"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 690
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocalVideoType, closingVTService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/vt/VTManager;->mClosingVTService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " videoType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    if-nez p2, :cond_0

    .line 692
    const-string v0, "VTManager"

    const-string v1, "setLocalVideoType, path is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/vt/VTManager;->mClosingVTService:Z

    if-eqz v0, :cond_2

    .line 695
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 696
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setVideoType(I)V

    .line 697
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p2}, Lcom/mediatek/vt/VTSettings;->setImagePath(Ljava/lang/String;)V

    .line 698
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v2, :cond_1

    .line 699
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/vt/VTManager;->setInvokeHideMeBeforeOpen(Z)V

    .line 700
    monitor-exit v1

    .line 713
    :goto_0
    return-void

    .line 702
    :cond_1
    invoke-static {p1, p2}, Lcom/mediatek/vt/VTelProvider;->setLocalVideoType(ILjava/lang/String;)V

    .line 703
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 705
    :cond_2
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setVideoType(I)V

    .line 706
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p2}, Lcom/mediatek/vt/VTSettings;->setImagePath(Ljava/lang/String;)V

    .line 707
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_3

    .line 708
    invoke-direct {p0, v3}, Lcom/mediatek/vt/VTManager;->setInvokeHideMeBeforeOpen(Z)V

    goto :goto_0

    .line 711
    :cond_3
    invoke-static {p1, p2}, Lcom/mediatek/vt/VTelProvider;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setMute(Lcom/android/internal/telephony/Phone;Z)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "muted"    # Z

    .prologue
    .line 895
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/mediatek/vt/VTelProvider;->turnOnMicrophone(I)V

    .line 896
    return-void

    .line 895
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setNightMode(Z)V
    .locals 1
    .param p1, "isOn"    # Z

    .prologue
    .line 876
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setNightMode(Z)V

    .line 877
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 878
    return-void
.end method

.method setParameters()V
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    iget-object v0, v0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-static {v0}, Lcom/mediatek/vt/VTelProvider;->setParameters(Lcom/mediatek/vt/CameraParamters;)V

    .line 777
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    iget-object v0, v0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-static {v0}, Lcom/mediatek/vt/VTelProvider;->updateParameters(Lcom/mediatek/vt/CameraParamters;)Lcom/mediatek/vt/CameraParamters;

    .line 780
    return-void
.end method

.method public setVTClose()V
    .locals 2

    .prologue
    .line 434
    const-string v0, "VTManager"

    const-string v1, "setVTClose"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 436
    const-string v0, "VTManager"

    const-string v1, "setVTCloseImpl, error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 440
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->deinit()V

    goto :goto_0
.end method

.method public declared-synchronized setVTDisconnect()V
    .locals 2

    .prologue
    .line 528
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 529
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 530
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 532
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 533
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 534
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    monitor-exit p0

    return-void

    .line 528
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setVTOpen(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callManager"    # Ljava/lang/Object;

    .prologue
    .line 328
    const-string v0, "VTManager"

    const-string v1, "setVTOpen failed, old interface used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void
.end method

.method public setVTOpen(Landroid/content/Context;Ljava/lang/Object;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callManager"    # Ljava/lang/Object;
    .param p3, "simId"    # I

    .prologue
    .line 337
    const-string v0, "VTManager"

    const-string v1, "setVTOpen"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    .line 339
    const-string v0, "VTManager"

    const-string v1, "setVTOpen, mState != State.CLOSE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :goto_0
    return-void

    .line 347
    :cond_0
    iput p3, p0, Lcom/mediatek/vt/VTManager;->mSimId:I

    .line 348
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/vt/VTManager;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/vt/VTManager;->init(Landroid/content/Context;Ljava/lang/Object;)V

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/vt/VTManager;->mClosingVTService:Z

    goto :goto_0
.end method

.method public declared-synchronized setVTReady()V
    .locals 3

    .prologue
    .line 380
    monitor-enter p0

    :try_start_0
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVTReady, mVtHandler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->OPEN:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_1

    .line 382
    const-string v0, "VTManager"

    const-string v1, "setVTReadyImpl, error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 385
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVTVisible(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 942
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v2, :cond_0

    .line 970
    :goto_0
    return-void

    .line 945
    :cond_0
    if-nez p1, :cond_1

    .line 946
    const/4 v2, 0x0

    move-object v0, v1

    check-cast v0, Landroid/view/Surface;

    check-cast v1, Landroid/view/Surface;

    invoke-static {v2, v0, v1}, Lcom/mediatek/vt/VTelProvider;->setVTVisible(ILandroid/view/Surface;Landroid/view/Surface;)I

    goto :goto_0

    .line 948
    :cond_1
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    if-nez v0, :cond_2

    .line 949
    const-string v0, "VTManager"

    const-string v1, "error setVTVisible, null == mSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 952
    :cond_2
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getPeerSurface()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-nez v0, :cond_3

    .line 953
    const-string v0, "VTManager"

    const-string v1, "error setVTVisible, null == getPeerSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 956
    :cond_3
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getPeerSurface()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_4

    .line 957
    const-string v0, "VTManager"

    const-string v1, "error setVTVisible, null == getSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 961
    :cond_4
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getIsSwitch()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 962
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getPeerSurface()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->getLocalSurface()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/mediatek/vt/VTelProvider;->setVTVisible(ILandroid/view/Surface;Landroid/view/Surface;)I

    goto :goto_0

    .line 965
    :cond_5
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getLocalSurface()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->getPeerSurface()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/mediatek/vt/VTelProvider;->setVTVisible(ILandroid/view/Surface;Landroid/view/Surface;)I

    goto :goto_0
.end method

.method public setVideoQuality(I)V
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 886
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setVideoQuality(I)V

    .line 887
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->setPeerVideo(I)V

    .line 888
    return-void
.end method

.method public startRecording(IJ)I
    .locals 12
    .param p1, "type"    # I
    .param p2, "maxSize"    # J

    .prologue
    const/4 v11, 0x1

    .line 1037
    const-string v8, "VTManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startRecording() in VTManager.java, type is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "maxSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const/4 v2, 0x0

    .line 1041
    .local v2, "ret":I
    sget-object v8, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v8, v9, :cond_0

    .line 1042
    const-string v8, "VTManager"

    const-string v9, "startRecording() in VTManager.java, State=CLOSE"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1102
    .end local v2    # "ret":I
    .local v3, "ret":I
    :goto_0
    return v3

    .line 1047
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1049
    .local v0, "cameraImageBucketName":Ljava/lang/String;
    const-string v8, "VTManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cameraImageBucketName is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/mediatek/vt/VTManager;->mDateTakenRecording:J

    .line 1053
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd_kk.mm.ss.SSS"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-wide v9, p0, Lcom/mediatek/vt/VTManager;->mDateTakenRecording:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1057
    .local v7, "timeSuffix":Ljava/lang/String;
    if-ne v11, p1, :cond_1

    .line 1058
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Video_and_Audio_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/vt/VTManager;->mRecordedFileName:Ljava/lang/String;

    .line 1069
    :goto_1
    iget-object v8, p0, Lcom/mediatek/vt/VTManager;->mContext:Landroid/content/Context;

    const-string v9, "storage"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    .line 1071
    .local v6, "storageManager":Landroid/os/storage/StorageManager;
    if-nez v6, :cond_4

    .line 1072
    const-string v8, "VTManager"

    const-string v9, "-----story manager is null----"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1073
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto :goto_0

    .line 1059
    .end local v3    # "ret":I
    .end local v6    # "storageManager":Landroid/os/storage/StorageManager;
    .restart local v2    # "ret":I
    :cond_1
    const/4 v8, 0x2

    if-ne v8, p1, :cond_2

    .line 1060
    const-string v8, "VTManager"

    const-string v9, "type is wrong in startRecording() in VTManager.java"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1061
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto :goto_0

    .line 1062
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :cond_2
    const/4 v8, 0x3

    if-ne v8, p1, :cond_3

    .line 1063
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only_Peer_Video_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/vt/VTManager;->mRecordedFileName:Ljava/lang/String;

    goto :goto_1

    .line 1065
    :cond_3
    const-string v8, "VTManager"

    const-string v9, "type is wrong in startRecording() in VTManager.java"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1066
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto/16 :goto_0

    .line 1075
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    .restart local v6    # "storageManager":Landroid/os/storage/StorageManager;
    :cond_4
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/storage/StorageManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v4, "sampleDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1078
    const-string v8, "VTManager"

    const-string v9, "----- file can\'t write!! ---"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/PhoneRecord/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->mRecordedFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".3gp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    .line 1081
    const-string v8, "VTManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recordedFileName is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/PhoneRecord/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1085
    .local v1, "recordDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1096
    .end local v1    # "recordDirectory":Ljava/io/File;
    :goto_2
    iget-object v8, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    invoke-static {p1, v8, p2, p3}, Lcom/mediatek/vt/VTelProvider;->startRecording(ILjava/lang/String;J)I

    move-result v2

    .line 1097
    if-ne v11, v2, :cond_7

    .line 1098
    const-string v8, "VTManager"

    const-string v9, "VT_RET_FROM_JNI_FALSE == ret in startRecording() in VTManager.java"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1099
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto/16 :goto_0

    .line 1087
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :cond_5
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/PhoneRecord"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1088
    .end local v4    # "sampleDir":Ljava/io/File;
    .local v5, "sampleDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1089
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 1091
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->mRecordedFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".3gp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    .line 1092
    const-string v8, "VTManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recordedFileName is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "sampleDir":Ljava/io/File;
    .restart local v4    # "sampleDir":Ljava/io/File;
    goto :goto_2

    :cond_7
    move v3, v2

    .line 1102
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto/16 :goto_0
.end method

.method public stopRecording(I)I
    .locals 12
    .param p1, "type"    # I

    .prologue
    const/4 v11, 0x1

    .line 1106
    const-string v8, "VTManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "stopRecording() in VTManager.java, type is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const/4 v2, 0x0

    .line 1109
    .local v2, "ret":I
    sget-object v8, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v8, v9, :cond_0

    .line 1110
    const-string v8, "VTManager"

    const-string v9, "stopRecording() in VTManager.java, State=CLOSE"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1159
    .end local v2    # "ret":I
    .local v3, "ret":I
    :goto_0
    return v3

    .line 1114
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :cond_0
    if-eq v11, p1, :cond_1

    const/4 v8, 0x3

    if-eq v8, p1, :cond_1

    .line 1115
    const-string v8, "VTManager"

    const-string v9, "stopRecording() in VTManager.java, type is wrong"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1116
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto :goto_0

    .line 1119
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :cond_1
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->stopRecording(I)I

    move-result v2

    .line 1120
    if-ne v11, v2, :cond_2

    .line 1121
    const-string v8, "VTManager"

    const-string v9, "VT_RET_FROM_JNI_FALSE == ret in stopRecording() in VTManager.java"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1122
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto :goto_0

    .line 1126
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :cond_2
    iget-object v8, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 1127
    const-string v8, "VTManager"

    const-string v9, "null == recordedFilePath in stopRecording() in VTManager.java"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1128
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto :goto_0

    .line 1130
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :cond_3
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1131
    .local v7, "videoFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1132
    const-string v8, "VTManager"

    const-string v9, "***video_File does not exist in stopRecording()***"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_4
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1136
    .local v6, "values":Landroid/content/ContentValues;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 1137
    .local v4, "size":J
    const-string v8, "title"

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->mRecordedFileName:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    const-string v8, "_display_name"

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->mRecordedFileName:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    const-string v8, "datetaken"

    iget-wide v9, p0, Lcom/mediatek/vt/VTManager;->mDateTakenRecording:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1140
    const-string v8, "mime_type"

    const-string v9, "video/3gpp"

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    const-string v8, "_size"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1142
    const-string v8, "_data"

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    iget-object v8, p0, Lcom/mediatek/vt/VTManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1152
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v8, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1153
    iget-object v8, p0, Lcom/mediatek/vt/VTManager;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v3, v2

    .line 1159
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto/16 :goto_0

    .line 1155
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :catch_0
    move-exception v1

    .line 1156
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "VTManager"

    const-string v9, "insert fail in stopRecording()"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public switchCamera()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 671
    const/4 v0, 0x0

    .line 672
    .local v0, "ret":I
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v2

    .line 674
    :try_start_0
    sget-object v3, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v4, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v3, v4, :cond_1

    .line 675
    monitor-exit v2

    .line 680
    :cond_0
    :goto_0
    return v1

    .line 677
    :cond_1
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->switchCamera()I

    move-result v0

    .line 678
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v3}, Lcom/mediatek/vt/VTSettings;->getCameraSettings()V

    .line 679
    monitor-exit v2

    .line 680
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 679
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public switchDisplaySurface()V
    .locals 2

    .prologue
    .line 653
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->READY:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    .line 654
    const-string v0, "VTManager"

    const-string v1, "switchDisplaySurface, error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :goto_0
    return-void

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getIsSwitch()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/mediatek/vt/VTSettings;->setIsSwitch(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public turnOnSpeaker(Z)V
    .locals 3
    .param p1, "isOn"    # Z

    .prologue
    .line 914
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 915
    :try_start_0
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v2, :cond_0

    .line 916
    monitor-exit v1

    .line 920
    :goto_0
    return-void

    .line 918
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/mediatek/vt/VTelProvider;->turnOnSpeaker(I)V

    .line 919
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 918
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public unlockPeerVideo()V
    .locals 2

    .prologue
    .line 1025
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 1026
    const-string v0, "VTManager"

    const-string v1, "unlockPeerVideo, vtmanager state error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :goto_0
    return-void

    .line 1029
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->unlockPeerVideo()I

    goto :goto_0
.end method

.method public unregisterVTListener()V
    .locals 2

    .prologue
    .line 557
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTListenerLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 558
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    .line 559
    monitor-exit v1

    .line 560
    return-void

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public userSelectYes(I)V
    .locals 3
    .param p1, "flag"    # I

    .prologue
    .line 1180
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userSelectYes in VTManager.java, flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->userSelectYes(I)I

    .line 1182
    return-void
.end method
