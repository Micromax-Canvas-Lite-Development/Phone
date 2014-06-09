.class Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)V
    .locals 0

    .prologue
    .line 2179
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2182
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2183
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 2351
    :goto_0
    return-void

    .line 2185
    :pswitch_0
    const-string v4, "PhoneInterfaceManager"

    const-string v5, "BTSAP_CONNECT_COMPLETE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    monitor-enter v5

    .line 2187
    :try_start_0
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 2188
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 2189
    .local v1, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->BT_SAP_CARD_REMOVED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v6, :cond_0

    .line 2190
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x4

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I

    .line 2196
    :goto_1
    const-string v4, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception BTSAP_CONNECT, Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :goto_2
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1202(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;Z)Z

    .line 2217
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 2218
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2191
    .restart local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->BT_SAP_NOT_ACCESSIBLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v6, :cond_1

    .line 2192
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x2

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I

    goto :goto_1

    .line 2194
    :cond_1
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I

    goto :goto_1

    .line 2198
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_2
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mStrResult:Ljava/lang/String;
    invoke-static {v6, v4}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1002(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 2199
    const-string v4, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BTSAP_CONNECT_COMPLETE  mStrResult "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mStrResult:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1000(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mStrResult:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1000(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 2203
    .local v3, "splited":[Ljava/lang/String;
    :try_start_2
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;
    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1100(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Landroid/telephony/BtSimapOperResponse;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/telephony/BtSimapOperResponse;->setCurType(I)V

    .line 2204
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;
    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1100(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Landroid/telephony/BtSimapOperResponse;

    move-result-object v4

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/telephony/BtSimapOperResponse;->setSupportType(I)V

    .line 2205
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;
    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1100(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Landroid/telephony/BtSimapOperResponse;

    move-result-object v4

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-virtual {v4, v6}, Landroid/telephony/BtSimapOperResponse;->setAtrString(Ljava/lang/String;)V

    .line 2206
    const-string v4, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BTSAP_CONNECT_COMPLETE curType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;
    invoke-static {v7}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1100(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Landroid/telephony/BtSimapOperResponse;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/BtSimapOperResponse;->getCurType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SupType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;
    invoke-static {v7}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1100(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Landroid/telephony/BtSimapOperResponse;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/BtSimapOperResponse;->getSupportType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ATR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;
    invoke-static {v7}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1100(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Landroid/telephony/BtSimapOperResponse;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/BtSimapOperResponse;->getAtrString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2211
    :goto_3
    :try_start_3
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x0

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I

    goto/16 :goto_2

    .line 2207
    :catch_0
    move-exception v2

    .line 2208
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v4, "PhoneInterfaceManager"

    const-string v6, "NumberFormatException"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 2221
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "splited":[Ljava/lang/String;
    :pswitch_1
    const-string v4, "PhoneInterfaceManager"

    const-string v5, "BTSAP_DISCONNECT_COMPLETE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    monitor-enter v5

    .line 2223
    :try_start_4
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_5

    .line 2224
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 2225
    .restart local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->BT_SAP_CARD_REMOVED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v6, :cond_3

    .line 2226
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x4

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I

    .line 2232
    :goto_4
    const-string v4, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception BTSAP_DISCONNECT, Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :goto_5
    const-string v4, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BTSAP_DISCONNECT_COMPLETE result is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v7}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$900(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1202(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;Z)Z

    .line 2238
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 2239
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 2227
    .restart local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->BT_SAP_NOT_ACCESSIBLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v6, :cond_4

    .line 2228
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x2

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I

    goto :goto_4

    .line 2230
    :cond_4
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I

    goto :goto_4

    .line 2234
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_5
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x0

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    .line 2242
    :pswitch_2
    const-string v4, "PhoneInterfaceManager"

    const-string v5, "BTSAP_POWERON_COMPLETE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    monitor-enter v5

    .line 2244
    :try_start_6
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_8

    .line 2245
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 2246
    .restart local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->BT_SAP_CARD_REMOVED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v6, :cond_6

    .line 2247
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x4

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I

    .line 2253
    :goto_6
    const-string v4, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception POWERON_COMPLETE, Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :goto_7
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1202(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;Z)Z

    .line 2270
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 2271
    monitor-exit v5

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v4

    .line 2248
    .restart local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_6
    :try_start_7
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->BT_SAP_NOT_ACCESSIBLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v6, :cond_7

    .line 2249
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x2

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I

    goto :goto_6

    .line 2251
    :cond_7
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I

    goto :goto_6

    .line 2255
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_8
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mStrResult:Ljava/lang/String;
    invoke-static {v6, v4}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1002(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 2256
    const-string v4, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BTSAP_POWERON_COMPLETE  mStrResult "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mStrResult:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1000(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mStrResult:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1000(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v3

    .line 2260
    .restart local v3    # "splited":[Ljava/lang/String;
    :try_start_8
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;
    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1100(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Landroid/telephony/BtSimapOperResponse;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/telephony/BtSimapOperResponse;->setCurType(I)V

    .line 2261
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;
    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1100(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Landroid/telephony/BtSimapOperResponse;

    move-result-object v4

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v4, v6}, Landroid/telephony/BtSimapOperResponse;->setAtrString(Ljava/lang/String;)V

    .line 2262
    const-string v4, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BTSAP_POWERON_COMPLETE curType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;
    invoke-static {v7}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1100(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Landroid/telephony/BtSimapOperResponse;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/BtSimapOperResponse;->getCurType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ATR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;
    invoke-static {v7}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1100(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Landroid/telephony/BtSimapOperResponse;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/BtSimapOperResponse;->getAtrString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2266
    :goto_8
    :try_start_9
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x0

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I

    goto/16 :goto_7

    .line 2263
    :catch_1
    move-exception v2

    .line 2264
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string v4, "PhoneInterfaceManager"

    const-string v6, "NumberFormatException"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_8

    .line 2274
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "splited":[Ljava/lang/String;
    :pswitch_3
    const-string v4, "PhoneInterfaceManager"

    const-string v5, "BTSAP_POWEROFF_COMPLETE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    monitor-enter v5

    .line 2276
    :try_start_a
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_b

    .line 2277
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 2278
    .restart local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->BT_SAP_CARD_REMOVED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v6, :cond_9

    .line 2279
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x4

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I

    .line 2285
    :goto_9
    const-string v4, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception BTSAP_POWEROFF, Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :goto_a
    const-string v4, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BTSAP_POWEROFF_COMPLETE result is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v7}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$900(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1202(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;Z)Z

    .line 2291
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 2292
    monitor-exit v5

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v4

    .line 2280
    .restart local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_9
    :try_start_b
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->BT_SAP_NOT_ACCESSIBLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v6, :cond_a

    .line 2281
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x2

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I

    goto :goto_9

    .line 2283
    :cond_a
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I

    goto :goto_9

    .line 2287
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_b
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x0

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_a

    .line 2295
    :pswitch_4
    const-string v4, "PhoneInterfaceManager"

    const-string v5, "BTSAP_RESETSIM_COMPLETE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    monitor-enter v5

    .line 2297
    :try_start_c
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_e

    .line 2298
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 2299
    .restart local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->BT_SAP_CARD_REMOVED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v6, :cond_c

    .line 2300
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x4

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I

    .line 2306
    :goto_b
    const-string v4, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception BTSAP_RESETSIM, Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :goto_c
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1202(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;Z)Z

    .line 2323
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 2324
    monitor-exit v5

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v4

    .line 2301
    .restart local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_c
    :try_start_d
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->BT_SAP_NOT_ACCESSIBLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v6, :cond_d

    .line 2302
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x2

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I

    goto :goto_b

    .line 2304
    :cond_d
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I

    goto :goto_b

    .line 2308
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_e
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mStrResult:Ljava/lang/String;
    invoke-static {v6, v4}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1002(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 2309
    const-string v4, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BTSAP_RESETSIM_COMPLETE  mStrResult "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mStrResult:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1000(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mStrResult:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1000(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-result-object v3

    .line 2313
    .restart local v3    # "splited":[Ljava/lang/String;
    :try_start_e
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;
    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1100(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Landroid/telephony/BtSimapOperResponse;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/telephony/BtSimapOperResponse;->setCurType(I)V

    .line 2314
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;
    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1100(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Landroid/telephony/BtSimapOperResponse;

    move-result-object v4

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v4, v6}, Landroid/telephony/BtSimapOperResponse;->setAtrString(Ljava/lang/String;)V

    .line 2315
    const-string v4, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BTSAP_RESETSIM_COMPLETE curType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;
    invoke-static {v7}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1100(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Landroid/telephony/BtSimapOperResponse;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/BtSimapOperResponse;->getCurType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ATR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;
    invoke-static {v7}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1100(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Landroid/telephony/BtSimapOperResponse;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/BtSimapOperResponse;->getAtrString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 2319
    :goto_d
    :try_start_f
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x0

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I

    goto/16 :goto_c

    .line 2316
    :catch_2
    move-exception v2

    .line 2317
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string v4, "PhoneInterfaceManager"

    const-string v6, "NumberFormatException"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_d

    .line 2327
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "splited":[Ljava/lang/String;
    :pswitch_5
    const-string v4, "PhoneInterfaceManager"

    const-string v5, "BTSAP_TRANSFER_APDU_COMPLETE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    monitor-enter v5

    .line 2329
    :try_start_10
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_11

    .line 2330
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 2331
    .restart local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->BT_SAP_CARD_REMOVED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v6, :cond_f

    .line 2332
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x4

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I

    .line 2339
    :goto_e
    const-string v4, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception BTSAP_TRANSFER_APDU, Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :goto_f
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1202(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;Z)Z

    .line 2347
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 2348
    monitor-exit v5

    goto/16 :goto_0

    :catchall_5
    move-exception v4

    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v4

    .line 2333
    .restart local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_f
    :try_start_11
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->BT_SAP_NOT_ACCESSIBLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v6, :cond_10

    .line 2334
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x2

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I

    goto :goto_e

    .line 2336
    :cond_10
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I

    goto :goto_e

    .line 2341
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_11
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;
    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1100(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Landroid/telephony/BtSimapOperResponse;

    move-result-object v6

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Landroid/telephony/BtSimapOperResponse;->setApduString(Ljava/lang/String;)V

    .line 2342
    const-string v4, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BTSAP_TRANSFER_APDU_COMPLETE result is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;
    invoke-static {v7}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$1100(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Landroid/telephony/BtSimapOperResponse;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/BtSimapOperResponse;->getApduString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    const/4 v6, 0x0

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_f

    .line 2183
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
