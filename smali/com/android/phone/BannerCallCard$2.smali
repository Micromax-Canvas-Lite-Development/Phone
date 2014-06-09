.class Lcom/android/phone/BannerCallCard$2;
.super Ljava/lang/Object;
.source "BannerCallCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BannerCallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BannerCallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/BannerCallCard;)V
    .locals 0

    .prologue
    .line 3832
    iput-object p1, p0, Lcom/android/phone/BannerCallCard$2;->this$0:Lcom/android/phone/BannerCallCard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3835
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3836
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 3862
    const-string v1, "do nothing"

    # invokes: Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BannerCallCard;->access$400(Ljava/lang/String;)V

    .line 3865
    :goto_0
    return-void

    .line 3838
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/BannerCallCard$2;->this$0:Lcom/android/phone/BannerCallCard;

    const/4 v2, 0x1

    # setter for: Lcom/android/phone/BannerCallCard;->mShowSwtchCall2Animator:Z
    invoke-static {v1, v2}, Lcom/android/phone/BannerCallCard;->access$202(Lcom/android/phone/BannerCallCard;Z)Z

    .line 3839
    iget-object v1, p0, Lcom/android/phone/BannerCallCard$2;->this$0:Lcom/android/phone/BannerCallCard;

    # invokes: Lcom/android/phone/BannerCallCard;->displaySwitchIncomingAnimator()V
    invoke-static {v1}, Lcom/android/phone/BannerCallCard;->access$300(Lcom/android/phone/BannerCallCard;)V

    goto :goto_0

    .line 3843
    :sswitch_1
    const-string v1, "callCardListener: Which call to disconnected?"

    # invokes: Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BannerCallCard;->access$400(Ljava/lang/String;)V

    .line 3846
    iget-object v1, p0, Lcom/android/phone/BannerCallCard$2;->this$0:Lcom/android/phone/BannerCallCard;

    iget-object v1, v1, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BannerCallCard$2;->this$0:Lcom/android/phone/BannerCallCard;

    iget-object v1, v1, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkMultipleHoldCase()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3848
    iget-object v1, p0, Lcom/android/phone/BannerCallCard$2;->this$0:Lcom/android/phone/BannerCallCard;

    # getter for: Lcom/android/phone/BannerCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v1}, Lcom/android/phone/BannerCallCard;->access$500(Lcom/android/phone/BannerCallCard;)Lcom/android/phone/InCallScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BannerCallCard$2;->this$0:Lcom/android/phone/BannerCallCard;

    iget-object v2, v2, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleUnholdAndEnd(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 3850
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BannerCallCard$2;->this$0:Lcom/android/phone/BannerCallCard;

    iget-object v1, v1, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/BannerCallCard$2;->this$0:Lcom/android/phone/BannerCallCard;

    iget-object v1, v1, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->isMultiplePhoneActive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/BannerCallCard$2;->this$0:Lcom/android/phone/BannerCallCard;

    iget-object v1, v1, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3853
    iget-object v1, p0, Lcom/android/phone/BannerCallCard$2;->this$0:Lcom/android/phone/BannerCallCard;

    iget-object v1, v1, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 3856
    :cond_1
    iget-object v1, p0, Lcom/android/phone/BannerCallCard$2;->this$0:Lcom/android/phone/BannerCallCard;

    # getter for: Lcom/android/phone/BannerCallCard;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/BannerCallCard;->access$600(Lcom/android/phone/BannerCallCard;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 3836
    :sswitch_data_0
    .sparse-switch
        0x7f0b008d -> :sswitch_1
        0x7f0b00b9 -> :sswitch_0
    .end sparse-switch
.end method
