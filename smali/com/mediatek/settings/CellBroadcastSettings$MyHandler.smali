.class Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;
.super Landroid/os/Handler;
.source "CellBroadcastSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/CellBroadcastSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/CellBroadcastSettings;


# direct methods
.method private constructor <init>(Lcom/mediatek/settings/CellBroadcastSettings;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p2, "x1"    # Lcom/mediatek/settings/CellBroadcastSettings$1;

    .prologue
    .line 576
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;)V

    return-void
.end method

.method private handleGetCellBroadcastConfigResponse(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0x190

    const/16 v6, 0x64

    const/4 v5, 0x0

    .line 592
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v6, :cond_1

    .line 593
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/settings/CellBroadcastSettings;->onFinished(Landroid/preference/Preference;Z)V

    .line 597
    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 598
    .local v0, "ar":Landroid/os/AsyncResult;
    if-nez v0, :cond_2

    .line 599
    const-string v2, "Settings/CellBroadcastSettings"

    const-string v3, "handleGetCellBroadcastConfigResponse,ar is null"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/mediatek/settings/CellBroadcastSettings;->onError(Landroid/preference/Preference;I)V

    .line 601
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v6, :cond_0

    .line 602
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 603
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1800(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 641
    :cond_0
    :goto_1
    return-void

    .line 595
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/mediatek/settings/CellBroadcastSettings;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 607
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 609
    const-string v2, "Settings/CellBroadcastSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCellBroadcastConfigResponse: ar.exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    const/16 v4, 0x12c

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/settings/CellBroadcastSettings;->onError(Landroid/preference/Preference;I)V

    .line 612
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v6, :cond_0

    .line 613
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 614
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1800(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .line 618
    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 619
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/mediatek/settings/CellBroadcastSettings;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 621
    :cond_4
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 622
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 623
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->queryChannelFromDatabase()Z
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1900(Lcom/mediatek/settings/CellBroadcastSettings;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 624
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->initChannelMap()V
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2000(Lcom/mediatek/settings/CellBroadcastSettings;)V

    .line 625
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->updateCurrentChannelAndLanguage(Ljava/util/ArrayList;)V
    invoke-static {v2, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2100(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/util/ArrayList;)V

    .line 626
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->updateChannelUIList()V
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1000(Lcom/mediatek/settings/CellBroadcastSettings;)V

    .line 627
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->updateLanguageSummary()V
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2200(Lcom/mediatek/settings/CellBroadcastSettings;)V

    goto/16 :goto_1

    .line 629
    :cond_5
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1200(Lcom/mediatek/settings/CellBroadcastSettings;)V

    goto/16 :goto_1

    .line 632
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    :cond_6
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/mediatek/settings/CellBroadcastSettings;->onError(Landroid/preference/Preference;I)V

    .line 633
    const-string v2, "Settings/CellBroadcastSettings"

    const-string v3, "handleGetCellBroadcastConfigResponse: ar.result is null"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v6, :cond_0

    .line 635
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 636
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1800(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method private handleSetCellBroadcastConfigResponse(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 644
    iget v1, p1, Landroid/os/Message;->arg2:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    .line 645
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 646
    .local v0, "ar":Landroid/os/AsyncResult;
    if-nez v0, :cond_0

    .line 647
    const-string v1, "Settings/CellBroadcastSettings"

    const-string v2, "handleSetCellBroadcastConfigResponse,ar is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/16 v3, 0x190

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/settings/CellBroadcastSettings;->onError(Landroid/preference/Preference;I)V

    .line 650
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 652
    const-string v1, "Settings/CellBroadcastSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCellBroadcastConfigResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/settings/CellBroadcastSettings;->onError(Landroid/preference/Preference;I)V

    .line 657
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    const/4 v2, 0x0

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->getCellBroadcastConfig(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2300(Lcom/mediatek/settings/CellBroadcastSettings;Z)V

    .line 659
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 579
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 589
    :goto_0
    return-void

    .line 581
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->handleGetCellBroadcastConfigResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 584
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->handleSetCellBroadcastConfigResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 579
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
