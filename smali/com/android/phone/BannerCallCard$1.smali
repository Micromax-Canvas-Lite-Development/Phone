.class Lcom/android/phone/BannerCallCard$1;
.super Landroid/os/Handler;
.source "BannerCallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BannerCallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BannerCallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/BannerCallCard;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/phone/BannerCallCard$1;->this$0:Lcom/android/phone/BannerCallCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 193
    const-string v0, "BannerCallCard"

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

    .line 196
    :goto_0
    return-void

    .line 190
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/BannerCallCard$1;->this$0:Lcom/android/phone/BannerCallCard;

    # getter for: Lcom/android/phone/BannerCallCard;->mPhoto:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/BannerCallCard;->access$000(Lcom/android/phone/BannerCallCard;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200e5

    # invokes: Lcom/android/phone/BannerCallCard;->showImage(Landroid/widget/ImageView;I)V
    invoke-static {v0, v1}, Lcom/android/phone/BannerCallCard;->access$100(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
