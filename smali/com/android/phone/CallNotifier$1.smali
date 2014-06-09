.class Lcom/android/phone/CallNotifier$1;
.super Landroid/telephony/PhoneStateListener;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field inAirplaneMode:Z

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 1

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier$1;->inAirplaneMode:Z

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 2
    .param p1, "cfi"    # Z

    .prologue
    const/4 v1, 0x0

    .line 621
    iget-object v0, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->cfiStatus:[Z

    aput-boolean p1, v0, v1

    .line 622
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier$1;->inAirplaneMode:Z

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    # invokes: Lcom/android/phone/CallNotifier;->onCfiChanged(ZI)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;ZI)V

    .line 625
    :cond_0
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 2
    .param p1, "mwi"    # Z

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v1, 0x0

    # invokes: Lcom/android/phone/CallNotifier;->onMwiChanged(ZI)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;ZI)V

    .line 618
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 7
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x3

    const/4 v3, 0x0

    .line 629
    const-string v1, "CallNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PhoneStateListener.onServiceStateChanged: serviceState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-boolean v1, p0, Lcom/android/phone/CallNotifier$1;->inAirplaneMode:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 635
    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    # invokes: Lcom/android/phone/CallNotifier;->onMwiChanged(ZI)V
    invoke-static {v1, v3, v3}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;ZI)V

    .line 647
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v1, v6, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/phone/CallNotifier$1;->inAirplaneMode:Z

    .line 648
    iget-boolean v1, p0, Lcom/android/phone/CallNotifier$1;->inAirplaneMode:Z

    if-eqz v1, :cond_4

    .line 649
    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    # invokes: Lcom/android/phone/CallNotifier;->onCfiChanged(ZI)V
    invoke-static {v1, v3, v3}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;ZI)V

    .line 658
    :cond_1
    :goto_2
    return-void

    .line 637
    :cond_2
    iget-boolean v1, p0, Lcom/android/phone/CallNotifier$1;->inAirplaneMode:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eq v1, v6, :cond_0

    .line 640
    iget-object v4, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getMessageWaitingIndicatorGemini(I)Z

    move-result v1

    # invokes: Lcom/android/phone/CallNotifier;->onMwiChanged(ZI)V
    invoke-static {v4, v1, v3}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;ZI)V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 647
    goto :goto_1

    .line 651
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1, v3}, Lcom/android/phone/PhoneInterfaceManager;->isSimInsert(I)Z

    move-result v0

    .line 652
    .local v0, "isSimInserted":Z
    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v1, v1, Lcom/android/phone/CallNotifier;->cfiStatus:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_5

    .line 653
    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    # invokes: Lcom/android/phone/CallNotifier;->onCfiChanged(ZI)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;ZI)V

    goto :goto_2

    .line 654
    :cond_5
    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v1, v1, Lcom/android/phone/CallNotifier;->cfiStatus:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 655
    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    # invokes: Lcom/android/phone/CallNotifier;->onCfiChanged(ZI)V
    invoke-static {v1, v3, v3}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;ZI)V

    goto :goto_2
.end method
