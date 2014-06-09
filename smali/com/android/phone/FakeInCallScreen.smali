.class public Lcom/android/phone/FakeInCallScreen;
.super Lcom/android/phone/InCallScreen;
.source "FakeInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/FakeInCallScreen$1;
    }
.end annotation


# static fields
.field private static final CALL_ENDED_EXTRA_LONG_DELAY:I = 0x1388

.field private static final CALL_ENDED_LONG_DELAY:I = 0x7d0

.field private static final CALL_ENDED_SHORT_DELAY:I = 0xc8

.field private static final DELAYED_CLEANUP_AFTER_DISCONNECT:I = 0x6c

.field private static final PHONE_DISCONNECT:I = 0x66

.field private static final PHONE_DISCONNECT2:I = 0x90

.field private static final VDBG:Z


# instance fields
.field mBannerInCallTouchUI:Lcom/android/phone/BannerInCallTouchUi;

.field private mContext:Landroid/content/Context;

.field mPhoneToolBar:Lcom/android/phone/PhoneToolBar;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/phone/FakeInCallScreen;->mContext:Landroid/content/Context;

    .line 19
    iput-object v0, p0, Lcom/android/phone/FakeInCallScreen;->mBannerInCallTouchUI:Lcom/android/phone/BannerInCallTouchUi;

    .line 29
    return-void
.end method

.method private displayLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 234
    return-void
.end method


# virtual methods
.method delayedCleanupAfterDisconnect()V
    .locals 3

    .prologue
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delayedCleanupAfterDisconnect mApp.isShowingCallScreen()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/FakeInCallScreen;->displayLog(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/phone/FakeInCallScreen;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/FakeInCallScreen;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 101
    .local v0, "currentlyIdle":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 102
    iget-object v1, p0, Lcom/android/phone/FakeInCallScreen;->mPhoneToolBar:Lcom/android/phone/PhoneToolBar;

    invoke-virtual {v1}, Lcom/android/phone/PhoneToolBar;->onPause()V

    .line 104
    :cond_1
    return-void

    .line 100
    .end local v0    # "currentlyIdle":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public delayedCleanupAfterDisconnect(I)V
    .locals 3
    .param p1, "msg"    # I

    .prologue
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delayedCleanupAfterDisconnect mApp.isShowingCallScreen()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/FakeInCallScreen;->displayLog(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/phone/FakeInCallScreen;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/FakeInCallScreen;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 90
    .local v0, "currentlyIdle":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 91
    iget-object v1, p0, Lcom/android/phone/FakeInCallScreen;->mPhoneToolBar:Lcom/android/phone/PhoneToolBar;

    invoke-virtual {v1}, Lcom/android/phone/PhoneToolBar;->onPause()V

    .line 93
    :cond_1
    return-void

    .line 89
    .end local v0    # "currentlyIdle":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/FakeInCallScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getSmsButtonView()Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/FakeInCallScreen;->mBannerInCallTouchUI:Lcom/android/phone/BannerInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/BannerInCallTouchUi;->getSmsView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method internalHangup()V
    .locals 2

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 247
    .local v0, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 248
    return-void
.end method

.method onDisconnect(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    const/16 v10, 0x6c

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 107
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 108
    .local v1, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v3

    .line 109
    .local v3, "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDisconnect: connection \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', cause = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", showing screen: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/FakeInCallScreen;->displayLog(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/phone/FakeInCallScreen;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v8, v9, :cond_1

    move v4, v6

    .line 112
    .local v4, "currentlyIdle":Z
    :goto_0
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v3, v8, :cond_0

    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v3, v8, :cond_2

    :cond_0
    if-eqz v4, :cond_2

    move v0, v6

    .line 116
    .local v0, "bailOutImmediately":Z
    :goto_1
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v8}, Lcom/android/phone/RespondViaSmsManager;->isShowingPopup()Z

    move-result v8

    if-eqz v8, :cond_3

    move v5, v6

    .line 119
    .local v5, "showingQuickResponseDialog":Z
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v5, :cond_4

    .line 120
    const-string v6, "- onDisconnect: Respond-via-SMS dialog is still being displayed..."

    invoke-direct {p0, v6}, Lcom/android/phone/FakeInCallScreen;->displayLog(Ljava/lang/String;)V

    .line 144
    :goto_3
    return-void

    .end local v0    # "bailOutImmediately":Z
    .end local v4    # "currentlyIdle":Z
    .end local v5    # "showingQuickResponseDialog":Z
    :cond_1
    move v4, v7

    .line 111
    goto :goto_0

    .restart local v4    # "currentlyIdle":Z
    :cond_2
    move v0, v7

    .line 112
    goto :goto_1

    .restart local v0    # "bailOutImmediately":Z
    :cond_3
    move v5, v7

    .line 116
    goto :goto_2

    .line 121
    .restart local v5    # "showingQuickResponseDialog":Z
    :cond_4
    if-eqz v0, :cond_5

    .line 122
    const-string v6, "- onDisconnect: bailOutImmediately..."

    invoke-direct {p0, v6}, Lcom/android/phone/FakeInCallScreen;->displayLog(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/phone/FakeInCallScreen;->delayedCleanupAfterDisconnect()V

    goto :goto_3

    .line 125
    :cond_5
    const-string v6, "- onDisconnect: delayed bailout..."

    invoke-direct {p0, v6}, Lcom/android/phone/FakeInCallScreen;->displayLog(Ljava/lang/String;)V

    .line 127
    sget-object v6, Lcom/android/phone/FakeInCallScreen$1;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 136
    const/16 v2, 0x1388

    .line 139
    .local v2, "callEndedDisplayDelay":I
    :goto_4
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    int-to-long v7, v2

    invoke-virtual {v6, v10, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 142
    invoke-virtual {p0}, Lcom/android/phone/FakeInCallScreen;->updateScreen()V

    goto :goto_3

    .line 129
    .end local v2    # "callEndedDisplayDelay":I
    :pswitch_0
    const/16 v2, 0xc8

    .line 130
    .restart local v2    # "callEndedDisplayDelay":I
    goto :goto_4

    .line 133
    .end local v2    # "callEndedDisplayDelay":I
    :pswitch_1
    const/16 v2, 0x7d0

    .line 134
    .restart local v2    # "callEndedDisplayDelay":I
    goto :goto_4

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method onDisconnect(Landroid/os/AsyncResult;I)V
    .locals 11
    .param p1, "r"    # Landroid/os/AsyncResult;
    .param p2, "msg"    # I

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/phone/FakeInCallScreen;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    .line 149
    .local v6, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-virtual {p0}, Lcom/android/phone/FakeInCallScreen;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v7, v8, :cond_2

    const/4 v4, 0x1

    .line 150
    .local v4, "currentlyIdle":Z
    :goto_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 151
    .local v1, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v3

    .line 152
    .local v3, "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v3, v7, :cond_0

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v3, v7, :cond_3

    :cond_0
    if-eqz v4, :cond_3

    const/4 v0, 0x1

    .line 156
    .local v0, "bailOutImmediately":Z
    :goto_1
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v7}, Lcom/android/phone/RespondViaSmsManager;->isShowingPopup()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v5, 0x1

    .line 158
    .local v5, "showingQuickResponseDialog":Z
    :goto_2
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v3, v7, :cond_6

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getShouldSendToVoiceMailFlag(Lcom/android/internal/telephony/Connection;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_1

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_1

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_6

    .line 164
    :cond_1
    const/16 v7, 0x66

    if-ne p2, v7, :cond_5

    .line 165
    const/16 v7, 0x6c

    invoke-virtual {p0, v7}, Lcom/android/phone/FakeInCallScreen;->delayedCleanupAfterDisconnect(I)V

    .line 170
    :goto_3
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 230
    :goto_4
    return-void

    .line 149
    .end local v0    # "bailOutImmediately":Z
    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    .end local v3    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v4    # "currentlyIdle":Z
    .end local v5    # "showingQuickResponseDialog":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 152
    .restart local v1    # "c":Lcom/android/internal/telephony/Connection;
    .restart local v3    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v4    # "currentlyIdle":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 156
    .restart local v0    # "bailOutImmediately":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 167
    .restart local v5    # "showingQuickResponseDialog":Z
    :cond_5
    const/16 v7, 0x93

    invoke-virtual {p0, v7}, Lcom/android/phone/FakeInCallScreen;->delayedCleanupAfterDisconnect(I)V

    goto :goto_3

    .line 173
    :cond_6
    if-eqz v0, :cond_7

    if-eqz v5, :cond_7

    .line 174
    const-string v7, "- onDisconnect: Respond-via-SMS dialog is still being displayed..."

    invoke-direct {p0, v7}, Lcom/android/phone/FakeInCallScreen;->displayLog(Ljava/lang/String;)V

    goto :goto_4

    .line 185
    :cond_7
    if-eqz v0, :cond_9

    .line 191
    const/16 v7, 0x66

    if-ne p2, v7, :cond_8

    .line 192
    const/16 v7, 0x6c

    invoke-virtual {p0, v7}, Lcom/android/phone/FakeInCallScreen;->delayedCleanupAfterDisconnect(I)V

    goto :goto_4

    .line 194
    :cond_8
    const/16 v7, 0x93

    invoke-virtual {p0, v7}, Lcom/android/phone/FakeInCallScreen;->delayedCleanupAfterDisconnect(I)V

    goto :goto_4

    .line 197
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/FakeInCallScreen;->updateScreen()V

    .line 199
    sget-object v7, Lcom/android/phone/FakeInCallScreen$1;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 218
    const/16 v2, 0x1388

    .line 221
    .local v2, "callEndedDisplayDelay":I
    :goto_5
    const/16 v7, 0x66

    if-ne p2, v7, :cond_a

    .line 222
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x6c

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x6c

    int-to-long v9, v2

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 211
    .end local v2    # "callEndedDisplayDelay":I
    :pswitch_0
    const/16 v2, 0xc8

    .line 212
    .restart local v2    # "callEndedDisplayDelay":I
    goto :goto_5

    .line 215
    .end local v2    # "callEndedDisplayDelay":I
    :pswitch_1
    const/16 v2, 0x7d0

    .line 216
    .restart local v2    # "callEndedDisplayDelay":I
    goto :goto_5

    .line 226
    :cond_a
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x93

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x93

    int-to-long v9, v2

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 74
    const-string v2, "onPhoneStateChanged"

    invoke-direct {p0, v2}, Lcom/android/phone/FakeInCallScreen;->displayLog(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/phone/FakeInCallScreen;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    .line 76
    .local v1, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPhoneStateChanged: current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/FakeInCallScreen;->displayLog(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/phone/FakeInCallScreen;->updateScreen()V

    .line 78
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 79
    .local v0, "currentlyIdle":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 80
    iget-object v2, p0, Lcom/android/phone/FakeInCallScreen;->mPhoneToolBar:Lcom/android/phone/PhoneToolBar;

    invoke-virtual {v2}, Lcom/android/phone/PhoneToolBar;->resetFlag()V

    .line 82
    :cond_0
    return-void

    .line 78
    .end local v0    # "currentlyIdle":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 1
    .param p1, "timeElapsed"    # J

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/phone/FakeInCallScreen;->mPhoneToolBar:Lcom/android/phone/PhoneToolBar;

    invoke-virtual {v0}, Lcom/android/phone/PhoneToolBar;->getCallCard()Lcom/android/phone/BannerCallCard;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/BannerCallCard;->updateElapsedTimeWidget(J)V

    .line 242
    :cond_0
    return-void
.end method

.method requestRemoveProviderInfoWithDelay()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/phone/FakeInCallScreen;->mContext:Landroid/content/Context;

    .line 33
    iget-object v0, p0, Lcom/android/phone/FakeInCallScreen;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/phone/FakeInCallScreen;->attachBaseContext(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public setInCallTouchUi(Lcom/android/phone/BannerInCallTouchUi;)V
    .locals 0
    .param p1, "inCallTouchUi"    # Lcom/android/phone/BannerInCallTouchUi;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/phone/FakeInCallScreen;->mBannerInCallTouchUI:Lcom/android/phone/BannerInCallTouchUi;

    .line 55
    return-void
.end method

.method setPhoneToolBar(Lcom/android/phone/PhoneToolBar;)V
    .locals 0
    .param p1, "toolbar"    # Lcom/android/phone/PhoneToolBar;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/phone/FakeInCallScreen;->mPhoneToolBar:Lcom/android/phone/PhoneToolBar;

    .line 71
    return-void
.end method

.method updateBannerBackground(I)V
    .locals 2
    .param p1, "resid"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/phone/FakeInCallScreen;->mPhoneToolBar:Lcom/android/phone/PhoneToolBar;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/phone/FakeInCallScreen;->mPhoneToolBar:Lcom/android/phone/PhoneToolBar;

    const v1, 0x7f0b00b0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneToolBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 254
    :cond_0
    return-void
.end method

.method updateButtonStateOutsideInCallTouchUi()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method updateInCallTouchUi()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/FakeInCallScreen;->mBannerInCallTouchUI:Lcom/android/phone/BannerInCallTouchUi;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/phone/FakeInCallScreen;->mBannerInCallTouchUI:Lcom/android/phone/BannerInCallTouchUi;

    invoke-virtual {p0}, Lcom/android/phone/FakeInCallScreen;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/BannerInCallTouchUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 49
    iget-object v0, p0, Lcom/android/phone/FakeInCallScreen;->mBannerInCallTouchUI:Lcom/android/phone/BannerInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/BannerInCallTouchUi;->hideUnSupportButton()V

    .line 51
    :cond_0
    return-void
.end method

.method updateScreen()V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/phone/FakeInCallScreen;->updateInCallTouchUi()V

    .line 59
    iget-object v0, p0, Lcom/android/phone/FakeInCallScreen;->mPhoneToolBar:Lcom/android/phone/PhoneToolBar;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/phone/FakeInCallScreen;->mPhoneToolBar:Lcom/android/phone/PhoneToolBar;

    invoke-virtual {v0}, Lcom/android/phone/PhoneToolBar;->refreshScreen()V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/FakeInCallScreen;->updateCallTime()V

    .line 63
    return-void
.end method
