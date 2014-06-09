.class Lcom/android/phone/UnlockPIN2Lock$4;
.super Landroid/os/Handler;
.source "UnlockPIN2Lock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockPIN2Lock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockPIN2Lock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPIN2Lock;)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 663
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 664
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 782
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 783
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPIN2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 784
    return-void

    .line 667
    :pswitch_1
    const-string v5, "UnlockPIN2Lock "

    const-string v6, "[mHandler][MSG2] +"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 669
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 670
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v6, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    # invokes: Lcom/android/phone/UnlockPIN2Lock;->getRetryPin2Count(I)I
    invoke-static {v6, v8}, Lcom/android/phone/UnlockPIN2Lock;->access$100(Lcom/android/phone/UnlockPIN2Lock;I)I

    move-result v6

    iput v6, v5, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    .line 671
    const-string v5, "UnlockPIN2Lock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[mHandler][MSG2][Single Card][PIN_REQUIRED][New Retry Count] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v7, v7, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v5, v5, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    if-lez v5, :cond_0

    .line 673
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    const-class v6, Lcom/android/phone/UnlockPIN2Lock;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 674
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 675
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "PUKLEFTRETRIES"

    iget-object v6, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v6, v6, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 676
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v6, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 677
    const-string v5, "WRONGCODE"

    const-string v6, "Wrong code."

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 679
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5, v2}, Lcom/android/phone/UnlockPIN2Lock;->startActivity(Landroid/content/Intent;)V

    .line 680
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPIN2Lock;->finish()V

    goto :goto_0

    .line 683
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    const-class v6, Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 684
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 685
    .restart local v1    # "bundle":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    # invokes: Lcom/android/phone/UnlockPIN2Lock;->getRetryPuk2Count(I)I
    invoke-static {v5, v8}, Lcom/android/phone/UnlockPIN2Lock;->access$200(Lcom/android/phone/UnlockPIN2Lock;I)I

    move-result v4

    .line 686
    .local v4, "retryPUKCount":I
    const-string v5, "PUKPHASE"

    const-string v6, "1"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v5, "PUKLEFTRETRIES"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 688
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v6, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 689
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 690
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5, v2}, Lcom/android/phone/UnlockPIN2Lock;->startActivity(Landroid/content/Intent;)V

    .line 691
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPIN2Lock;->finish()V

    goto/16 :goto_0

    .line 696
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "retryPUKCount":I
    :cond_1
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPIN2Lock;->finish()V

    goto/16 :goto_0

    .line 703
    :pswitch_2
    const-string v5, "UnlockPIN2Lock "

    const-string v6, "[mHandler][MSG3] +"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_3

    .line 707
    const-string v5, "UnlockPIN2Lock "

    const-string v6, "[mHandler][MSG3][Gemini Card][SIM1][UnlockPinFail]+"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const-string v5, "UnlockPIN2Lock "

    const-string v6, "[mHandler][MSG3][Gemini Card][SIM1][Still PIN_REQUIRED]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v6, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    # invokes: Lcom/android/phone/UnlockPIN2Lock;->getRetryPin2Count(I)I
    invoke-static {v6, v8}, Lcom/android/phone/UnlockPIN2Lock;->access$100(Lcom/android/phone/UnlockPIN2Lock;I)I

    move-result v6

    iput v6, v5, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    .line 711
    const-string v5, "UnlockPIN2Lock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[mHandler][MSG3][Gemini Card][SIM1][New Retry Count] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v7, v7, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v5, v5, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    if-lez v5, :cond_2

    .line 713
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    const-class v6, Lcom/android/phone/UnlockPIN2Lock;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 714
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 715
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v5, "PUKLEFTRETRIES"

    iget-object v6, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v6, v6, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 716
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v6, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 717
    const-string v5, "WRONGCODE"

    const-string v6, "Wrong code."

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 719
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5, v2}, Lcom/android/phone/UnlockPIN2Lock;->startActivity(Landroid/content/Intent;)V

    .line 720
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPIN2Lock;->finish()V

    goto/16 :goto_0

    .line 723
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    const-class v6, Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 724
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 725
    .restart local v1    # "bundle":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    # invokes: Lcom/android/phone/UnlockPIN2Lock;->getRetryPuk2Count(I)I
    invoke-static {v5, v8}, Lcom/android/phone/UnlockPIN2Lock;->access$200(Lcom/android/phone/UnlockPIN2Lock;I)I

    move-result v4

    .line 726
    .restart local v4    # "retryPUKCount":I
    const-string v5, "PUKPHASE"

    const-string v6, "1"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v5, "PUKLEFTRETRIES"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 728
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v6, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 729
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 730
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5, v2}, Lcom/android/phone/UnlockPIN2Lock;->startActivity(Landroid/content/Intent;)V

    .line 731
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPIN2Lock;->finish()V

    goto/16 :goto_0

    .line 736
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "retryPUKCount":I
    :cond_3
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPIN2Lock;->finish()V

    .line 737
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPIN2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 744
    :pswitch_3
    const-string v5, "UnlockPIN2Lock "

    const-string v6, "[mHandler][MSG4] +"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_5

    .line 746
    const-string v5, "UnlockPIN2Lock "

    const-string v6, "[mHandler][MSG3][Gemini Card][SIM2][PIN_REQUIRED][UnlockPinFail]+"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string v5, "UnlockPIN2Lock "

    const-string v6, "[mHandler][MSG3][Gemini Card][SIM2][PIN_REQUIRED][Still PIN_REQUIRED]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v6, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    # invokes: Lcom/android/phone/UnlockPIN2Lock;->getRetryPin2Count(I)I
    invoke-static {v6, v9}, Lcom/android/phone/UnlockPIN2Lock;->access$100(Lcom/android/phone/UnlockPIN2Lock;I)I

    move-result v6

    iput v6, v5, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    .line 749
    const-string v5, "UnlockPIN2Lock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[mHandler][MSG3][Gemini Card][SIM2][New Retry Count] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v7, v7, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v5, v5, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    if-lez v5, :cond_4

    .line 751
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    const-class v6, Lcom/android/phone/UnlockPIN2Lock;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 752
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 753
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v5, "PUKLEFTRETRIES"

    iget-object v6, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v6, v6, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 754
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v6, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 755
    const-string v5, "WRONGCODE"

    const-string v6, "Wrong code."

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 757
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5, v2}, Lcom/android/phone/UnlockPIN2Lock;->startActivity(Landroid/content/Intent;)V

    .line 758
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPIN2Lock;->finish()V

    .line 759
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPIN2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 762
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    const-class v6, Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 763
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 764
    .restart local v1    # "bundle":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    # invokes: Lcom/android/phone/UnlockPIN2Lock;->getRetryPuk2Count(I)I
    invoke-static {v5, v9}, Lcom/android/phone/UnlockPIN2Lock;->access$200(Lcom/android/phone/UnlockPIN2Lock;I)I

    move-result v4

    .line 765
    .restart local v4    # "retryPUKCount":I
    const-string v5, "PUKPHASE"

    const-string v6, "1"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v5, "PUKLEFTRETRIES"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 767
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v6, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 768
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 769
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5, v2}, Lcom/android/phone/UnlockPIN2Lock;->startActivity(Landroid/content/Intent;)V

    .line 770
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPIN2Lock;->finish()V

    .line 771
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPIN2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 776
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "retryPUKCount":I
    :cond_5
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPIN2Lock;->finish()V

    .line 777
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPIN2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 664
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
