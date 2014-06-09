.class Lcom/android/phone/UnlockSIMLock$4;
.super Landroid/os/Handler;
.source "UnlockSIMLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockSIMLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockSIMLock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockSIMLock;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x6e

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 361
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 362
    .local v9, "ar":Landroid/os/AsyncResult;
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 458
    :goto_0
    return-void

    .line 365
    :sswitch_0
    const-string v0, "UnlockSIMLock "

    const-string v1, "[mHandler][UNLOCK_ICC_SML_COMPLETE]+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 375
    const-string v0, "UnlockSIMLock "

    const-string v1, "[mHandler][UNLOCK_ICC_SML_COMPLETE][GEMINI Card]+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 378
    .local v12, "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v0, v0, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getNetworkPersoType()I

    move-result v0

    # setter for: Lcom/android/phone/UnlockSIMLock;->lockCategory:I
    invoke-static {v0}, Lcom/android/phone/UnlockSIMLock;->access$002(I)I

    .line 379
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v0, v0, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    # getter for: Lcom/android/phone/UnlockSIMLock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/UnlockSIMLock;->access$100(Lcom/android/phone/UnlockSIMLock;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 381
    .local v7, "callback_query":Landroid/os/Message;
    invoke-virtual {v12, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    # getter for: Lcom/android/phone/UnlockSIMLock;->lockCategory:I
    invoke-static {}, Lcom/android/phone/UnlockSIMLock;->access$000()I

    move-result v1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 387
    .end local v7    # "callback_query":Landroid/os/Message;
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    # getter for: Lcom/android/phone/UnlockSIMLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/UnlockSIMLock;->access$200(Lcom/android/phone/UnlockSIMLock;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    const v2, 0x7f080082

    invoke-virtual {v1, v2}, Lcom/android/phone/UnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v0, v0, Lcom/android/phone/UnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v0, v0, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    if-ne v0, v4, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    # getter for: Lcom/android/phone/UnlockSIMLock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/UnlockSIMLock;->access$100(Lcom/android/phone/UnlockSIMLock;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 384
    .restart local v7    # "callback_query":Landroid/os/Message;
    invoke-virtual {v12, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    # getter for: Lcom/android/phone/UnlockSIMLock;->lockCategory:I
    invoke-static {}, Lcom/android/phone/UnlockSIMLock;->access$000()I

    move-result v1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 390
    .end local v7    # "callback_query":Landroid/os/Message;
    .end local v12    # "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_2
    const-string v0, "UnlockSIMLock "

    const-string v1, "[mHandler][GEMINI]+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v0, "UnlockSIMLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mHandler][iSIMMEUnlockNo] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v2, v2, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v0, "UnlockSIMLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mHandler][lockCategory] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/phone/UnlockSIMLock;->lockCategory:I
    invoke-static {}, Lcom/android/phone/UnlockSIMLock;->access$000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v1, v1, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v2, v2, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v3, v3, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    # getter for: Lcom/android/phone/UnlockSIMLock;->lockCategory:I
    invoke-static {}, Lcom/android/phone/UnlockSIMLock;->access$000()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/phone/SetupUnlockSIMLock;->resetISIMMELockStatus([I[III)I

    move-result v1

    iput v1, v0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    .line 394
    const-string v0, "UnlockSIMLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mHandler][UNLOCK_ICC_SML_COMPLETE][iSIMMELockStatus][new] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v2, v2, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v0, v0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    if-eqz v0, :cond_3

    .line 398
    new-instance v11, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    const-class v1, Lcom/android/phone/UnlockSIMLock;

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 399
    .local v11, "intent2":Landroid/content/Intent;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 400
    .local v10, "bundle2":Landroid/os/Bundle;
    const-string v0, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v1, v1, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 401
    const-string v0, "SIMMELOCKSTATUS"

    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v1, v1, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 403
    invoke-virtual {v11, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 404
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-virtual {v0, v11}, Lcom/android/phone/UnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 405
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-virtual {v0}, Lcom/android/phone/UnlockSIMLock;->finish()V

    .line 406
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v0, v0, Lcom/android/phone/UnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 409
    .end local v10    # "bundle2":Landroid/os/Bundle;
    .end local v11    # "intent2":Landroid/content/Intent;
    :cond_3
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v0, v0, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v0, :cond_4

    .line 411
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-virtual {v0}, Lcom/android/phone/UnlockSIMLock;->finish()V

    .line 412
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v0, v0, Lcom/android/phone/UnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 413
    const-string v0, "UnlockSIMLock "

    const-string v1, "[mHandler][UNLOCK_ICC_SML_COMPLETE][SIM1][Finished]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 418
    :cond_4
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-virtual {v0}, Lcom/android/phone/UnlockSIMLock;->finish()V

    .line 419
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v0, v0, Lcom/android/phone/UnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 420
    const-string v0, "UnlockSIMLock "

    const-string v1, "[mHandler][UNLOCK_ICC_SML_COMPLETE][SIM2][Finished]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 432
    :sswitch_1
    const-string v0, "UnlockSIMLock "

    const-string v1, "[mHandler][UNLOCK_ICC_SML_QUERYLEFTTIMES]+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    .line 453
    :goto_2
    const-string v0, "UnlockSIMLock "

    const-string v1, "[mHandler][UNLOCK_ICC_SML_QUERYLEFTTIMES]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 438
    :cond_5
    iget-object v0, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    move-object v8, v0

    check-cast v8, [I

    .line 439
    .local v8, "LockState":[I
    aget v0, v8, v5

    if-lez v0, :cond_6

    .line 441
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    aget v1, v8, v5

    iput v1, v0, Lcom/android/phone/UnlockSIMLock;->mPwdLeftChances:I

    .line 442
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    # getter for: Lcom/android/phone/UnlockSIMLock;->mUnlockRetriesNotify:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/UnlockSIMLock;->access$300(Lcom/android/phone/UnlockSIMLock;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    const v3, 0x7f08007c

    invoke-virtual {v2, v3}, Lcom/android/phone/UnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v2, v2, Lcom/android/phone/UnlockSIMLock;->mPwdLeftChances:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    const-string v0, "UnlockSIMLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mHandler][UNLOCK_ICC_SML_QUERYLEFTTIMES][query Left times]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v2, v2, Lcom/android/phone/UnlockSIMLock;->mPwdLeftChances:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 446
    :cond_6
    const-string v0, "UnlockSIMLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mHandler][UNLOCK_ICC_SML_QUERYLEFTTIMES][no chances to unlock current SIM Slot]: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v3, v3, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    const/16 v1, 0x1f7

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/UnlockSIMLock;->sendVerifyResult(IZ)V

    .line 448
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$4;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-virtual {v0}, Lcom/android/phone/UnlockSIMLock;->finish()V

    goto/16 :goto_0

    .line 362
    :sswitch_data_0
    .sparse-switch
        0x6e -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method
