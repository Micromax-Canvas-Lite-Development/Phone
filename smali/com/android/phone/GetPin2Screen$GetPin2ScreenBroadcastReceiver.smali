.class Lcom/android/phone/GetPin2Screen$GetPin2ScreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GetPin2Screen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GetPin2Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPin2ScreenBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GetPin2Screen;


# direct methods
.method private constructor <init>(Lcom/android/phone/GetPin2Screen;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/phone/GetPin2Screen$GetPin2ScreenBroadcastReceiver;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/GetPin2Screen;Lcom/android/phone/GetPin2Screen$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/GetPin2Screen;
    .param p2, "x1"    # Lcom/android/phone/GetPin2Screen$1;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/android/phone/GetPin2Screen$GetPin2ScreenBroadcastReceiver;-><init>(Lcom/android/phone/GetPin2Screen;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 232
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$GetPin2ScreenBroadcastReceiver;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-virtual {v1}, Lcom/android/phone/GetPin2Screen;->finish()V

    .line 236
    :cond_0
    return-void
.end method
