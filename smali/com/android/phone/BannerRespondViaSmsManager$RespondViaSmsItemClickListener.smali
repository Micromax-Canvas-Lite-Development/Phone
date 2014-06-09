.class public Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsItemClickListener;
.super Ljava/lang/Object;
.source "BannerRespondViaSmsManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BannerRespondViaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RespondViaSmsItemClickListener"
.end annotation


# instance fields
.field private mPhoneNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/BannerRespondViaSmsManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/BannerRespondViaSmsManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsItemClickListener;->mPhoneNumber:Ljava/lang/String;

    .line 225
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    .line 235
    # getter for: Lcom/android/phone/BannerRespondViaSmsManager;->DBG:Z
    invoke-static {}, Lcom/android/phone/BannerRespondViaSmsManager;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RespondViaSmsItemClickListener.onItemClick("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/BannerRespondViaSmsManager;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/BannerRespondViaSmsManager;->access$100(Ljava/lang/String;)V

    .line 236
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 237
    .local v2, "message":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- message: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/BannerRespondViaSmsManager;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/BannerRespondViaSmsManager;->access$100(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p3, v5, :cond_1

    .line 243
    iget-object v5, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    iget-object v6, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsItemClickListener;->mPhoneNumber:Ljava/lang/String;

    # invokes: Lcom/android/phone/BannerRespondViaSmsManager;->launchSmsCompose(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/BannerRespondViaSmsManager;->access$200(Lcom/android/phone/BannerRespondViaSmsManager;Ljava/lang/String;)V

    .line 273
    :goto_0
    iget-object v5, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    invoke-virtual {v5}, Lcom/android/phone/BannerRespondViaSmsManager;->dismissPopup()V

    .line 279
    iget-object v5, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    # getter for: Lcom/android/phone/BannerRespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/BannerRespondViaSmsManager;->access$400(Lcom/android/phone/BannerRespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->hangupRingingCall()V

    .line 281
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    .line 282
    .local v4, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_2

    .line 284
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->dismissCallScreen()V

    .line 290
    :goto_1
    return-void

    .line 246
    .end local v4    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_1
    iget-object v5, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    iget-object v6, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsItemClickListener;->mPhoneNumber:Ljava/lang/String;

    # invokes: Lcom/android/phone/BannerRespondViaSmsManager;->sendText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v2}, Lcom/android/phone/BannerRespondViaSmsManager;->access$300(Lcom/android/phone/BannerRespondViaSmsManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v5, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    # getter for: Lcom/android/phone/BannerRespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/BannerRespondViaSmsManager;->access$400(Lcom/android/phone/BannerRespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 252
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f0803ad

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "formatString":Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsItemClickListener;->mPhoneNumber:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "confirmationMsg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    # getter for: Lcom/android/phone/BannerRespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/BannerRespondViaSmsManager;->access$400(Lcom/android/phone/BannerRespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 288
    .end local v0    # "confirmationMsg":Ljava/lang/String;
    .end local v1    # "formatString":Ljava/lang/String;
    .end local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_2
    iget-object v5, p0, Lcom/android/phone/BannerRespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/BannerRespondViaSmsManager;

    # getter for: Lcom/android/phone/BannerRespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/BannerRespondViaSmsManager;->access$400(Lcom/android/phone/BannerRespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_1
.end method
