.class Lcom/android/phone/UnlockPINLock$5;
.super Ljava/lang/Thread;
.source "UnlockPINLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UnlockPINLock;->unlockPIN(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockPINLock;

.field final synthetic val$strPwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPINLock;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 867
    iput-object p1, p0, Lcom/android/phone/UnlockPINLock$5;->this$0:Lcom/android/phone/UnlockPINLock;

    iput-object p2, p0, Lcom/android/phone/UnlockPINLock$5;->val$strPwd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 869
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][new Thread][Run]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :try_start_0
    const-string v2, "UnlockPINLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPIN][new Thread][TogetResult][strPwd]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UnlockPINLock$5;->val$strPwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 873
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/UnlockPINLock$5;->val$strPwd:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/android/phone/UnlockPINLock;->result:Z
    invoke-static {v2}, Lcom/android/phone/UnlockPINLock;->access$102(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :cond_0
    :goto_0
    const-string v2, "UnlockPINLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPIN][new Thread][Result] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/phone/UnlockPINLock;->result:Z
    invoke-static {}, Lcom/android/phone/UnlockPINLock;->access$100()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$5;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v2, v2, Lcom/android/phone/UnlockPINLock;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 881
    .local v0, "msg3":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 882
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][new Thread][Run]-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    return-void

    .line 876
    .end local v0    # "msg3":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 877
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
