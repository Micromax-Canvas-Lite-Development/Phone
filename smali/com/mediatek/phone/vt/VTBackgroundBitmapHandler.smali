.class public Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;
.super Ljava/lang/Object;
.source "VTBackgroundBitmapHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VTBackgroundBitmapHandler"


# instance fields
.field private mBitmap1:Landroid/graphics/Bitmap;

.field private mBitmap2:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 143
    const-string v0, "VTBackgroundBitmapHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method


# virtual methods
.method public forceUpdateBitmapBySetting(I)V
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceUpdateBitmapBySetting(), slot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->log(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->recycle(I)V

    .line 89
    if-nez p1, :cond_2

    .line 90
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplacePeer:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->mBitmap1:Landroid/graphics/Bitmap;

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplacePeer:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p1}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->mBitmap1:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 97
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 98
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplacePeer:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->mBitmap2:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 101
    :cond_3
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplacePeer:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {p1}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->mBitmap2:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBitmap(), slot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->log(Ljava/lang/String;)V

    .line 133
    if-nez p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->mBitmap1:Landroid/graphics/Bitmap;

    .line 138
    :goto_0
    return-object v0

    .line 135
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 136
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->mBitmap2:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    const-string v0, "recycle()"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->log(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->mBitmap1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->mBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 61
    :cond_0
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->mBitmap1:Landroid/graphics/Bitmap;

    .line 62
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->mBitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->mBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 65
    :cond_1
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->mBitmap2:Landroid/graphics/Bitmap;

    .line 66
    return-void
.end method

.method public recycle(I)V
    .locals 3
    .param p1, "slot"    # I

    .prologue
    const/4 v2, 0x0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recycle(), slot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->log(Ljava/lang/String;)V

    .line 70
    if-nez p1, :cond_2

    .line 71
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->mBitmap1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->mBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 74
    :cond_0
    iput-object v2, p0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->mBitmap1:Landroid/graphics/Bitmap;

    .line 81
    :cond_1
    :goto_0
    return-void

    .line 75
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->mBitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 77
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->mBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 79
    :cond_3
    iput-object v2, p0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->mBitmap2:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public updateBitmapBySetting(I)V
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBitmapBySetting(), slot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->log(Ljava/lang/String;)V

    .line 113
    if-nez p1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->mBitmap1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->mBitmap2:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 124
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->forceUpdateBitmapBySetting(I)V

    goto :goto_0
.end method
