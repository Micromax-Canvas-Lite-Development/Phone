.class Lcom/mediatek/vt/VTManager$2;
.super Ljava/lang/Thread;
.source "VTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/vt/VTManager;->createThreads()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vt/VTManager;


# direct methods
.method constructor <init>(Lcom/mediatek/vt/VTManager;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/mediatek/vt/VTManager$2;->this$0:Lcom/mediatek/vt/VTManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 205
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/vt/VTManager$2;->this$0:Lcom/mediatek/vt/VTManager;

    new-instance v1, Lcom/mediatek/vt/VTManager$TelMsgHandler;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager$2;->this$0:Lcom/mediatek/vt/VTManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mediatek/vt/VTManager$TelMsgHandler;-><init>(Lcom/mediatek/vt/VTManager;Lcom/mediatek/vt/VTManager$1;)V

    iput-object v1, v0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    .line 208
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 209
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    const-string v0, "VTManager"

    const-string v1, "register TelMsg, notify--sync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/mediatek/vt/VTManager$2;->this$0:Lcom/mediatek/vt/VTManager;

    iget-object v0, v0, Lcom/mediatek/vt/VTManager;->mCallManager:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager$2;->this$0:Lcom/mediatek/vt/VTManager;

    iget-object v1, v1, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v7, v4, v5}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForVtStatusInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 214
    iget-object v0, p0, Lcom/mediatek/vt/VTManager$2;->this$0:Lcom/mediatek/vt/VTManager;

    iget-object v0, v0, Lcom/mediatek/vt/VTManager;->mCallManager:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager$2;->this$0:Lcom/mediatek/vt/VTManager;

    iget-object v1, v1, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v8, v4, v5}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForVtRingInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 216
    const-string v0, "VTManager"

    const-string v1, "register TelMsg, MODE_5_WGNTG_DUALTALK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/mediatek/vt/VTManager$2;->this$0:Lcom/mediatek/vt/VTManager;

    iget-object v0, v0, Lcom/mediatek/vt/VTManager;->mCallManager:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager$2;->this$0:Lcom/mediatek/vt/VTManager;

    iget-object v1, v1, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v7, v4, v6}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForVtStatusInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 218
    iget-object v0, p0, Lcom/mediatek/vt/VTManager$2;->this$0:Lcom/mediatek/vt/VTManager;

    iget-object v0, v0, Lcom/mediatek/vt/VTManager;->mCallManager:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager$2;->this$0:Lcom/mediatek/vt/VTManager;

    iget-object v1, v1, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v8, v4, v6}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForVtRingInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 226
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 227
    return-void

    .line 209
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
