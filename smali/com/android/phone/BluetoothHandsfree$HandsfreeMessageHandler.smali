.class final Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
.super Landroid/os/Handler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HandsfreeMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2055
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    .line 2056
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2057
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/Looper;Lcom/android/phone/BluetoothHandsfree$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/BluetoothHandsfree;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/phone/BluetoothHandsfree$1;

    .prologue
    .line 2054
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;-><init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0xb

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] mHandler.handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 2062
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2141
    :cond_0
    :goto_0
    return-void

    .line 2064
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 2067
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4600(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2068
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$4602(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2069
    const-string v1, "Timeout waiting for call to start"

    # invokes: Lcom/android/phone/BluetoothHandsfree;->logErr(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Ljava/lang/String;)V

    .line 2070
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "ERROR"

    # invokes: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$400(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2071
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2072
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2075
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2078
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForOutCallStart:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$4802(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto :goto_0

    .line 2081
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 2084
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4900(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2085
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$4902(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2086
    const-string v1, "Timeout waiting for voice recognition to start"

    # invokes: Lcom/android/phone/BluetoothHandsfree;->logErr(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Ljava/lang/String;)V

    .line 2087
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "ERROR"

    # invokes: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$400(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2089
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 2092
    :pswitch_3
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 2095
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # invokes: Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2500(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout suspending A2DP for SCO (mA2dpState = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mA2dpPlayingState = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpPlayingState:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "). Starting SCO anyway"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/BluetoothHandsfree;->logWarn(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5000(Ljava/lang/String;)V

    .line 2099
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/BluetoothAudioGateway;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothAudioGateway;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAudioGateway;->connect()Z

    move-result v1

    if-ne v1, v4, :cond_3

    .line 2101
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/BluetoothAudioGateway;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothAudioGateway;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAudioGateway;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 2102
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: device="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # invokes: Lcom/android/phone/BluetoothHandsfree;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    invoke-static {v3, v0}, Lcom/android/phone/BluetoothHandsfree;->access$3000(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 2103
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # invokes: Lcom/android/phone/BluetoothHandsfree;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    invoke-static {v1, v0}, Lcom/android/phone/BluetoothHandsfree;->access$3000(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v5, v1, :cond_3

    .line 2104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: device="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " from state= STATE_AUDIO_DISCONNECTED to state = STATE_AUDIO_CONNECTING"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 2105
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/16 v3, 0xb

    # invokes: Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v1, v3, v0}, Lcom/android/phone/BluetoothHandsfree;->access$3100(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V

    .line 2106
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x1

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mSCOConnecting:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$3202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2111
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$2302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2112
    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 2115
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2116
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # invokes: Lcom/android/phone/BluetoothHandsfree;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    invoke-static {v1, v0}, Lcom/android/phone/BluetoothHandsfree;->access$3000(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 2117
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # invokes: Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v1, v5, v0}, Lcom/android/phone/BluetoothHandsfree;->access$3100(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V

    .line 2119
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mSCOConnecting:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$3202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_0

    .line 2124
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :pswitch_5
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v2

    monitor-enter v2

    .line 2126
    :try_start_3
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v1

    # getter for: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 2130
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 2132
    :cond_4
    monitor-exit v2

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    .line 2135
    :pswitch_6
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    # invokes: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBatteryState(Landroid/content/Intent;)V
    invoke-static {v2, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$5200(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2138
    :pswitch_7
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    # invokes: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateSignalState(Landroid/content/Intent;)V
    invoke-static {v2, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$5300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2062
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method
