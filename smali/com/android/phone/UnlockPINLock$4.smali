.class Lcom/android/phone/UnlockPINLock$4;
.super Landroid/os/Handler;
.source "UnlockPINLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockPINLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockPINLock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPINLock;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v9, 0x7f080082

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 724
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 851
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 852
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPINLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 853
    return-void

    .line 728
    :pswitch_1
    const-string v4, "UnlockPINLock "

    const-string v5, "[mHandler][MSG2] +"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const-string v4, "UnlockPINLock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[mHandler][MSG2][Result] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/phone/UnlockPINLock;->result:Z
    invoke-static {}, Lcom/android/phone/UnlockPINLock;->access$100()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    # getter for: Lcom/android/phone/UnlockPINLock;->result:Z
    invoke-static {}, Lcom/android/phone/UnlockPINLock;->access$100()Z

    move-result v4

    if-ne v4, v7, :cond_0

    .line 732
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-virtual {v4}, Lcom/android/phone/UnlockPINLock;->finish()V

    goto :goto_0

    .line 736
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 737
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v5, :cond_1

    .line 738
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v5, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    # invokes: Lcom/android/phone/UnlockPINLock;->getRetryPinCount(I)I
    invoke-static {v5, v8}, Lcom/android/phone/UnlockPINLock;->access$200(Lcom/android/phone/UnlockPINLock;I)I

    move-result v5

    iput v5, v4, Lcom/android/phone/UnlockPINLock;->retryCount:I

    .line 739
    const-string v4, "UnlockPINLock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[mHandler][MSG2][Single Card][PIN_REQUIRED][New Retry Count] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    iget v6, v6, Lcom/android/phone/UnlockPINLock;->retryCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    iget v4, v4, Lcom/android/phone/UnlockPINLock;->retryCount:I

    if-lez v4, :cond_1

    .line 741
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    const-class v5, Lcom/android/phone/UnlockPINLock;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 742
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 743
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "PUKLEFTRETRIES"

    iget-object v5, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    iget v5, v5, Lcom/android/phone/UnlockPINLock;->retryCount:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 744
    const-string v4, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v5, Lcom/android/phone/UnlockPINLock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 745
    const-string v4, "WRONGCODE"

    iget-object v5, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-virtual {v5, v9}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 747
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-virtual {v4, v1}, Lcom/android/phone/UnlockPINLock;->startActivity(Landroid/content/Intent;)V

    .line 763
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-virtual {v4}, Lcom/android/phone/UnlockPINLock;->finish()V

    goto/16 :goto_0

    .line 769
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :pswitch_2
    const-string v4, "UnlockPINLock "

    const-string v5, "[mHandler][MSG3] +"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const-string v4, "UnlockPINLock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[mHandler][MSG3][Result] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/phone/UnlockPINLock;->result:Z
    invoke-static {}, Lcom/android/phone/UnlockPINLock;->access$100()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    # getter for: Lcom/android/phone/UnlockPINLock;->result:Z
    invoke-static {}, Lcom/android/phone/UnlockPINLock;->access$100()Z

    move-result v4

    if-ne v4, v7, :cond_2

    .line 773
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-virtual {v4}, Lcom/android/phone/UnlockPINLock;->finish()V

    goto/16 :goto_0

    .line 777
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 778
    .local v2, "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    const-string v4, "UnlockPINLock "

    const-string v5, "[mHandler][MSG3][Gemini Card][SIM1][UnlockPinFail]+"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v5, :cond_3

    .line 780
    const-string v4, "UnlockPINLock "

    const-string v5, "[mHandler][MSG3][Gemini Card][SIM1][Still PIN_REQUIRED]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v5, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    # invokes: Lcom/android/phone/UnlockPINLock;->getRetryPinCount(I)I
    invoke-static {v5, v8}, Lcom/android/phone/UnlockPINLock;->access$200(Lcom/android/phone/UnlockPINLock;I)I

    move-result v5

    iput v5, v4, Lcom/android/phone/UnlockPINLock;->retryCount:I

    .line 782
    const-string v4, "UnlockPINLock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[mHandler][MSG3][Gemini Card][SIM1][New Retry Count] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    iget v6, v6, Lcom/android/phone/UnlockPINLock;->retryCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    iget v4, v4, Lcom/android/phone/UnlockPINLock;->retryCount:I

    if-lez v4, :cond_3

    .line 784
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    const-class v5, Lcom/android/phone/UnlockPINLock;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 785
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 786
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v4, "PUKLEFTRETRIES"

    iget-object v5, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    iget v5, v5, Lcom/android/phone/UnlockPINLock;->retryCount:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 787
    const-string v4, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v5, Lcom/android/phone/UnlockPINLock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 788
    const-string v4, "WRONGCODE"

    iget-object v5, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-virtual {v5, v9}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 790
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-virtual {v4, v1}, Lcom/android/phone/UnlockPINLock;->startActivity(Landroid/content/Intent;)V

    .line 805
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-virtual {v4}, Lcom/android/phone/UnlockPINLock;->finish()V

    goto/16 :goto_0

    .line 811
    .end local v2    # "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    :pswitch_3
    const-string v4, "UnlockPINLock "

    const-string v5, "[mHandler][MSG4] +"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const-string v4, "UnlockPINLock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[mHandler][MSG4][Result] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/phone/UnlockPINLock;->result:Z
    invoke-static {}, Lcom/android/phone/UnlockPINLock;->access$100()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    # getter for: Lcom/android/phone/UnlockPINLock;->result:Z
    invoke-static {}, Lcom/android/phone/UnlockPINLock;->access$100()Z

    move-result v4

    if-ne v4, v7, :cond_4

    .line 815
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-virtual {v4}, Lcom/android/phone/UnlockPINLock;->finish()V

    goto/16 :goto_0

    .line 819
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 820
    .restart local v2    # "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    const-string v4, "UnlockPINLock "

    const-string v5, "[mHandler][MSG3][Gemini Card][SIM2][PIN_REQUIRED][UnlockPinFail]+"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v5, :cond_5

    .line 822
    const-string v4, "UnlockPINLock "

    const-string v5, "[mHandler][MSG3][Gemini Card][SIM2][PIN_REQUIRED][Still PIN_REQUIRED]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v5, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    # invokes: Lcom/android/phone/UnlockPINLock;->getRetryPinCount(I)I
    invoke-static {v5, v7}, Lcom/android/phone/UnlockPINLock;->access$200(Lcom/android/phone/UnlockPINLock;I)I

    move-result v5

    iput v5, v4, Lcom/android/phone/UnlockPINLock;->retryCount:I

    .line 824
    const-string v4, "UnlockPINLock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[mHandler][MSG3][Gemini Card][SIM2][New Retry Count] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    iget v6, v6, Lcom/android/phone/UnlockPINLock;->retryCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    iget v4, v4, Lcom/android/phone/UnlockPINLock;->retryCount:I

    if-lez v4, :cond_5

    .line 826
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    const-class v5, Lcom/android/phone/UnlockPINLock;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 827
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 828
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v4, "PUKLEFTRETRIES"

    iget-object v5, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    iget v5, v5, Lcom/android/phone/UnlockPINLock;->retryCount:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 829
    const-string v4, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v5, Lcom/android/phone/UnlockPINLock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 830
    const-string v4, "WRONGCODE"

    iget-object v5, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-virtual {v5, v9}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 832
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-virtual {v4, v1}, Lcom/android/phone/UnlockPINLock;->startActivity(Landroid/content/Intent;)V

    .line 847
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock$4;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-virtual {v4}, Lcom/android/phone/UnlockPINLock;->finish()V

    goto/16 :goto_0

    .line 724
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
