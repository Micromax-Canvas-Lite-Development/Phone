.class Lcom/android/phone/EnableIccPinScreen$1;
.super Landroid/os/Handler;
.source "EnableIccPinScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EnableIccPinScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EnableIccPinScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EnableIccPinScreen;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/phone/EnableIccPinScreen$1;->this$0:Lcom/android/phone/EnableIccPinScreen;

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
    iget-object v1, p0, Lcom/android/phone/EnableIccPinScreen$1;->this$0:Lcom/android/phone/EnableIccPinScreen;

    # invokes: Lcom/android/phone/EnableIccPinScreen;->handleResult(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/EnableIccPinScreen;->access$000(Lcom/android/phone/EnableIccPinScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
