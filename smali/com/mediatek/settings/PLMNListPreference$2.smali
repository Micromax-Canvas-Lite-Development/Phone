.class Lcom/mediatek/settings/PLMNListPreference$2;
.super Landroid/content/BroadcastReceiver;
.source "PLMNListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/PLMNListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/PLMNListPreference;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/PLMNListPreference;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mediatek/settings/PLMNListPreference$2;->this$0:Lcom/mediatek/settings/PLMNListPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference$2;->this$0:Lcom/mediatek/settings/PLMNListPreference;

    const-string v3, "state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    # setter for: Lcom/mediatek/settings/PLMNListPreference;->mAirplaneModeEnabled:Z
    invoke-static {v2, v3}, Lcom/mediatek/settings/PLMNListPreference;->access$202(Lcom/mediatek/settings/PLMNListPreference;Z)Z

    .line 91
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference$2;->this$0:Lcom/mediatek/settings/PLMNListPreference;

    # invokes: Lcom/mediatek/settings/PLMNListPreference;->setScreenEnabled()V
    invoke-static {v2}, Lcom/mediatek/settings/PLMNListPreference;->access$100(Lcom/mediatek/settings/PLMNListPreference;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v2, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference$2;->this$0:Lcom/mediatek/settings/PLMNListPreference;

    const-string v3, "mode"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/mediatek/settings/PLMNListPreference;->mDualSimMode:I
    invoke-static {v2, v3}, Lcom/mediatek/settings/PLMNListPreference;->access$302(Lcom/mediatek/settings/PLMNListPreference;I)I

    .line 94
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference$2;->this$0:Lcom/mediatek/settings/PLMNListPreference;

    # invokes: Lcom/mediatek/settings/PLMNListPreference;->setScreenEnabled()V
    invoke-static {v2}, Lcom/mediatek/settings/PLMNListPreference;->access$100(Lcom/mediatek/settings/PLMNListPreference;)V

    goto :goto_0

    .line 95
    :cond_2
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    const-string v2, "Settings/PLMNListPreference"

    const-string v3, "ACTION_SIM_INFO_UPDATE received"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference$2;->this$0:Lcom/mediatek/settings/PLMNListPreference;

    invoke-static {v2}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "temp":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget v2, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iget-object v3, p0, Lcom/mediatek/settings/PLMNListPreference$2;->this$0:Lcom/mediatek/settings/PLMNListPreference;

    # getter for: Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I
    invoke-static {v3}, Lcom/mediatek/settings/PLMNListPreference;->access$400(Lcom/mediatek/settings/PLMNListPreference;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 100
    :cond_3
    const-string v2, "Settings/PLMNListPreference"

    const-string v3, "Activity finished"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference$2;->this$0:Lcom/mediatek/settings/PLMNListPreference;

    invoke-static {v2}, Lcom/mediatek/settings/CallSettings;->goToMobileNetworkSettings(Landroid/app/Activity;)V

    goto :goto_0
.end method
