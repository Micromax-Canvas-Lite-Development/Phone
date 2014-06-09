.class Lcom/android/phone/CallNotifier$2;
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
    .line 662
    iput-object p1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier$2;->inAirplaneMode:Z

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 2
    .param p1, "cfi"    # Z

    .prologue
    const/4 v1, 0x1

    .line 673
    iget-object v0, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->cfiStatus:[Z

    aput-boolean p1, v0, v1

    .line 675
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier$2;->inAirplaneMode:Z

    if-nez v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    # invokes: Lcom/android/phone/CallNotifier;->onCfiChanged(ZI)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;ZI)V

    .line 678
    :cond_0
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 2
    .param p1, "mwi"    # Z

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v1, 0x1

    # invokes: Lcom/android/phone/CallNotifier;->onMwiChanged(ZI)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;ZI)V

    .line 669
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 7
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 682
    const-string v1, "CallNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PhoneStateListener222.onServiceStateChanged: serviceState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v1, v6, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/CallNotifier$2;->inAirplaneMode:Z

    .line 686
    iget-boolean v1, p0, Lcom/android/phone/CallNotifier$2;->inAirplaneMode:Z

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 688
    iget-object v1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    # invokes: Lcom/android/phone/CallNotifier;->onMwiChanged(ZI)V
    invoke-static {v1, v3, v2}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;ZI)V

    .line 696
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v1, v6, :cond_6

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/phone/CallNotifier$2;->inAirplaneMode:Z

    .line 697
    iget-boolean v1, p0, Lcom/android/phone/CallNotifier$2;->inAirplaneMode:Z

    if-eqz v1, :cond_7

    .line 698
    iget-object v1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    # invokes: Lcom/android/phone/CallNotifier;->onCfiChanged(ZI)V
    invoke-static {v1, v3, v2}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;ZI)V

    .line 707
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v1, v3

    .line 684
    goto :goto_0

    .line 690
    :cond_3
    iget-boolean v1, p0, Lcom/android/phone/CallNotifier$2;->inAirplaneMode:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eq v1, v6, :cond_0

    .line 692
    iget-object v4, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getMessageWaitingIndicatorGemini(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->sim2Mwi:Z
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$300(Lcom/android/phone/CallNotifier;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move v1, v2

    :goto_4
    # invokes: Lcom/android/phone/CallNotifier;->onMwiChanged(ZI)V
    invoke-static {v4, v1, v2}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;ZI)V

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_4

    :cond_6
    move v1, v3

    .line 696
    goto :goto_2

    .line 700
    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->isSimInsert(I)Z

    move-result v0

    .line 701
    .local v0, "isSimInserted":Z
    iget-object v1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v1, v1, Lcom/android/phone/CallNotifier;->cfiStatus:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_8

    .line 702
    iget-object v1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    # invokes: Lcom/android/phone/CallNotifier;->onCfiChanged(ZI)V
    invoke-static {v1, v2, v2}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;ZI)V

    goto :goto_3

    .line 703
    :cond_8
    iget-object v1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v1, v1, Lcom/android/phone/CallNotifier;->cfiStatus:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 704
    iget-object v1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    # invokes: Lcom/android/phone/CallNotifier;->onCfiChanged(ZI)V
    invoke-static {v1, v3, v2}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;ZI)V

    goto :goto_3
.end method
