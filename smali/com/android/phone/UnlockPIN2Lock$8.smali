.class Lcom/android/phone/UnlockPIN2Lock$8;
.super Landroid/content/BroadcastReceiver;
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
    .line 923
    iput-object p1, p0, Lcom/android/phone/UnlockPIN2Lock$8;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 925
    const-string v5, "UnlockPIN2Lock "

    const-string v8, "[BroadcastReceiver][onReceiver]+"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 927
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 928
    const-string v5, "UnlockPIN2Lock "

    const-string v6, "[BroadcastReceiver][onReceiver][ACTION_AIRPLANE_MODE_CHANGED]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$8;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPIN2Lock;->finish()V

    .line 958
    :cond_0
    :goto_0
    const-string v5, "UnlockPIN2Lock "

    const-string v6, "[BroadcastReceiver][onReceiver]-"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    return-void

    .line 931
    :cond_1
    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 932
    const-string v5, "UnlockPIN2Lock "

    const-string v8, "Receive SPN_STRINGS_UPDATED_ACTION "

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const-string v5, "showPlmn"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 934
    const-string v5, "plmn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 935
    .local v3, "plmn":Ljava/lang/String;
    const-string v5, "simId"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 936
    .local v4, "simId":I
    add-int/lit8 v1, v4, 0x0

    .line 937
    .local v1, "index":I
    const-string v5, "UnlockPIN2Lock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SPN_STRINGS_UPDATED_ACTION]index = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const-string v5, "UnlockPIN2Lock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SPN_STRINGS_UPDATED_ACTION]plmn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const/4 v5, 0x2

    if-ge v1, v5, :cond_3

    .line 940
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x10402e6

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 941
    .local v2, "noServiceStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$8;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    # getter for: Lcom/android/phone/UnlockPIN2Lock;->mIsNoService:[Z
    invoke-static {v5}, Lcom/android/phone/UnlockPIN2Lock;->access$300(Lcom/android/phone/UnlockPIN2Lock;)[Z

    move-result-object v8

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    move v5, v7

    :goto_1
    aput-boolean v5, v8, v1

    .line 943
    .end local v2    # "noServiceStr":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$8;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    # getter for: Lcom/android/phone/UnlockPIN2Lock;->mIsNoService:[Z
    invoke-static {v5}, Lcom/android/phone/UnlockPIN2Lock;->access$300(Lcom/android/phone/UnlockPIN2Lock;)[Z

    move-result-object v5

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$8;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    # getter for: Lcom/android/phone/UnlockPIN2Lock;->mIsNoService:[Z
    invoke-static {v5}, Lcom/android/phone/UnlockPIN2Lock;->access$300(Lcom/android/phone/UnlockPIN2Lock;)[Z

    move-result-object v5

    aget-boolean v5, v5, v7

    if-eqz v5, :cond_5

    .line 944
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$8;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPIN2Lock;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/phone/UnlockPIN2Lock$8;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    # getter for: Lcom/android/phone/UnlockPIN2Lock;->mHideECCBtnRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/phone/UnlockPIN2Lock;->access$400(Lcom/android/phone/UnlockPIN2Lock;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 945
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$8;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPIN2Lock;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/phone/UnlockPIN2Lock$8;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    # getter for: Lcom/android/phone/UnlockPIN2Lock;->mHideECCBtnRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/phone/UnlockPIN2Lock;->access$400(Lcom/android/phone/UnlockPIN2Lock;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 946
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$8;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    # setter for: Lcom/android/phone/UnlockPIN2Lock;->mECCBtnRunnableStarted:Z
    invoke-static {v5, v7}, Lcom/android/phone/UnlockPIN2Lock;->access$502(Lcom/android/phone/UnlockPIN2Lock;Z)Z

    goto/16 :goto_0

    .restart local v2    # "noServiceStr":Ljava/lang/String;
    :cond_4
    move v5, v6

    .line 941
    goto :goto_1

    .line 950
    .end local v2    # "noServiceStr":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$8;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    # getter for: Lcom/android/phone/UnlockPIN2Lock;->mECCBtnRunnableStarted:Z
    invoke-static {v5}, Lcom/android/phone/UnlockPIN2Lock;->access$500(Lcom/android/phone/UnlockPIN2Lock;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 951
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$8;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPIN2Lock;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/phone/UnlockPIN2Lock$8;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    # getter for: Lcom/android/phone/UnlockPIN2Lock;->mHideECCBtnRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/phone/UnlockPIN2Lock;->access$400(Lcom/android/phone/UnlockPIN2Lock;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 952
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$8;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    # setter for: Lcom/android/phone/UnlockPIN2Lock;->mECCBtnRunnableStarted:Z
    invoke-static {v5, v6}, Lcom/android/phone/UnlockPIN2Lock;->access$502(Lcom/android/phone/UnlockPIN2Lock;Z)Z

    .line 954
    :cond_6
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$8;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    # getter for: Lcom/android/phone/UnlockPIN2Lock;->mbtnEmergencyCall:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/phone/UnlockPIN2Lock;->access$600(Lcom/android/phone/UnlockPIN2Lock;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method
