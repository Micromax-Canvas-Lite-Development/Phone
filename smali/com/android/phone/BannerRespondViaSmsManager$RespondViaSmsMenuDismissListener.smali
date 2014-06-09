.class public Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsMenuDismissListener;
.super Ljava/lang/Object;
.source "BannerRespondViaSmsManager.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BannerRespondViaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RespondViaSmsMenuDismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BannerRespondViaSmsManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/BannerRespondViaSmsManager;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsMenuDismissListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public RespondViaSmsMenuDismissListener()V
    .locals 0

    .prologue
    .line 717
    return-void
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 720
    iget-object v1, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsMenuDismissListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    invoke-virtual {v1}, Lcom/android/phone/BannerRespondViaSmsManager;->dismissPopup()V

    .line 721
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 722
    .local v0, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 727
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->dismissInCallToolBar()V

    .line 751
    :goto_0
    return-void

    .line 739
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->restartRinger()V

    .line 749
    iget-object v1, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsMenuDismissListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    # getter for: Lcom/android/phone/BannerRespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v1}, Lcom/android/phone/BannerRespondViaSmsManager;->access$400(Lcom/android/phone/BannerRespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_0
.end method
