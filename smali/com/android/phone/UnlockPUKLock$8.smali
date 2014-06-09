.class Lcom/android/phone/UnlockPUKLock$8;
.super Landroid/content/BroadcastReceiver;
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
    .line 1101
    iput-object p1, p0, Lcom/android/phone/UnlockPUKLock$8;->this$0:Lcom/android/phone/UnlockPUKLock;

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

    .line 1103
    const-string v5, "UnlockPUKLock "

    const-string v8, "[BroadcastReceiver][onReceiver]+"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1105
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1106
    const-string v5, "UnlockPUKLock "

    const-string v6, "[BroadcastReceiver][onReceiver][ACTION_AIRPLANE_MODE_CHANGED]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$8;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPUKLock;->finish()V

    .line 1136
    :cond_0
    :goto_0
    const-string v5, "UnlockPUKLock "

    const-string v6, "[BroadcastReceiver][onReceiver]-"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    return-void

    .line 1109
    :cond_1
    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1110
    const-string v5, "UnlockPUKLock "

    const-string v8, "Receive SPN_STRINGS_UPDATED_ACTION "

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const-string v5, "showPlmn"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1112
    const-string v5, "plmn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1113
    .local v3, "plmn":Ljava/lang/String;
    const-string v5, "simId"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1114
    .local v4, "simId":I
    add-int/lit8 v1, v4, 0x0

    .line 1115
    .local v1, "index":I
    const-string v5, "UnlockPUKLock "

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

    .line 1116
    const-string v5, "UnlockPUKLock "

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

    .line 1117
    const/4 v5, 0x2

    if-ge v1, v5, :cond_3

    .line 1118
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x10402e6

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1119
    .local v2, "noServiceStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$8;->this$0:Lcom/android/phone/UnlockPUKLock;

    # getter for: Lcom/android/phone/UnlockPUKLock;->mIsNoService:[Z
    invoke-static {v5}, Lcom/android/phone/UnlockPUKLock;->access$300(Lcom/android/phone/UnlockPUKLock;)[Z

    move-result-object v8

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    move v5, v7

    :goto_1
    aput-boolean v5, v8, v1

    .line 1121
    .end local v2    # "noServiceStr":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$8;->this$0:Lcom/android/phone/UnlockPUKLock;

    # getter for: Lcom/android/phone/UnlockPUKLock;->mIsNoService:[Z
    invoke-static {v5}, Lcom/android/phone/UnlockPUKLock;->access$300(Lcom/android/phone/UnlockPUKLock;)[Z

    move-result-object v5

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$8;->this$0:Lcom/android/phone/UnlockPUKLock;

    # getter for: Lcom/android/phone/UnlockPUKLock;->mIsNoService:[Z
    invoke-static {v5}, Lcom/android/phone/UnlockPUKLock;->access$300(Lcom/android/phone/UnlockPUKLock;)[Z

    move-result-object v5

    aget-boolean v5, v5, v7

    if-eqz v5, :cond_5

    .line 1122
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$8;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$8;->this$0:Lcom/android/phone/UnlockPUKLock;

    # getter for: Lcom/android/phone/UnlockPUKLock;->mHideECCBtnRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/phone/UnlockPUKLock;->access$400(Lcom/android/phone/UnlockPUKLock;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1123
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$8;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$8;->this$0:Lcom/android/phone/UnlockPUKLock;

    # getter for: Lcom/android/phone/UnlockPUKLock;->mHideECCBtnRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/phone/UnlockPUKLock;->access$400(Lcom/android/phone/UnlockPUKLock;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1124
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$8;->this$0:Lcom/android/phone/UnlockPUKLock;

    # setter for: Lcom/android/phone/UnlockPUKLock;->mECCBtnRunnableStarted:Z
    invoke-static {v5, v7}, Lcom/android/phone/UnlockPUKLock;->access$502(Lcom/android/phone/UnlockPUKLock;Z)Z

    goto/16 :goto_0

    .restart local v2    # "noServiceStr":Ljava/lang/String;
    :cond_4
    move v5, v6

    .line 1119
    goto :goto_1

    .line 1128
    .end local v2    # "noServiceStr":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$8;->this$0:Lcom/android/phone/UnlockPUKLock;

    # getter for: Lcom/android/phone/UnlockPUKLock;->mECCBtnRunnableStarted:Z
    invoke-static {v5}, Lcom/android/phone/UnlockPUKLock;->access$500(Lcom/android/phone/UnlockPUKLock;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1129
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$8;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/phone/UnlockPUKLock$8;->this$0:Lcom/android/phone/UnlockPUKLock;

    # getter for: Lcom/android/phone/UnlockPUKLock;->mHideECCBtnRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/phone/UnlockPUKLock;->access$400(Lcom/android/phone/UnlockPUKLock;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1130
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$8;->this$0:Lcom/android/phone/UnlockPUKLock;

    # setter for: Lcom/android/phone/UnlockPUKLock;->mECCBtnRunnableStarted:Z
    invoke-static {v5, v6}, Lcom/android/phone/UnlockPUKLock;->access$502(Lcom/android/phone/UnlockPUKLock;Z)Z

    .line 1132
    :cond_6
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$8;->this$0:Lcom/android/phone/UnlockPUKLock;

    # getter for: Lcom/android/phone/UnlockPUKLock;->mbtnEmergencyCall:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/phone/UnlockPUKLock;->access$600(Lcom/android/phone/UnlockPUKLock;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method
