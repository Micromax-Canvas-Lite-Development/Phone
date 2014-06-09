.class Lcom/android/phone/UnlockPUKLock$4;
.super Landroid/os/Handler;
.source "UnlockPUKLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockPUKLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockPUKLock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPUKLock;)V
    .locals 0

    .prologue
    .line 788
    iput-object p1, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v11, 0x7f080082

    const/16 v10, 0x1f6

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 791
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 793
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    :goto_0
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    .line 799
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 907
    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 909
    :goto_2
    return-void

    .line 794
    :catch_0
    move-exception v1

    .line 795
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "UnlockPUKLock "

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 803
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    const-string v5, "UnlockPUKLock "

    const-string v6, "[mHandler][MSG2] +"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const-string v5, "UnlockPUKLock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[mHandler][MSG2][Result] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/phone/UnlockPUKLock;->result:Z
    invoke-static {}, Lcom/android/phone/UnlockPUKLock;->access$100()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    # getter for: Lcom/android/phone/UnlockPUKLock;->result:Z
    invoke-static {}, Lcom/android/phone/UnlockPUKLock;->access$100()Z

    move-result v5

    if-ne v5, v9, :cond_2

    .line 807
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto :goto_1

    .line 810
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 811
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v6, :cond_1

    .line 812
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    # invokes: Lcom/android/phone/UnlockPUKLock;->getRetryPukCount(I)I
    invoke-static {v6, v8}, Lcom/android/phone/UnlockPUKLock;->access$200(Lcom/android/phone/UnlockPUKLock;I)I

    move-result v6

    iput v6, v5, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    .line 813
    const-string v5, "UnlockPUKLock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[mHandler][MSG2][Single Card][PUK_REQUIRED][New Retry Count] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v7, v7, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v5, v5, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    if-lez v5, :cond_3

    .line 815
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    const-class v6, Lcom/android/phone/UnlockPUKLock;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 816
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 817
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "PUKPHASE"

    const-string v6, "1"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v5, "PUKLEFTRETRIES"

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v6, v6, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 819
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v6, v6, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 820
    const-string v5, "WRONGCODE"

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v6, v11}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 822
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5, v2}, Lcom/android/phone/UnlockPUKLock;->startActivity(Landroid/content/Intent;)V

    .line 823
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto/16 :goto_1

    .line 826
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5, v10, v8}, Lcom/android/phone/UnlockPUKLock;->sendVerifyResult(IZ)V

    .line 827
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto/16 :goto_1

    .line 837
    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    :pswitch_2
    const-string v5, "UnlockPUKLock "

    const-string v6, "[mHandler][MSG3] +"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const-string v5, "UnlockPUKLock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[mHandler][MSG3][Result] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/phone/UnlockPUKLock;->result:Z
    invoke-static {}, Lcom/android/phone/UnlockPUKLock;->access$100()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    # getter for: Lcom/android/phone/UnlockPUKLock;->result:Z
    invoke-static {}, Lcom/android/phone/UnlockPUKLock;->access$100()Z

    move-result v5

    if-ne v5, v9, :cond_4

    .line 841
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto/16 :goto_1

    .line 844
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 845
    .local v3, "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    const-string v5, "UnlockPUKLock "

    const-string v6, "[mHandler][MSG3][Gemini Card][SIM1][UnlockPinFail]+"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v6, :cond_1

    .line 847
    const-string v5, "UnlockPUKLock "

    const-string v6, "[mHandler][MSG3][Gemini Card][SIM1][Still PUK_REQUIRED]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    # invokes: Lcom/android/phone/UnlockPUKLock;->getRetryPukCount(I)I
    invoke-static {v6, v8}, Lcom/android/phone/UnlockPUKLock;->access$200(Lcom/android/phone/UnlockPUKLock;I)I

    move-result v6

    iput v6, v5, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    .line 849
    const-string v5, "UnlockPUKLock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[mHandler][MSG3][Gemini Card][SIM1][New Retry Count] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v7, v7, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v5, v5, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    if-lez v5, :cond_5

    .line 851
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    const-class v6, Lcom/android/phone/UnlockPUKLock;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 852
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 853
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v5, "PUKPHASE"

    const-string v6, "1"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v5, "PUKLEFTRETRIES"

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v6, v6, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 855
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v6, v6, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 856
    const-string v5, "WRONGCODE"

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v6, v11}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 858
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5, v2}, Lcom/android/phone/UnlockPUKLock;->startActivity(Landroid/content/Intent;)V

    .line 859
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto/16 :goto_1

    .line 862
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5, v10, v8}, Lcom/android/phone/UnlockPUKLock;->sendVerifyResult(IZ)V

    .line 863
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto/16 :goto_1

    .line 873
    .end local v3    # "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    :pswitch_3
    const-string v5, "UnlockPUKLock "

    const-string v6, "[mHandler][MSG4] +"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const-string v5, "UnlockPUKLock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[mHandler][MSG4][Result] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/phone/UnlockPUKLock;->result:Z
    invoke-static {}, Lcom/android/phone/UnlockPUKLock;->access$100()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    # getter for: Lcom/android/phone/UnlockPUKLock;->result:Z
    invoke-static {}, Lcom/android/phone/UnlockPUKLock;->access$100()Z

    move-result v5

    if-ne v5, v9, :cond_6

    .line 877
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto/16 :goto_2

    .line 880
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 881
    .restart local v3    # "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    const-string v5, "UnlockPUKLock "

    const-string v6, "[mHandler][MSG3][Gemini Card][SIM2][PUK_REQUIRED][UnlockPinFail]+"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v6, :cond_1

    .line 883
    const-string v5, "UnlockPUKLock "

    const-string v6, "[mHandler][MSG3][Gemini Card][SIM2][PUK_REQUIRED][Still PUK_REQUIRED]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    # invokes: Lcom/android/phone/UnlockPUKLock;->getRetryPukCount(I)I
    invoke-static {v6, v9}, Lcom/android/phone/UnlockPUKLock;->access$200(Lcom/android/phone/UnlockPUKLock;I)I

    move-result v6

    iput v6, v5, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    .line 885
    const-string v5, "UnlockPUKLock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[mHandler][MSG3][Gemini Card][SIM2][New Retry Count] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v7, v7, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v5, v5, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    if-lez v5, :cond_7

    .line 887
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    const-class v6, Lcom/android/phone/UnlockPUKLock;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 888
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 889
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v5, "PUKPHASE"

    const-string v6, "1"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const-string v5, "PUKLEFTRETRIES"

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v6, v6, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 891
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v6, v6, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 892
    const-string v5, "WRONGCODE"

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v6, v11}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 894
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5, v2}, Lcom/android/phone/UnlockPUKLock;->startActivity(Landroid/content/Intent;)V

    .line 895
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto/16 :goto_1

    .line 898
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5, v10, v8}, Lcom/android/phone/UnlockPUKLock;->sendVerifyResult(IZ)V

    .line 899
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto/16 :goto_1

    .line 799
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
