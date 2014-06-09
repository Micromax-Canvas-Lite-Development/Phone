.class Lcom/android/phone/PhoneUtils$ConnectionHandler;
.super Landroid/os/Handler;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/PhoneUtils$1;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/phone/PhoneUtils$ConnectionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 192
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 193
    .local v1, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_0

    .line 282
    :goto_0
    return-void

    .line 197
    :pswitch_0
    const-string v14, "ConnectionHandler: updating mute state for each connection"

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 199
    iget-object v4, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/CallManager;

    .line 206
    .local v4, "cm":Lcom/android/internal/telephony/CallManager;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v11, "fgConnections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/Call;

    .line 208
    .local v10, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v14

    if-nez v14, :cond_0

    .line 209
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 212
    .end local v10    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/Connection;

    .line 213
    .local v8, "cn":Lcom/android/internal/telephony/Connection;
    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$100()Ljava/util/Hashtable;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_2

    .line 214
    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$100()Ljava/util/Hashtable;

    move-result-object v14

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v8, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 221
    .end local v8    # "cn":Lcom/android/internal/telephony/Connection;
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v3, "bgConnections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Call;

    .line 223
    .local v2, "bgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v14

    if-nez v14, :cond_4

    .line 224
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 227
    .end local v2    # "bgCall":Lcom/android/internal/telephony/Call;
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/Connection;

    .line 228
    .restart local v8    # "cn":Lcom/android/internal/telephony/Connection;
    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$100()Ljava/util/Hashtable;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_6

    .line 229
    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$100()Ljava/util/Hashtable;

    move-result-object v14

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v8, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 237
    .end local v8    # "cn":Lcom/android/internal/telephony/Connection;
    :cond_7
    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$100()Ljava/util/Hashtable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 238
    .local v9, "cnlist":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :cond_8
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 239
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/Connection;

    .line 240
    .restart local v8    # "cn":Lcom/android/internal/telephony/Connection;
    invoke-interface {v11, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 241
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "connection \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\' not accounted for, removing."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 242
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 252
    .end local v8    # "cn":Lcom/android/internal/telephony/Connection;
    :cond_9
    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v14, v15, :cond_a

    .line 253
    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 255
    :cond_a
    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    const/4 v15, 0x0

    # invokes: Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V
    invoke-static {v14, v15}, Lcom/android/phone/PhoneUtils;->access$200(Lcom/android/internal/telephony/Phone;Z)V

    goto/16 :goto_0

    .line 261
    .end local v3    # "bgConnections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v4    # "cm":Lcom/android/internal/telephony/CallManager;
    .end local v9    # "cnlist":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    .end local v11    # "fgConnections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    :pswitch_1
    const-string v14, "ConnectionHandler: PHONE_SPEECH_INFO2"

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 262
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 263
    .local v7, "cm4":Lcom/android/internal/telephony/gemini/MTKCallManager;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 264
    # getter for: Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$300()Lcom/android/phone/PhoneUtils$ConnectionHandler;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v7, v14, v15}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForSpeechInfoGemini(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 267
    .end local v7    # "cm4":Lcom/android/internal/telephony/gemini/MTKCallManager;
    :pswitch_2
    const-string v14, "ConnectionHandler: PHONE_SPEECH_INFO"

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 269
    iget-object v14, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v13, v14, Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 270
    .local v13, "isMTKCm":Z
    if-eqz v13, :cond_b

    .line 271
    iget-object v6, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 272
    .local v6, "cm3":Lcom/android/internal/telephony/gemini/MTKCallManager;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 273
    # getter for: Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$300()Lcom/android/phone/PhoneUtils$ConnectionHandler;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForSpeechInfoGemini(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 275
    .end local v6    # "cm3":Lcom/android/internal/telephony/gemini/MTKCallManager;
    :cond_b
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/CallManager;

    .line 276
    .local v5, "cm2":Lcom/android/internal/telephony/CallManager;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 277
    # getter for: Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$300()Lcom/android/phone/PhoneUtils$ConnectionHandler;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/android/internal/telephony/CallManager;->unregisterForSpeechInfo(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
