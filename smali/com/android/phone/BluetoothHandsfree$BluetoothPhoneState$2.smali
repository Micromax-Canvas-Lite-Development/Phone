.class Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v9, 0xb

    const/16 v8, 0xa

    const/4 v7, 0x0

    .line 1021
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1023
    .local v1, "intentAction":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[API] mStateReceiver.onReceive("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1025
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1026
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$1800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v5

    const/16 v6, 0x9

    invoke-virtual {v5, v6, p2}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1027
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$1800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1124
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1028
    :cond_1
    const-string v5, "android.intent.action.SIG_STR"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1030
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$1800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v5

    invoke-virtual {v5, v8, p2}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1032
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$1800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1033
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    const-string v5, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1035
    const-string v5, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1036
    .local v4, "state":I
    const-string v5, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1037
    .local v3, "oldState":I
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1041
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1042
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "device="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mA2dpDevice="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v6, v6, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    goto :goto_0

    .line 1046
    :cond_4
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v6, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v6

    .line 1047
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I
    invoke-static {v5, v4}, Lcom/android/phone/BluetoothHandsfree;->access$2002(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 1048
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A2DP ACTION_CONNECTION_STATE_CHANGED:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "->"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1049
    if-nez v4, :cond_7

    .line 1052
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/16 v7, 0xb

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpPlayingState:I
    invoke-static {v5, v7}, Lcom/android/phone/BluetoothHandsfree;->access$2102(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 1054
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v7, 0x0

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5, v7}, Lcom/android/phone/BluetoothHandsfree;->access$1902(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1060
    :goto_1
    if-nez v4, :cond_6

    .line 1061
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1063
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    # invokes: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->processPendingSCO()V
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    .line 1066
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v7, 0x0

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z
    invoke-static {v5, v7}, Lcom/android/phone/BluetoothHandsfree;->access$2302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1071
    :cond_5
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v7, 0x0

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z
    invoke-static {v5, v7}, Lcom/android/phone/BluetoothHandsfree;->access$2202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1074
    :cond_6
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1056
    :cond_7
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5, v0}, Lcom/android/phone/BluetoothHandsfree;->access$1902(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1077
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "oldState":I
    .end local v4    # "state":I
    :cond_8
    const-string v5, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1079
    const-string v5, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1080
    .restart local v4    # "state":I
    const-string v5, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1081
    .restart local v3    # "oldState":I
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1083
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_9

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1084
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "device="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mA2dpDevice="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v6, v6, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1088
    :cond_a
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v6, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v6

    .line 1089
    :try_start_2
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpPlayingState:I
    invoke-static {v5, v4}, Lcom/android/phone/BluetoothHandsfree;->access$2102(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 1090
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A2DP ACTION_PLAYING_STATE_CHANGED:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "->"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1092
    if-ne v4, v9, :cond_c

    .line 1093
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1094
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    # invokes: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->processPendingSCO()V
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    .line 1095
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v7, 0x0

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z
    invoke-static {v5, v7}, Lcom/android/phone/BluetoothHandsfree;->access$2302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1116
    :cond_b
    :goto_2
    monitor-exit v6

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 1098
    :cond_c
    :try_start_3
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpPlayingState:I
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v5

    if-ne v5, v8, :cond_b

    .line 1106
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # invokes: Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2500(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    # invokes: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1108
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    # getter for: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)I

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    # getter for: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2700(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_b

    .line 1110
    const-string v5, "suspending A2DP stream for incoming call [Pre-Condition: HFP SLC connected, Phone ringing, Event: A2DP starts to play]"

    # invokes: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1111
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v7, v7, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v8, v8, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v8}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothA2dp;->suspendSink(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z
    invoke-static {v5, v7}, Lcom/android/phone/BluetoothHandsfree;->access$2202(Lcom/android/phone/BluetoothHandsfree;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 1120
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "oldState":I
    .end local v4    # "state":I
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1122
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v5, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$500(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothAtPhonebook;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/phone/BluetoothAtPhonebook;->handleAccessPermissionResult(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
