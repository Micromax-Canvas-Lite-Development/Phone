.class public abstract Lcom/mediatek/calloption/InternetCallOptionHandler;
.super Lcom/mediatek/calloption/CallOptionBaseHandler;
.source "InternetCallOptionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "InternetCallOptionHandler"


# instance fields
.field private mRequest:Lcom/mediatek/calloption/Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mediatek/calloption/CallOptionBaseHandler;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v0, "InternetCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method


# virtual methods
.method protected abstract doSipCallOptionHandle(Lcom/mediatek/calloption/Request;)V
.end method

.method public handleRequest(Lcom/mediatek/calloption/Request;)V
    .locals 9
    .param p1, "request"    # Lcom/mediatek/calloption/Request;

    .prologue
    const/4 v8, 0x0

    .line 58
    const-string v6, "handleRequest()"

    invoke-static {v6}, Lcom/mediatek/calloption/InternetCallOptionHandler;->log(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 60
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "scheme":Ljava/lang/String;
    const-string v3, ""

    .line 65
    .local v3, "number":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 70
    :goto_0
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "follow_sim_management"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 74
    .local v2, "flag":Z
    const-string v6, "sip"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    if-eqz v2, :cond_3

    .line 76
    :cond_1
    iget-object v6, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v6, :cond_2

    .line 77
    iget-object v6, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v6, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    .line 123
    :cond_2
    :goto_1
    return-void

    .line 66
    .end local v2    # "flag":Z
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/calloption/InternetCallOptionHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "flag":Z
    :cond_3
    const-string v6, "data schema is sip and follow sim management extra is false"

    invoke-static {v6}, Lcom/mediatek/calloption/InternetCallOptionHandler;->log(Ljava/lang/String;)V

    .line 103
    iput-object p1, p0, Lcom/mediatek/calloption/InternetCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    .line 105
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "enable_internet_call_value"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 107
    .local v1, "enabled":I
    const/4 v6, 0x1

    if-ne v6, v1, :cond_5

    .line 109
    const-string v6, "internet call setting is enabled"

    invoke-static {v6}, Lcom/mediatek/calloption/InternetCallOptionHandler;->log(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.android.phone.extra.ip"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 111
    const-string v6, "extra ip dial is true, show toast"

    invoke-static {v6}, Lcom/mediatek/calloption/InternetCallOptionHandler;->log(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/mediatek/calloption/InternetCallOptionHandler;->showIPDialToast(Lcom/mediatek/calloption/Request;)V

    .line 118
    :goto_2
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v6

    invoke-interface {v6}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onHandlingFinish()V

    goto :goto_1

    .line 115
    :cond_4
    const-string v6, "doSipCallOptionHandle()"

    invoke-static {v6}, Lcom/mediatek/calloption/InternetCallOptionHandler;->log(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/mediatek/calloption/InternetCallOptionHandler;->doSipCallOptionHandle(Lcom/mediatek/calloption/Request;)V

    goto :goto_2

    .line 120
    :cond_5
    const-string v6, "internet call setting not enabled, show sip disable dialog"

    invoke-static {v6}, Lcom/mediatek/calloption/InternetCallOptionHandler;->log(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, p1, p0, p0, p0}, Lcom/mediatek/calloption/InternetCallOptionHandler;->showSipDisableDialog(Lcom/mediatek/calloption/Request;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 154
    const-string v0, "onCancel()"

    invoke-static {v0}, Lcom/mediatek/calloption/InternetCallOptionHandler;->log(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/mediatek/calloption/InternetCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v0}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onHandlingFinish()V

    .line 156
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(), which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/calloption/InternetCallOptionHandler;->log(Ljava/lang/String;)V

    .line 139
    const/4 v1, -0x1

    if-ne v1, p2, :cond_1

    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.mediatek.settings.SipCallSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/mediatek/calloption/InternetCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 147
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const/4 v1, -0x2

    if-ne v1, p2, :cond_0

    .line 145
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 150
    const-string v0, "onDismiss()"

    invoke-static {v0}, Lcom/mediatek/calloption/InternetCallOptionHandler;->log(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method protected abstract showIPDialToast(Lcom/mediatek/calloption/Request;)V
.end method

.method protected showSipDisableDialog(Lcom/mediatek/calloption/Request;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "request"    # Lcom/mediatek/calloption/Request;
    .param p2, "clickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;
    .param p4, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 135
    return-void
.end method
