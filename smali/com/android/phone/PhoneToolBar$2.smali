.class Lcom/android/phone/PhoneToolBar$2;
.super Landroid/content/BroadcastReceiver;
.source "PhoneToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneToolBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneToolBar;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneToolBar;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/phone/PhoneToolBar$2;->this$0:Lcom/android/phone/PhoneToolBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 280
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/android/phone/PhoneToolBar$2;->this$0:Lcom/android/phone/PhoneToolBar;

    const-string v3, "receiver ACTION_HEADSET_PLUG"

    # invokes: Lcom/android/phone/PhoneToolBar;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneToolBar;->access$000(Lcom/android/phone/PhoneToolBar;Ljava/lang/String;)V

    .line 290
    iget-object v2, p0, Lcom/android/phone/PhoneToolBar$2;->this$0:Lcom/android/phone/PhoneToolBar;

    # getter for: Lcom/android/phone/PhoneToolBar;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/PhoneToolBar;->access$100(Lcom/android/phone/PhoneToolBar;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x65

    const-string v4, "state"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 293
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PhoneToolBar$2;->this$0:Lcom/android/phone/PhoneToolBar;

    # getter for: Lcom/android/phone/PhoneToolBar;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/PhoneToolBar;->access$100(Lcom/android/phone/PhoneToolBar;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method
