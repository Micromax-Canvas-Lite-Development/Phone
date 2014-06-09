.class Lcom/android/phone/BannerInCallTouchUi$1;
.super Landroid/os/Handler;
.source "BannerInCallTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BannerInCallTouchUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BannerInCallTouchUi;


# direct methods
.method constructor <init>(Lcom/android/phone/BannerInCallTouchUi;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/phone/BannerInCallTouchUi$1;->this$0:Lcom/android/phone/BannerInCallTouchUi;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi$1;->this$0:Lcom/android/phone/BannerInCallTouchUi;

    # getter for: Lcom/android/phone/BannerInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/BannerInCallTouchUi;->access$000(Lcom/android/phone/BannerInCallTouchUi;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 155
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 161
    const-string v0, "BannerInCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler: unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi$1;->this$0:Lcom/android/phone/BannerInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/BannerInCallTouchUi;->triggerPing()V

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
