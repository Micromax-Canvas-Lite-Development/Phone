.class Lcom/android/phone/GsmUmtsCallForwardOptions$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmUmtsCallForwardOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GsmUmtsCallForwardOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsCallForwardOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsCallForwardOptions;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallForwardOptions;

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

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    const-string v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallForwardOptions;

    invoke-virtual {v2}, Lcom/android/phone/GsmUmtsCallForwardOptions;->finish()V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v2, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    const-string v2, "mode"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallForwardOptions;

    invoke-virtual {v2}, Lcom/android/phone/GsmUmtsCallForwardOptions;->finish()V

    goto :goto_0

    .line 108
    :cond_2
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-static {p1}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 112
    .local v1, "temp":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 113
    const-string v2, "Settings/GsmUmtsCallForwardOptions"

    const-string v3, "Activity finished"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallForwardOptions;

    invoke-static {v2}, Lcom/mediatek/settings/CallSettings;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    goto :goto_0

    .line 116
    :cond_3
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 117
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget v2, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallForwardOptions;

    # getter for: Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I
    invoke-static {v3}, Lcom/android/phone/GsmUmtsCallForwardOptions;->access$000(Lcom/android/phone/GsmUmtsCallForwardOptions;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 118
    const-string v2, "Settings/GsmUmtsCallForwardOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Activity finished"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallForwardOptions;

    invoke-virtual {v2}, Lcom/android/phone/GsmUmtsCallForwardOptions;->finish()V

    goto :goto_0
.end method
