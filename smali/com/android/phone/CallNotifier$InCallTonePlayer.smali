.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# static fields
.field public static final TONE_BUSY:I = 0x2

.field public static final TONE_CALL_ENDED:I = 0x4

.field public static final TONE_CALL_REMINDER:I = 0xf

.field public static final TONE_CALL_WAITING:I = 0x1

.field public static final TONE_CDMA_DROP:I = 0x8

.field public static final TONE_CONGESTION:I = 0x3

.field public static final TONE_INTERCEPT:I = 0x7

.field public static final TONE_NONE:I = 0x0

.field static final TONE_OFF:I = 0x0

.field static final TONE_ON:I = 0x1

.field public static final TONE_OTA_CALL_END:I = 0xb

.field public static final TONE_OUT_OF_SERVICE:I = 0x9

.field public static final TONE_REDIAL:I = 0xa

.field private static final TONE_RELATIVE_VOLUME_HIPRI:I = 0x50

.field private static final TONE_RELATIVE_VOLUME_HIPRIEST:I = 0x64

.field private static final TONE_RELATIVE_VOLUME_LOPRI:I = 0x32

.field public static final TONE_REORDER:I = 0x6

.field public static final TONE_RING_BACK:I = 0xc

.field static final TONE_STOPPED:I = 0x2

.field static final TONE_TIMEOUT_BUFFER:I = 0x14

.field public static final TONE_UNOBTAINABLE_NUMBER:I = 0xd

.field public static final TONE_VOICE_PRIVACY:I = 0x5


# instance fields
.field private mState:I

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 1
    .param p2, "toneId"    # I

    .prologue
    .line 2551
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 2552
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2553
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 2554
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2555
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 2559
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer.run(toneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2561
    const/4 v8, 0x0

    .line 2564
    .local v8, "toneType":I
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$700(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2566
    .local v3, "phoneType":I
    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    packed-switch v10, :pswitch_data_0

    .line 2668
    :pswitch_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad toneId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2568
    :pswitch_1
    const/16 v8, 0x16

    .line 2569
    const/16 v9, 0x50

    .line 2571
    .local v9, "toneVolume":I
    const v7, 0x7fffffeb

    .line 2676
    .local v7, "toneLengthMillis":I
    :goto_0
    :try_start_0
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 2677
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v5, 0x6

    .line 2682
    .local v5, "stream":I
    :goto_1
    if-nez v5, :cond_0

    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    const/16 v11, 0xf

    if-ne v10, v11, :cond_0

    .line 2684
    const/4 v5, 0x1

    .line 2686
    :cond_0
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "toneVolume is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2687
    new-instance v6, Landroid/media/ToneGenerator;

    invoke-direct {v6, v5, v9}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2709
    .end local v5    # "stream":I
    .local v6, "toneGenerator":Landroid/media/ToneGenerator;
    :goto_2
    const/4 v1, 0x1

    .line 2710
    .local v1, "needToStopTone":Z
    const/4 v2, 0x0

    .line 2712
    .local v2, "okToPlayTone":Z
    if-eqz v6, :cond_5

    .line 2713
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$900(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 2714
    .local v4, "ringerMode":I
    const/4 v10, 0x2

    if-ne v3, v10, :cond_12

    .line 2715
    const/16 v10, 0x5d

    if-ne v8, v10, :cond_d

    .line 2716
    if-eqz v4, :cond_1

    const/4 v10, 0x1

    if-eq v4, v10, :cond_1

    .line 2718
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- InCallTonePlayer: start playing call tone="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2719
    const/4 v2, 0x1

    .line 2720
    const/4 v1, 0x0

    .line 2747
    :cond_1
    :goto_3
    monitor-enter p0

    .line 2748
    if-eqz v2, :cond_4

    :try_start_1
    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_4

    .line 2749
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2750
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v11, "- InCallTonePlayer: startTone"

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2753
    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    const/16 v11, 0xf

    if-ne v10, v11, :cond_3

    :cond_2
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2755
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$900(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v10

    const-string v11, "SetWarningTone=14"

    invoke-virtual {v10, v11}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2758
    :cond_3
    invoke-virtual {v6, v8}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2760
    add-int/lit8 v10, v7, 0x14

    int-to-long v10, v10

    :try_start_2
    invoke-virtual {p0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2765
    :goto_4
    if-eqz v1, :cond_4

    .line 2766
    :try_start_3
    invoke-virtual {v6}, Landroid/media/ToneGenerator;->stopTone()V

    .line 2770
    :cond_4
    invoke-virtual {v6}, Landroid/media/ToneGenerator;->release()V

    .line 2771
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2773
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v11, "- InCallTonePlayer: stopTone"

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2774
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2790
    .end local v4    # "ringerMode":I
    :cond_5
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$700(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v10, v11, :cond_6

    .line 2791
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # invokes: Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)V

    .line 2794
    :cond_6
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/phone/CallNotifier;->mToneThread:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 2795
    return-void

    .line 2579
    .end local v1    # "needToStopTone":Z
    .end local v2    # "okToPlayTone":Z
    .end local v6    # "toneGenerator":Landroid/media/ToneGenerator;
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_2
    const/4 v10, 0x2

    if-ne v3, v10, :cond_7

    .line 2580
    const/16 v8, 0x60

    .line 2581
    const/16 v9, 0x32

    .line 2582
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x3e8

    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2583
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :cond_7
    const/4 v10, 0x1

    if-eq v3, v10, :cond_8

    const/4 v10, 0x3

    if-ne v3, v10, :cond_9

    .line 2585
    :cond_8
    const/16 v8, 0x11

    .line 2586
    const/16 v9, 0x50

    .line 2587
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xfa0

    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2589
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :cond_9
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected phone type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2593
    :pswitch_3
    const/16 v8, 0x12

    .line 2594
    const/16 v9, 0x50

    .line 2595
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xfa0

    .line 2596
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2599
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_4
    const/16 v8, 0x1b

    .line 2600
    const/16 v9, 0x50

    .line 2604
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x200

    .line 2605
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2607
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_5
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v10, v10, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    .line 2609
    const/16 v8, 0x5d

    .line 2610
    const/16 v9, 0x50

    .line 2611
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x2ee

    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2613
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :cond_a
    const/16 v8, 0x1b

    .line 2614
    const/16 v9, 0x50

    .line 2615
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xc8

    .line 2617
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2619
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_6
    const/16 v8, 0x56

    .line 2620
    const/16 v9, 0x50

    .line 2621
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x1388

    .line 2622
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2624
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_7
    const/16 v8, 0x26

    .line 2625
    const/16 v9, 0x50

    .line 2626
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xfa0

    .line 2627
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2629
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_8
    const/16 v8, 0x25

    .line 2630
    const/16 v9, 0x32

    .line 2631
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x1f4

    .line 2632
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2635
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_9
    const/16 v8, 0x5f

    .line 2636
    const/16 v9, 0x32

    .line 2637
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x177

    .line 2638
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2640
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_a
    const/16 v8, 0x57

    .line 2641
    const/16 v9, 0x32

    .line 2642
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x1388

    .line 2643
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2645
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_b
    const/16 v8, 0x17

    .line 2650
    const/16 v9, 0x1c2

    .line 2654
    .restart local v9    # "toneVolume":I
    const v7, 0x7fffffeb

    .line 2655
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2657
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_c
    const/16 v8, 0x15

    .line 2658
    const/16 v9, 0x50

    .line 2659
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x3e8

    .line 2660
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2662
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_d
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v11, "InCallTonePlayer.TONE_CALL_NOTIFY "

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2663
    const/16 v8, 0x1b

    .line 2664
    const/16 v9, 0x64

    .line 2665
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x1f4

    .line 2666
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2677
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2680
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "stream":I
    goto/16 :goto_1

    .line 2689
    .end local v5    # "stream":I
    :catch_0
    move-exception v0

    .line 2690
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    const/4 v6, 0x0

    .restart local v6    # "toneGenerator":Landroid/media/ToneGenerator;
    goto/16 :goto_2

    .line 2722
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "needToStopTone":Z
    .restart local v2    # "okToPlayTone":Z
    .restart local v4    # "ringerMode":I
    :cond_d
    const/16 v10, 0x60

    if-eq v8, v10, :cond_e

    const/16 v10, 0x26

    if-eq v8, v10, :cond_e

    const/16 v10, 0x27

    if-eq v8, v10, :cond_e

    const/16 v10, 0x25

    if-eq v8, v10, :cond_e

    const/16 v10, 0x5f

    if-ne v8, v10, :cond_f

    .line 2727
    :cond_e
    if-eqz v4, :cond_1

    .line 2728
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2729
    const/4 v2, 0x1

    .line 2730
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 2732
    :cond_f
    const/16 v10, 0x57

    if-eq v8, v10, :cond_10

    const/16 v10, 0x56

    if-ne v8, v10, :cond_11

    .line 2734
    :cond_10
    if-eqz v4, :cond_1

    const/4 v10, 0x1

    if-eq v4, v10, :cond_1

    .line 2736
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2737
    const/4 v2, 0x1

    .line 2738
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 2741
    :cond_11
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 2744
    :cond_12
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 2761
    :catch_1
    move-exception v0

    .line 2762
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer stopped: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2774
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 2566
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method public stopTone()V
    .locals 2

    .prologue
    .line 2798
    monitor-enter p0

    .line 2799
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2800
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2802
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2803
    monitor-exit p0

    .line 2804
    return-void

    .line 2803
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
