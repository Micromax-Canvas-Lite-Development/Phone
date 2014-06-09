.class Lcom/android/phone/UnlockSIMLock$5;
.super Landroid/content/BroadcastReceiver;
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
    .line 867
    iput-object p1, p0, Lcom/android/phone/UnlockSIMLock$5;->this$0:Lcom/android/phone/UnlockSIMLock;

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

    .line 869
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 871
    const-string v5, "UnlockSIMLock "

    const-string v7, "receive Intent.ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$5;->this$0:Lcom/android/phone/UnlockSIMLock;

    const/16 v7, 0x1f7

    invoke-virtual {v5, v7, v6}, Lcom/android/phone/UnlockSIMLock;->sendVerifyResult(IZ)V

    .line 873
    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$5;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockSIMLock;->finish()V

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 874
    :cond_1
    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 875
    const-string v5, "UnlockSIMLock "

    const-string v8, "Receive SPN_STRINGS_UPDATED_ACTION "

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const-string v5, "showPlmn"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 877
    const-string v5, "plmn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 878
    .local v3, "plmn":Ljava/lang/String;
    const-string v5, "simId"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 879
    .local v4, "simId":I
    add-int/lit8 v1, v4, 0x0

    .line 880
    .local v1, "index":I
    const-string v5, "UnlockSIMLock "

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

    .line 881
    const-string v5, "UnlockSIMLock "

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

    .line 882
    const/4 v5, 0x2

    if-ge v1, v5, :cond_3

    .line 883
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x10402e6

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 884
    .local v2, "noServiceStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$5;->this$0:Lcom/android/phone/UnlockSIMLock;

    # getter for: Lcom/android/phone/UnlockSIMLock;->mIsNoService:[Z
    invoke-static {v5}, Lcom/android/phone/UnlockSIMLock;->access$400(Lcom/android/phone/UnlockSIMLock;)[Z

    move-result-object v8

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    move v5, v7

    :goto_1
    aput-boolean v5, v8, v1

    .line 886
    .end local v2    # "noServiceStr":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$5;->this$0:Lcom/android/phone/UnlockSIMLock;

    # getter for: Lcom/android/phone/UnlockSIMLock;->mIsNoService:[Z
    invoke-static {v5}, Lcom/android/phone/UnlockSIMLock;->access$400(Lcom/android/phone/UnlockSIMLock;)[Z

    move-result-object v5

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$5;->this$0:Lcom/android/phone/UnlockSIMLock;

    # getter for: Lcom/android/phone/UnlockSIMLock;->mIsNoService:[Z
    invoke-static {v5}, Lcom/android/phone/UnlockSIMLock;->access$400(Lcom/android/phone/UnlockSIMLock;)[Z

    move-result-object v5

    aget-boolean v5, v5, v7

    if-eqz v5, :cond_5

    .line 887
    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$5;->this$0:Lcom/android/phone/UnlockSIMLock;

    # getter for: Lcom/android/phone/UnlockSIMLock;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/UnlockSIMLock;->access$100(Lcom/android/phone/UnlockSIMLock;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UnlockSIMLock$5;->this$0:Lcom/android/phone/UnlockSIMLock;

    # getter for: Lcom/android/phone/UnlockSIMLock;->mHideECCBtnRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/phone/UnlockSIMLock;->access$500(Lcom/android/phone/UnlockSIMLock;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 888
    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$5;->this$0:Lcom/android/phone/UnlockSIMLock;

    # getter for: Lcom/android/phone/UnlockSIMLock;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/UnlockSIMLock;->access$100(Lcom/android/phone/UnlockSIMLock;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UnlockSIMLock$5;->this$0:Lcom/android/phone/UnlockSIMLock;

    # getter for: Lcom/android/phone/UnlockSIMLock;->mHideECCBtnRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/phone/UnlockSIMLock;->access$500(Lcom/android/phone/UnlockSIMLock;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 889
    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$5;->this$0:Lcom/android/phone/UnlockSIMLock;

    # setter for: Lcom/android/phone/UnlockSIMLock;->mECCBtnRunnableStarted:Z
    invoke-static {v5, v7}, Lcom/android/phone/UnlockSIMLock;->access$602(Lcom/android/phone/UnlockSIMLock;Z)Z

    goto/16 :goto_0

    .restart local v2    # "noServiceStr":Ljava/lang/String;
    :cond_4
    move v5, v6

    .line 884
    goto :goto_1

    .line 893
    .end local v2    # "noServiceStr":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$5;->this$0:Lcom/android/phone/UnlockSIMLock;

    # getter for: Lcom/android/phone/UnlockSIMLock;->mECCBtnRunnableStarted:Z
    invoke-static {v5}, Lcom/android/phone/UnlockSIMLock;->access$600(Lcom/android/phone/UnlockSIMLock;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 894
    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$5;->this$0:Lcom/android/phone/UnlockSIMLock;

    # getter for: Lcom/android/phone/UnlockSIMLock;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/UnlockSIMLock;->access$100(Lcom/android/phone/UnlockSIMLock;)Landroid/os/Handler;

    move-result-object v5

    iget-object v7, p0, Lcom/android/phone/UnlockSIMLock$5;->this$0:Lcom/android/phone/UnlockSIMLock;

    # getter for: Lcom/android/phone/UnlockSIMLock;->mHideECCBtnRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/phone/UnlockSIMLock;->access$500(Lcom/android/phone/UnlockSIMLock;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 895
    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$5;->this$0:Lcom/android/phone/UnlockSIMLock;

    # setter for: Lcom/android/phone/UnlockSIMLock;->mECCBtnRunnableStarted:Z
    invoke-static {v5, v6}, Lcom/android/phone/UnlockSIMLock;->access$602(Lcom/android/phone/UnlockSIMLock;Z)Z

    .line 897
    :cond_6
    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$5;->this$0:Lcom/android/phone/UnlockSIMLock;

    # getter for: Lcom/android/phone/UnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/phone/UnlockSIMLock;->access$700(Lcom/android/phone/UnlockSIMLock;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method
