.class Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;
.super Landroid/os/Handler;
.source "PowerOnSetupUnlockSIMLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PowerOnSetupUnlockSIMLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;


# direct methods
.method constructor <init>(Lcom/android/phone/PowerOnSetupUnlockSIMLock;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 250
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 251
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    .line 252
    .local v0, "LockState":[I
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 376
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 254
    :pswitch_1
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 258
    const-string v5, "PowerOnSetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[mHandlerSIMLock][SIM1QUERY][SIM1 Status][0][1]+: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM1MELockStatus:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM1MELockStatus:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v8, v5, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM1MELockStatus:[I

    aget v9, v0, v7

    aget v5, v0, v6

    if-ne v5, v6, :cond_2

    move v5, v6

    :goto_1
    aput v5, v8, v9

    .line 260
    const-string v5, "PowerOnSetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[mHandlerSIMLock][SIM1QUERY][SIM1 Status][0][1]-: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM1MELockStatus:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM1MELockStatus:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    aget v5, v0, v11

    if-nez v5, :cond_1

    .line 268
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    # setter for: Lcom/android/phone/PowerOnSetupUnlockSIMLock;->mIsLockedPermanentlySim1:Z
    invoke-static {v5, v6}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->access$002(Lcom/android/phone/PowerOnSetupUnlockSIMLock;Z)Z

    .line 269
    const-string v5, "PowerOnSetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsLockedPermanentlySim1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    # getter for: Lcom/android/phone/PowerOnSetupUnlockSIMLock;->mIsLockedPermanentlySim1:Z
    invoke-static {v9}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->access$000(Lcom/android/phone/PowerOnSetupUnlockSIMLock;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_1
    aget v5, v0, v7

    if-ne v5, v12, :cond_0

    .line 275
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iput v7, v5, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMELockStatus:I

    .line 276
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    const/4 v5, 0x5

    if-ge v3, v5, :cond_3

    .line 277
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v5, v5, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM2MELockStatus:[I

    aput v7, v5, v3

    .line 276
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v3    # "i":I
    :cond_2
    move v5, v7

    .line 259
    goto :goto_1

    .line 279
    .restart local v3    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v8, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v8, v8, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM1MELockStatus:[I

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM2MELockStatus:[I

    iget-object v10, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget v10, v10, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-static {v8, v9, v10, v13}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->resetISIMMELockStatus([I[III)I

    move-result v8

    iput v8, v5, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMELockStatus:I

    .line 280
    const-string v5, "PowerOnSetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[EVENT_SIM1_NETWORK_LOCKED][packageArray][iSIMMELockStatus] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v5, "PowerOnSetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsLockedPermanentlySim1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    # getter for: Lcom/android/phone/PowerOnSetupUnlockSIMLock;->mIsLockedPermanentlySim1:Z
    invoke-static {v9}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->access$000(Lcom/android/phone/PowerOnSetupUnlockSIMLock;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget v5, v5, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMELockStatus:I

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    # getter for: Lcom/android/phone/PowerOnSetupUnlockSIMLock;->mIsLockedPermanentlySim1:Z
    invoke-static {v5}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->access$000(Lcom/android/phone/PowerOnSetupUnlockSIMLock;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 285
    :cond_4
    sget-object v5, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aput v7, v5, v7

    .line 286
    const-string v5, "PowerOnSetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[changed][arySIMLockStatus]: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget-object v5, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aget v5, v5, v6

    if-ne v5, v11, :cond_5

    .line 289
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    const-class v8, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-direct {v4, v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    .local v4, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 291
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 292
    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 293
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-virtual {v5, v4}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 295
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    # invokes: Lcom/android/phone/PowerOnSetupUnlockSIMLock;->setSimLockScreenDone(II)V
    invoke-static {v5, v7, v11}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->access$100(Lcom/android/phone/PowerOnSetupUnlockSIMLock;II)V

    .line 296
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-virtual {v5}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->finish()V

    goto/16 :goto_0

    .line 299
    :cond_6
    sget-object v5, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aput v12, v5, v7

    .line 300
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    const-class v6, Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    .restart local v4    # "intent":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 302
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v5, "SIMMELOCKSTATUS"

    iget-object v6, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v6, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 306
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-virtual {v5, v4}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 307
    const-string v5, "PowerOnSetupUnlockSIMLock "

    const-string v6, "[mHandlerSIMLock][startActivity]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-virtual {v5}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->finish()V

    goto/16 :goto_0

    .line 316
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "i":I
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_2
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 320
    const-string v5, "PowerOnSetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[mHandlerSIMLock][SIM2QUERY][SIM2 Status Ori][0][1]+: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM2MELockStatus:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM2MELockStatus:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v8, v5, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM2MELockStatus:[I

    aget v9, v0, v7

    aget v5, v0, v6

    if-ne v5, v6, :cond_8

    move v5, v6

    :goto_3
    aput v5, v8, v9

    .line 322
    const-string v5, "PowerOnSetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[mHandlerSIMLock][SIM2QUERY][SIM2 Status][0][1]-: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM2MELockStatus:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM2MELockStatus:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    aget v5, v0, v11

    if-nez v5, :cond_7

    .line 330
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    # setter for: Lcom/android/phone/PowerOnSetupUnlockSIMLock;->mIsLockedPermanentlySim2:Z
    invoke-static {v5, v6}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->access$202(Lcom/android/phone/PowerOnSetupUnlockSIMLock;Z)Z

    .line 331
    const-string v5, "PowerOnSetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsLockedPermanentlySim2 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    # getter for: Lcom/android/phone/PowerOnSetupUnlockSIMLock;->mIsLockedPermanentlySim2:Z
    invoke-static {v9}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->access$200(Lcom/android/phone/PowerOnSetupUnlockSIMLock;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_7
    aget v5, v0, v7

    if-ne v5, v12, :cond_0

    .line 337
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iput v7, v5, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMELockStatus:I

    .line 338
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    const/4 v5, 0x5

    if-ge v3, v5, :cond_9

    .line 339
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v5, v5, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM1MELockStatus:[I

    aput v7, v5, v3

    .line 338
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v3    # "i":I
    :cond_8
    move v5, v7

    .line 321
    goto :goto_3

    .line 341
    .restart local v3    # "i":I
    :cond_9
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v8, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v8, v8, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM1MELockStatus:[I

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM2MELockStatus:[I

    iget-object v10, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget v10, v10, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-static {v8, v9, v10, v13}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->resetISIMMELockStatus([I[III)I

    move-result v8

    iput v8, v5, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMELockStatus:I

    .line 342
    const-string v5, "PowerOnSetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[EVENT_SIM2_NETWORK_LOCKED][packageArray][iSIMMELockStatus] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget v5, v5, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMELockStatus:I

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    # getter for: Lcom/android/phone/PowerOnSetupUnlockSIMLock;->mIsLockedPermanentlySim2:Z
    invoke-static {v5}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->access$200(Lcom/android/phone/PowerOnSetupUnlockSIMLock;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 346
    :cond_a
    sget-object v5, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aput v7, v5, v6

    .line 347
    const-string v5, "PowerOnSetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[changed][arySIMLockStatus]: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    sget-object v5, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aget v5, v5, v7

    if-ne v5, v11, :cond_b

    .line 350
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    const-class v8, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-direct {v4, v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    .restart local v4    # "intent":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 352
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 354
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-virtual {v5, v4}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 356
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_b
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    # invokes: Lcom/android/phone/PowerOnSetupUnlockSIMLock;->setSimLockScreenDone(II)V
    invoke-static {v5, v6, v11}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->access$100(Lcom/android/phone/PowerOnSetupUnlockSIMLock;II)V

    .line 357
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-virtual {v5}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->finish()V

    goto/16 :goto_0

    .line 360
    :cond_c
    sget-object v5, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aput v12, v5, v6

    .line 361
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    const-class v6, Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 362
    .restart local v4    # "intent":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 363
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v5, "SIMMELOCKSTATUS"

    iget-object v6, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 364
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v6, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 366
    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 367
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-virtual {v5, v4}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 368
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-virtual {v5}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->finish()V

    goto/16 :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
