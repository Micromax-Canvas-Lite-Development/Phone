.class Lcom/android/phone/PhoneGlobals$1;
.super Landroid/os/Handler;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 390
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    .line 660
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 397
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/sip/SipService;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 416
    :sswitch_2
    const-string v12, "PhoneGlobals"

    const-string v13, "handle EVENT_SIM_NETWORK_LOCKED +"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    const-class v13, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 418
    .local v8, "intent3":Landroid/content/Intent;
    const/high16 v12, 0x10000000

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 419
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v12, v8}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    .line 420
    const-string v12, "PhoneGlobals"

    const-string v13, "handle EVENT_SIM_NETWORK_LOCKED -"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    .end local v8    # "intent3":Landroid/content/Intent;
    :sswitch_3
    const-string v12, "PhoneGlobals"

    const-string v13, "[Received][EVENT_SIM1_NETWORK_LOCKED]"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string v12, "PhoneGlobals"

    const-string v13, "handle EVENT_SIM1_NETWORK_LOCKED +"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    const-class v13, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-direct {v6, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 437
    .local v6, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 438
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v12, "PhoneConstants.GEMINI_SIM_ID_KEY"

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 439
    invoke-virtual {v6, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 440
    const/high16 v12, 0x10000000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 441
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v12, v6}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    .line 442
    const-string v12, "PhoneGlobals"

    const-string v13, "handle EVENT_SIM1_NETWORK_LOCKED -"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 458
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v6    # "intent":Landroid/content/Intent;
    :sswitch_4
    const-string v12, "PhoneGlobals"

    const-string v13, "[Received][EVENT_SIM2_NETWORK_LOCKED]"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v12, "PhoneGlobals"

    const-string v13, "handle EVENT_SIM2_NETWORK_LOCKED +"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    const-class v13, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-direct {v7, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 464
    .local v7, "intent2":Landroid/content/Intent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 465
    .local v3, "bundle2":Landroid/os/Bundle;
    const-string v12, "PhoneConstants.GEMINI_SIM_ID_KEY"

    const/4 v13, 0x1

    invoke-virtual {v3, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 466
    invoke-virtual {v7, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 467
    const/high16 v12, 0x10000000

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 468
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v12, v7}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    .line 469
    const-string v12, "PhoneGlobals"

    const-string v13, "handle EVENT_SIM2_NETWORK_LOCKED -"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 482
    .end local v3    # "bundle2":Landroid/os/Bundle;
    .end local v7    # "intent2":Landroid/content/Intent;
    :sswitch_5
    const-string v12, "PhoneGlobals"

    const-string v13, "- updating in-call notification from handler..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v12, v12, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v12}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 487
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v12, v12, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming(I)V

    goto/16 :goto_0

    .line 491
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v12, v12, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v12}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    goto/16 :goto_0

    .line 495
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v12}, Lcom/android/phone/PhoneGlobals;->access$200(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/InCallScreen;

    move-result-object v12

    if-nez v12, :cond_0

    .line 496
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v13, v12, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v14, v12, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    invoke-static {v14, v15, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/android/phone/InCallUiState;->setPendingUssdMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 503
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v12}, Lcom/android/phone/PhoneGlobals;->access$200(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/InCallScreen;

    move-result-object v12

    if-nez v12, :cond_0

    .line 504
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v13, v12, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v14, v12, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    invoke-static {v14, v15, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/android/phone/InCallUiState;->setPendingUssdMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 511
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v12, v12, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/phone/InCallUiState;->setPendingUssdMessage(Landroid/os/Message;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    # invokes: Lcom/android/phone/PhoneGlobals;->onMMIComplete(Landroid/os/AsyncResult;)V
    invoke-static {v13, v12}, Lcom/android/phone/PhoneGlobals;->access$300(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 516
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v12, v12, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/phone/InCallUiState;->setPendingUssdMessage(Landroid/os/Message;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    # invokes: Lcom/android/phone/PhoneGlobals;->onMMIComplete2(Landroid/os/AsyncResult;)V
    invoke-static {v13, v12}, Lcom/android/phone/PhoneGlobals;->access$400(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 521
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v12, v12, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/phone/PhoneUtils;->cancelMmiCodeExt(Lcom/android/internal/telephony/Phone;I)Z

    goto/16 :goto_0

    .line 525
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v12, v12, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/phone/PhoneUtils;->cancelMmiCodeExt(Lcom/android/internal/telephony/Phone;I)Z

    goto/16 :goto_0

    .line 534
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v12, v12, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    .line 536
    .local v10, "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v10, v12, :cond_1

    .line 537
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v12

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v12

    if-nez v12, :cond_1

    .line 538
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v12

    if-nez v12, :cond_2

    .line 540
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    .line 549
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v12, v10}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mTtyEnabled:Z
    invoke-static {v12}, Lcom/android/phone/PhoneGlobals;->access$500(Lcom/android/phone/PhoneGlobals;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 553
    const/16 v12, 0xe

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/phone/PhoneGlobals$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/phone/PhoneGlobals$1;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 544
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_1

    .line 561
    .end local v10    # "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v13, "READY"

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 565
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v12}, Lcom/android/phone/PhoneGlobals;->access$600(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 566
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v12}, Lcom/android/phone/PhoneGlobals;->access$600(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->finish()V

    .line 567
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    const/4 v13, 0x0

    # setter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v12, v13}, Lcom/android/phone/PhoneGlobals;->access$602(Lcom/android/phone/PhoneGlobals;Landroid/app/Activity;)Landroid/app/Activity;

    .line 569
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v12}, Lcom/android/phone/PhoneGlobals;->access$700(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 570
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v12}, Lcom/android/phone/PhoneGlobals;->access$700(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/ProgressDialog;->dismiss()V

    .line 571
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    const/4 v13, 0x0

    # setter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v12, v13}, Lcom/android/phone/PhoneGlobals;->access$702(Lcom/android/phone/PhoneGlobals;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 583
    :sswitch_10
    const/4 v5, 0x0

    .line 584
    .local v5, "inDockMode":Z
    sget v12, Lcom/android/phone/PhoneGlobals;->mDockState:I

    if-eqz v12, :cond_4

    .line 585
    const/4 v5, 0x1

    .line 587
    :cond_4
    const-string v12, "PhoneGlobals"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "received EVENT_DOCK_STATE_CHANGED. Phone inDock = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v12, v12, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    .line 591
    .restart local v10    # "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v10, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v12

    if-nez v12, :cond_0

    .line 593
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v5, v13}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 594
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    goto/16 :goto_0

    .line 601
    .end local v5    # "inDockMode":Z
    .end local v10    # "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 602
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I
    invoke-static {v12}, Lcom/android/phone/PhoneGlobals;->access$800(Lcom/android/phone/PhoneGlobals;)I

    move-result v11

    .line 607
    .local v11, "ttyMode":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v12, v12, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v12, Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->convertTTYmodeToRadio(I)I
    invoke-static {v13, v11}, Lcom/android/phone/PhoneGlobals;->access$900(Lcom/android/phone/PhoneGlobals;I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v14, v14, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x10

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setTTYModeGemini(ILandroid/os/Message;I)V

    .line 609
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v12, v12, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v12, Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->convertTTYmodeToRadio(I)I
    invoke-static {v13, v11}, Lcom/android/phone/PhoneGlobals;->access$900(Lcom/android/phone/PhoneGlobals;I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v14, v14, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x10

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setTTYModeGemini(ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 604
    .end local v11    # "ttyMode":I
    :cond_5
    const/4 v11, 0x0

    .restart local v11    # "ttyMode":I
    goto :goto_2

    .line 617
    .end local v11    # "ttyMode":I
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v0, p1

    # invokes: Lcom/android/phone/PhoneGlobals;->handleQueryTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v12, v0}, Lcom/android/phone/PhoneGlobals;->access$1000(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 621
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v0, p1

    # invokes: Lcom/android/phone/PhoneGlobals;->handleSetTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v12, v0}, Lcom/android/phone/PhoneGlobals;->access$1100(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 625
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Lcom/android/phone/PhoneGlobals;->handleTimeout(I)V

    goto/16 :goto_0

    .line 629
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 630
    .local v1, "ar":Landroid/os/AsyncResult;
    new-instance v9, Landroid/content/Intent;

    const-string v12, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 631
    .local v9, "it":Landroid/content/Intent;
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_6

    .line 632
    const-string v12, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    const/4 v13, 0x1

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 633
    const-string v12, "NEW_NETWORK_MODE"

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v12, v9}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 635
    :cond_6
    const-string v12, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 636
    const-string v12, "com.android.phone.OLD_NETWORK_MODE"

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 643
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "it":Landroid/content/Intent;
    :sswitch_16
    const-string v12, "PhoneGlobals"

    const-string v13, "mHandler.handleMessage() : EVENT_TOUCH_ANSWER_VT"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 646
    :catch_0
    move-exception v4

    .line 647
    .local v4, "e":Ljava/lang/Exception;
    const-string v12, "PhoneGlobals"

    const-string v13, "mHandler.handleMessage() : the InCallScreen Instance is null , so cannot answer incoming VT call"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 652
    .end local v4    # "e":Ljava/lang/Exception;
    :sswitch_17
    invoke-static {}, Lcom/android/phone/PhoneUtils;->showIncomingCallUi()V

    goto/16 :goto_0

    .line 657
    :sswitch_18
    const-string v12, "PhoneGlobals"

    const-string v13, "handle EVENT_TRIGGER_MAINTHREAD_LOOPER"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 390
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x7 -> :sswitch_e
        0x8 -> :sswitch_f
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0xb -> :sswitch_7
        0xc -> :sswitch_0
        0xd -> :sswitch_10
        0xe -> :sswitch_11
        0xf -> :sswitch_12
        0x10 -> :sswitch_13
        0x11 -> :sswitch_1
        0x12 -> :sswitch_14
        0x13 -> :sswitch_3
        0x15 -> :sswitch_4
        0x1e -> :sswitch_16
        0x1f -> :sswitch_18
        0x33 -> :sswitch_8
        0x34 -> :sswitch_a
        0x35 -> :sswitch_c
        0x36 -> :sswitch_9
        0x37 -> :sswitch_b
        0x38 -> :sswitch_d
        0x39 -> :sswitch_17
        0x271b -> :sswitch_15
    .end sparse-switch
.end method
