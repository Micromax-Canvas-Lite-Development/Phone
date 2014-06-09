.class Lcom/android/phone/InCallScreen$4;
.super Landroid/content/BroadcastReceiver;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Lcom/android/phone/InCallScreen$4;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 825
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/phone/InCallScreen;->ACTION_LOCKED:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$1900()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 827
    const v1, 0x7f080009

    .line 828
    .local v1, "msg":I
    iget-object v3, p0, Lcom/android/phone/InCallScreen$4;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v3, v3, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 829
    .local v2, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    .line 850
    .end local v1    # "msg":I
    .end local v2    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_0
    :goto_0
    return-void

    .line 832
    .restart local v1    # "msg":I
    .restart local v2    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen$4;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 844
    .end local v1    # "msg":I
    .end local v2    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen$4;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$1100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen$4;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3, v4}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 845
    iget-object v3, p0, Lcom/android/phone/InCallScreen$4;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 847
    sget-object v3, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/Constants$VTScreenMode;

    iget-object v4, p0, Lcom/android/phone/InCallScreen$4;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/mediatek/phone/vt/IVTInCallScreen;
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)Lcom/mediatek/phone/vt/IVTInCallScreen;

    move-result-object v4

    invoke-interface {v4}, Lcom/mediatek/phone/vt/IVTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 848
    iget-object v3, p0, Lcom/android/phone/InCallScreen$4;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/mediatek/phone/vt/IVTInCallScreen;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)Lcom/mediatek/phone/vt/IVTInCallScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen$4;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/mediatek/phone/vt/IVTInCallScreen;
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)Lcom/mediatek/phone/vt/IVTInCallScreen;

    move-result-object v4

    invoke-interface {v4}, Lcom/mediatek/phone/vt/IVTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mediatek/phone/vt/IVTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    goto :goto_0

    .line 834
    :cond_3
    # getter for: Lcom/android/phone/InCallScreen;->ACTION_UNLOCK:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$2000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 835
    const v1, 0x7f08000a

    .line 836
    .restart local v1    # "msg":I
    iget-object v3, p0, Lcom/android/phone/InCallScreen$4;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v3, v3, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 837
    .restart local v2    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    .line 840
    iget-object v3, p0, Lcom/android/phone/InCallScreen$4;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
