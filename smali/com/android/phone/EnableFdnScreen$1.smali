.class Lcom/android/phone/EnableFdnScreen$1;
.super Landroid/os/Handler;
.source "EnableFdnScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EnableFdnScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EnableFdnScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EnableFdnScreen;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/phone/EnableFdnScreen$1;->this$0:Lcom/android/phone/EnableFdnScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 90
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 97
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 93
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/phone/EnableFdnScreen$1;->this$0:Lcom/android/phone/EnableFdnScreen;

    # invokes: Lcom/android/phone/EnableFdnScreen;->handleResult(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/EnableFdnScreen;->access$000(Lcom/android/phone/EnableFdnScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
