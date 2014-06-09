.class Lcom/android/phone/CallCard$2;
.super Ljava/lang/Object;
.source "CallCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCard;)V
    .locals 0

    .prologue
    .line 3547
    iput-object p1, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3550
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3551
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 3571
    const-string v1, "do nothing"

    # invokes: Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$400(Ljava/lang/String;)V

    .line 3574
    :goto_0
    return-void

    .line 3553
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    const/4 v2, 0x1

    # setter for: Lcom/android/phone/CallCard;->mShowSwtchCall2Animator:Z
    invoke-static {v1, v2}, Lcom/android/phone/CallCard;->access$202(Lcom/android/phone/CallCard;Z)Z

    .line 3554
    iget-object v1, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    # invokes: Lcom/android/phone/CallCard;->displaySwitchIncomingAnimator()V
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$300(Lcom/android/phone/CallCard;)V

    goto :goto_0

    .line 3558
    :sswitch_1
    const-string v1, "callCardListener: Which call to disconnected?"

    # invokes: Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$400(Ljava/lang/String;)V

    .line 3560
    iget-object v1, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    iget-object v1, v1, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    iget-object v1, v1, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkMultipleHoldCase()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3561
    iget-object v1, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    # getter for: Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$500(Lcom/android/phone/CallCard;)Lcom/android/phone/InCallScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    iget-object v2, v2, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleUnholdAndEnd(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 3562
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    iget-object v1, v1, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    iget-object v1, v1, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->isMultiplePhoneActive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    iget-object v1, v1, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3564
    iget-object v1, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    iget-object v1, v1, Lcom/android/phone/CallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 3566
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    # getter for: Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$600(Lcom/android/phone/CallCard;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 3551
    :sswitch_data_0
    .sparse-switch
        0x7f0b008d -> :sswitch_1
        0x7f0b00b9 -> :sswitch_0
    .end sparse-switch
.end method
