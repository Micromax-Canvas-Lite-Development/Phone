.class Lcom/mediatek/settings/CallSettings$2;
.super Landroid/database/ContentObserver;
.source "CallSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/CallSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/CallSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/CallSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/mediatek/settings/CallSettings$2;->this$0:Lcom/mediatek/settings/CallSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 305
    iget-object v1, p0, Lcom/mediatek/settings/CallSettings$2;->this$0:Lcom/mediatek/settings/CallSettings;

    invoke-virtual {v1}, Lcom/mediatek/settings/CallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone_banner_enable"

    iget-object v1, p0, Lcom/mediatek/settings/CallSettings$2;->this$0:Lcom/mediatek/settings/CallSettings;

    invoke-virtual {v1}, Lcom/mediatek/settings/CallSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v6, 0x7f0c0000

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 306
    .local v0, "state":I
    iget-object v1, p0, Lcom/mediatek/settings/CallSettings$2;->this$0:Lcom/mediatek/settings/CallSettings;

    # getter for: Lcom/mediatek/settings/CallSettings;->mButtonInCallBanner:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/mediatek/settings/CallSettings;->access$100(Lcom/mediatek/settings/CallSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-ne v0, v2, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 307
    return-void

    .end local v0    # "state":I
    :cond_0
    move v1, v3

    .line 305
    goto :goto_0

    .restart local v0    # "state":I
    :cond_1
    move v2, v3

    .line 306
    goto :goto_1
.end method
