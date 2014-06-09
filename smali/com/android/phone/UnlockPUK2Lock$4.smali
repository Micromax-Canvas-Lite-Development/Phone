.class Lcom/android/phone/UnlockPUK2Lock$4;
.super Landroid/os/Handler;
.source "UnlockPUK2Lock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockPUK2Lock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockPUK2Lock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPUK2Lock;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0x1f9

    const/4 v6, 0x0

    .line 733
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 734
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 822
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 823
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUK2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 824
    return-void

    .line 738
    :pswitch_1
    const-string v3, "UnlockPUK2Lock "

    const-string v4, "[mHandler][MSG2] +"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 740
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    # invokes: Lcom/android/phone/UnlockPUK2Lock;->getRetryPuk2Count(I)I
    invoke-static {v4, v6}, Lcom/android/phone/UnlockPUK2Lock;->access$100(Lcom/android/phone/UnlockPUK2Lock;I)I

    move-result v4

    iput v4, v3, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    .line 741
    const-string v3, "UnlockPUK2Lock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[mHandler][MSG2][Single Card][PUK_REQUIRED][New Retry Count] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v5, v5, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v3, v3, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    if-lez v3, :cond_0

    .line 743
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    const-class v4, Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 744
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 745
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "PUKPHASE"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v3, "PUKLEFTRETRIES"

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 747
    const-string v3, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 748
    const-string v3, "WRONGCODE"

    const-string v4, "Wrong code."

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 750
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3, v2}, Lcom/android/phone/UnlockPUK2Lock;->startActivity(Landroid/content/Intent;)V

    .line 751
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto :goto_0

    .line 754
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3, v7, v6}, Lcom/android/phone/UnlockPUK2Lock;->sendVerifyResult(IZ)V

    .line 755
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto/16 :goto_0

    .line 759
    :cond_1
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto/16 :goto_0

    .line 766
    :pswitch_2
    const-string v3, "UnlockPUK2Lock "

    const-string v4, "[mHandler][MSG3] +"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 768
    const-string v3, "UnlockPUK2Lock "

    const-string v4, "[mHandler][MSG3][Gemini Card][SIM1][UnlockPinFail]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    # invokes: Lcom/android/phone/UnlockPUK2Lock;->getRetryPuk2Count(I)I
    invoke-static {v4, v6}, Lcom/android/phone/UnlockPUK2Lock;->access$100(Lcom/android/phone/UnlockPUK2Lock;I)I

    move-result v4

    iput v4, v3, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    .line 770
    const-string v3, "UnlockPUK2Lock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[mHandler][MSG3][Gemini Card][SIM1][New Retry Count] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v5, v5, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v3, v3, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    if-lez v3, :cond_2

    .line 772
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    const-class v4, Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 773
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 774
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v3, "PUKPHASE"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v3, "PUKLEFTRETRIES"

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 776
    const-string v3, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 777
    const-string v3, "WRONGCODE"

    const-string v4, "Wrong code."

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 779
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3, v2}, Lcom/android/phone/UnlockPUK2Lock;->startActivity(Landroid/content/Intent;)V

    .line 780
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto/16 :goto_0

    .line 783
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3, v7, v6}, Lcom/android/phone/UnlockPUK2Lock;->sendVerifyResult(IZ)V

    .line 784
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto/16 :goto_0

    .line 788
    :cond_3
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto/16 :goto_0

    .line 795
    :pswitch_3
    const-string v3, "UnlockPUK2Lock "

    const-string v4, "[mHandler][MSG4] +"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    .line 798
    const-string v3, "UnlockPUK2Lock "

    const-string v4, "[mHandler][MSG3][Gemini Card][SIM2][PUK_REQUIRED][UnlockPinFail]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    const/4 v5, 0x1

    # invokes: Lcom/android/phone/UnlockPUK2Lock;->getRetryPuk2Count(I)I
    invoke-static {v4, v5}, Lcom/android/phone/UnlockPUK2Lock;->access$100(Lcom/android/phone/UnlockPUK2Lock;I)I

    move-result v4

    iput v4, v3, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    .line 800
    const-string v3, "UnlockPUK2Lock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[mHandler][MSG3][Gemini Card][SIM2][New Retry Count] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v5, v5, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v3, v3, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    if-lez v3, :cond_4

    .line 802
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    const-class v4, Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 803
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 804
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v3, "PUKPHASE"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string v3, "PUKLEFTRETRIES"

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 806
    const-string v3, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 807
    const-string v3, "WRONGCODE"

    const-string v4, "Wrong code."

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 809
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3, v2}, Lcom/android/phone/UnlockPUK2Lock;->startActivity(Landroid/content/Intent;)V

    .line 810
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto/16 :goto_0

    .line 813
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3, v7, v6}, Lcom/android/phone/UnlockPUK2Lock;->sendVerifyResult(IZ)V

    .line 814
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto/16 :goto_0

    .line 817
    :cond_5
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto/16 :goto_0

    .line 734
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
