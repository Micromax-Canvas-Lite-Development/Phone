.class Lcom/android/phone/SetupUnlockPINLock$1;
.super Landroid/content/BroadcastReceiver;
.source "SetupUnlockPINLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SetupUnlockPINLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SetupUnlockPINLock;


# direct methods
.method constructor <init>(Lcom/android/phone/SetupUnlockPINLock;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/phone/SetupUnlockPINLock$1;->this$0:Lcom/android/phone/SetupUnlockPINLock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 386
    const-string v1, "SetupUnlockPINLock "

    const-string v2, "[BroadcastReceiver][onReceiver]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    const-string v1, "SetupUnlockPINLock "

    const-string v2, "[BroadcastReceiver][onReceiver][ACTION_AIRPLANE_MODE_CHANGED]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v1, p0, Lcom/android/phone/SetupUnlockPINLock$1;->this$0:Lcom/android/phone/SetupUnlockPINLock;

    invoke-virtual {v1}, Lcom/android/phone/SetupUnlockPINLock;->finish()V

    .line 392
    :cond_0
    const-string v1, "SetupUnlockPINLock "

    const-string v2, "[BroadcastReceiver][onReceiver]-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-void
.end method
