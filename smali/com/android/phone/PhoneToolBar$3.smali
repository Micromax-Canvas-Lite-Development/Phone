.class Lcom/android/phone/PhoneToolBar$3;
.super Landroid/os/Handler;
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
    .line 298
    iput-object p1, p0, Lcom/android/phone/PhoneToolBar$3;->this$0:Lcom/android/phone/PhoneToolBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 301
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 309
    :goto_0
    return-void

    .line 303
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar$3;->this$0:Lcom/android/phone/PhoneToolBar;

    invoke-virtual {v0}, Lcom/android/phone/PhoneToolBar;->refreshScreen()V

    .line 304
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar$3;->this$0:Lcom/android/phone/PhoneToolBar;

    iget-object v0, v0, Lcom/android/phone/PhoneToolBar;->mInCallTouchUi:Lcom/android/phone/BannerInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/BannerInCallTouchUi;->refreshAudioModePopup()V

    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
