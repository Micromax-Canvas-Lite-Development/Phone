.class public Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsCancelListener;
.super Ljava/lang/Object;
.source "BannerRespondViaSmsManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BannerRespondViaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RespondViaSmsCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BannerRespondViaSmsManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/BannerRespondViaSmsManager;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsCancelListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 298
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 306
    # getter for: Lcom/android/phone/BannerRespondViaSmsManager;->DBG:Z
    invoke-static {}, Lcom/android/phone/BannerRespondViaSmsManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RespondViaSmsCancelListener.onCancel()..."

    # invokes: Lcom/android/phone/BannerRespondViaSmsManager;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BannerRespondViaSmsManager;->access$100(Ljava/lang/String;)V

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsCancelListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    invoke-virtual {v1}, Lcom/android/phone/BannerRespondViaSmsManager;->dismissPopup()V

    .line 310
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 311
    .local v0, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    .line 314
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->dismissCallScreen()V

    .line 337
    :goto_0
    return-void

    .line 325
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->restartRinger()V

    .line 335
    iget-object v1, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsCancelListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    # getter for: Lcom/android/phone/BannerRespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v1}, Lcom/android/phone/BannerRespondViaSmsManager;->access$400(Lcom/android/phone/BannerRespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_0
.end method
