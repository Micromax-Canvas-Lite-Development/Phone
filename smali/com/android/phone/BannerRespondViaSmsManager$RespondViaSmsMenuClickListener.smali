.class public Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsMenuClickListener;
.super Ljava/lang/Object;
.source "BannerRespondViaSmsManager.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BannerRespondViaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RespondViaSmsMenuClickListener"
.end annotation


# instance fields
.field private mPhoneNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/BannerRespondViaSmsManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/BannerRespondViaSmsManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsMenuClickListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 681
    iput-object p2, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsMenuClickListener;->mPhoneNumber:Ljava/lang/String;

    .line 682
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 685
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 710
    :goto_0
    return v6

    .line 690
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsMenuClickListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    iget-object v4, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsMenuClickListener;->mPhoneNumber:Ljava/lang/String;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/BannerRespondViaSmsManager;->sendText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/phone/BannerRespondViaSmsManager;->access$300(Lcom/android/phone/BannerRespondViaSmsManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v3, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsMenuClickListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    # getter for: Lcom/android/phone/BannerRespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v3}, Lcom/android/phone/BannerRespondViaSmsManager;->access$400(Lcom/android/phone/BannerRespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 693
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f0803ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 695
    .local v1, "formatString":Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsMenuClickListener;->mPhoneNumber:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "confirmationMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsMenuClickListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    # getter for: Lcom/android/phone/BannerRespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v3}, Lcom/android/phone/BannerRespondViaSmsManager;->access$400(Lcom/android/phone/BannerRespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 699
    iget-object v3, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsMenuClickListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    # getter for: Lcom/android/phone/BannerRespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v3}, Lcom/android/phone/BannerRespondViaSmsManager;->access$400(Lcom/android/phone/BannerRespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->hangupRingingCall()V

    .line 700
    iget-object v3, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsMenuClickListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    invoke-virtual {v3}, Lcom/android/phone/BannerRespondViaSmsManager;->dismissPopup()V

    goto :goto_0

    .line 703
    .end local v0    # "confirmationMsg":Ljava/lang/String;
    .end local v1    # "formatString":Ljava/lang/String;
    .end local v2    # "res":Landroid/content/res/Resources;
    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsMenuClickListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    iget-object v4, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsMenuClickListener;->mPhoneNumber:Ljava/lang/String;

    # invokes: Lcom/android/phone/BannerRespondViaSmsManager;->launchSmsCompose(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/BannerRespondViaSmsManager;->access$200(Lcom/android/phone/BannerRespondViaSmsManager;Ljava/lang/String;)V

    .line 704
    iget-object v3, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsMenuClickListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    invoke-virtual {v3}, Lcom/android/phone/BannerRespondViaSmsManager;->dismissPopup()V

    .line 705
    iget-object v3, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsMenuClickListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    # getter for: Lcom/android/phone/BannerRespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v3}, Lcom/android/phone/BannerRespondViaSmsManager;->access$400(Lcom/android/phone/BannerRespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->hangupRingingCall()V

    goto :goto_0

    .line 685
    :pswitch_data_0
    .packed-switch 0x7f0b016c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
