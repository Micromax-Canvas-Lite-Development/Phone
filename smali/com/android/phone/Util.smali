.class public Lcom/android/phone/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static BUTTON_INCALL_BANNER_KEY:Ljava/lang/String; = null

.field public static final PHONE_BANNER_SETTINGS:Ljava/lang/String; = "phone_banner_enable"

.field private static mBubbleNotifyLoader:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mBubbleNotifyName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mShellStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/Util;->mShellStyle:I

    .line 31
    const-string v0, "button_show_incall_banner"

    sput-object v0, Lcom/android/phone/Util;->BUTTON_INCALL_BANNER_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBannerIsOn(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone_banner_enable"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v6, 0x7f0c0000

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 46
    .local v0, "state":I
    if-ne v0, v2, :cond_1

    :goto_1
    return v2

    .end local v0    # "state":I
    :cond_0
    move v1, v3

    .line 45
    goto :goto_0

    .restart local v0    # "state":I
    :cond_1
    move v2, v3

    .line 46
    goto :goto_1
.end method

.method public static getBubbleNotifyCount(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-object v1, Lcom/android/phone/Util;->mBubbleNotifyName:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 51
    .local v0, "count":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getBubbleNotifyLoader(I)I
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 59
    sget-object v1, Lcom/android/phone/Util;->mBubbleNotifyLoader:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 60
    .local v0, "count":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isShellUiStyle()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 34
    sget v2, Lcom/android/phone/Util;->mShellStyle:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 35
    const-string v2, "acer.shell.mode"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ENABLED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v0, :cond_1

    .line 36
    sput v0, Lcom/android/phone/Util;->mShellStyle:I

    .line 41
    :cond_0
    :goto_0
    sget v2, Lcom/android/phone/Util;->mShellStyle:I

    if-lez v2, :cond_2

    :goto_1
    return v0

    .line 38
    :cond_1
    sput v1, Lcom/android/phone/Util;->mShellStyle:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 41
    goto :goto_1
.end method

.method public static putBubbleNotifyLoader(II)V
    .locals 3
    .param p0, "id"    # I
    .param p1, "count"    # I

    .prologue
    .line 55
    sget-object v0, Lcom/android/phone/Util;->mBubbleNotifyLoader:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method
