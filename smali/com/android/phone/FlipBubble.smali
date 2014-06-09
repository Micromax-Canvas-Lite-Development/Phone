.class public Lcom/android/phone/FlipBubble;
.super Landroid/widget/ImageView;
.source "FlipBubble.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/FlipBubble$UnlockListener;
    }
.end annotation


# instance fields
.field private mBackBitmap:Landroid/graphics/Bitmap;

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mCurrentDegree:F

.field private mDialog:Landroid/view/View;

.field private mDispHeigh:I

.field private mDispWidth:I

.field private mForegroundBitmap:Landroid/graphics/Bitmap;

.field private mFrontBitmap:Landroid/graphics/Bitmap;

.field private mLastX:I

.field private mShortcutBitmap:Landroid/graphics/Bitmap;

.field protected mUnlockListener:Lcom/android/phone/FlipBubble$UnlockListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/FlipBubble;->mShortcutBitmap:Landroid/graphics/Bitmap;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/FlipBubble;->mCurrentDegree:F

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/FlipBubble;->mLastX:I

    .line 49
    iput-object p1, p0, Lcom/android/phone/FlipBubble;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Lcom/android/phone/FlipBubble;->InitView()V

    .line 51
    return-void
.end method

.method private InitView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0200c5

    const/4 v2, 0x1

    .line 54
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 55
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 56
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 57
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 59
    iget-object v1, p0, Lcom/android/phone/FlipBubble;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FlipBubble;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 60
    iget-object v1, p0, Lcom/android/phone/FlipBubble;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FlipBubble;->mForegroundBitmap:Landroid/graphics/Bitmap;

    .line 63
    return-void
.end method

.method private doPageFlip()V
    .locals 2

    .prologue
    .line 185
    iget v0, p0, Lcom/android/phone/FlipBubble;->mCurrentDegree:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42b40000

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mBackBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/phone/FlipBubble;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 190
    :goto_0
    iget v0, p0, Lcom/android/phone/FlipBubble;->mCurrentDegree:F

    invoke-virtual {p0, v0}, Lcom/android/phone/FlipBubble;->setRotationY(F)V

    .line 191
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mFrontBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/phone/FlipBubble;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private resetBubble()V
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/FlipBubble;->mCurrentDegree:F

    .line 195
    iget v0, p0, Lcom/android/phone/FlipBubble;->mCurrentDegree:F

    invoke-virtual {p0, v0}, Lcom/android/phone/FlipBubble;->setRotationY(F)V

    .line 196
    invoke-virtual {p0}, Lcom/android/phone/FlipBubble;->invalidate()V

    .line 197
    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mUnlockListener:Lcom/android/phone/FlipBubble$UnlockListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mUnlockListener:Lcom/android/phone/FlipBubble$UnlockListener;

    iget-object v1, p0, Lcom/android/phone/FlipBubble;->mDialog:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/phone/FlipBubble$UnlockListener;->unLockFail(Landroid/view/View;)V

    .line 200
    :cond_0
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v8, 0x43340000

    const/high16 v7, -0x3ccc0000

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/android/phone/FlipBubble;->mLastX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-double v3, v3

    const-wide v5, 0x3ffccccccccccccdL

    mul-double/2addr v3, v5

    double-to-float v0, v3

    .line 173
    .local v0, "distance":F
    iget v3, p0, Lcom/android/phone/FlipBubble;->mDispWidth:I

    int-to-float v3, v3

    div-float v1, v0, v3

    .line 174
    .local v1, "scale":F
    iget v3, p0, Lcom/android/phone/FlipBubble;->mDispWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    const/high16 v4, 0x40000000

    div-float v2, v3, v4

    .line 175
    .local v2, "step":F
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    .line 176
    :cond_0
    iget v3, p0, Lcom/android/phone/FlipBubble;->mCurrentDegree:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/android/phone/FlipBubble;->mCurrentDegree:F

    .line 177
    iget v3, p0, Lcom/android/phone/FlipBubble;->mCurrentDegree:F

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_2

    .line 178
    iput v8, p0, Lcom/android/phone/FlipBubble;->mCurrentDegree:F

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 179
    :cond_2
    iget v3, p0, Lcom/android/phone/FlipBubble;->mCurrentDegree:F

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_1

    .line 180
    iput v7, p0, Lcom/android/phone/FlipBubble;->mCurrentDegree:F

    goto :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 221
    iput-object v1, p0, Lcom/android/phone/FlipBubble;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mForegroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mForegroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mForegroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 225
    iput-object v1, p0, Lcom/android/phone/FlipBubble;->mForegroundBitmap:Landroid/graphics/Bitmap;

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mShortcutBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mShortcutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mShortcutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 229
    iput-object v1, p0, Lcom/android/phone/FlipBubble;->mShortcutBitmap:Landroid/graphics/Bitmap;

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mFrontBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mFrontBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mFrontBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 233
    iput-object v1, p0, Lcom/android/phone/FlipBubble;->mFrontBitmap:Landroid/graphics/Bitmap;

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mBackBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mBackBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 236
    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mBackBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 237
    iput-object v1, p0, Lcom/android/phone/FlipBubble;->mBackBitmap:Landroid/graphics/Bitmap;

    .line 239
    :cond_4
    iput-object v1, p0, Lcom/android/phone/FlipBubble;->mUnlockListener:Lcom/android/phone/FlipBubble$UnlockListener;

    .line 241
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 133
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 134
    iput p4, p0, Lcom/android/phone/FlipBubble;->mDispWidth:I

    .line 135
    iput p5, p0, Lcom/android/phone/FlipBubble;->mDispHeigh:I

    .line 136
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 141
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v1, v2

    .line 142
    .local v1, "x":I
    packed-switch v0, :pswitch_data_0

    .line 166
    :cond_0
    :goto_0
    iput v1, p0, Lcom/android/phone/FlipBubble;->mLastX:I

    .line 167
    invoke-virtual {p0}, Lcom/android/phone/FlipBubble;->invalidate()V

    .line 168
    const/4 v2, 0x1

    return v2

    .line 144
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/FlipBubble;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 145
    invoke-direct {p0}, Lcom/android/phone/FlipBubble;->doPageFlip()V

    goto :goto_0

    .line 148
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/FlipBubble;->mUnlockListener:Lcom/android/phone/FlipBubble$UnlockListener;

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p0, Lcom/android/phone/FlipBubble;->mUnlockListener:Lcom/android/phone/FlipBubble$UnlockListener;

    invoke-interface {v2}, Lcom/android/phone/FlipBubble$UnlockListener;->touchUp()V

    .line 151
    :cond_1
    iget v2, p0, Lcom/android/phone/FlipBubble;->mCurrentDegree:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43200000

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 152
    iget-object v2, p0, Lcom/android/phone/FlipBubble;->mUnlockListener:Lcom/android/phone/FlipBubble$UnlockListener;

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/phone/FlipBubble;->mUnlockListener:Lcom/android/phone/FlipBubble$UnlockListener;

    iget-object v3, p0, Lcom/android/phone/FlipBubble;->mDialog:Landroid/view/View;

    invoke-interface {v2, v3}, Lcom/android/phone/FlipBubble$UnlockListener;->unLockSuccess(Landroid/view/View;)V

    .line 154
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/phone/FlipBubble;->mCurrentDegree:F

    goto :goto_0

    .line 157
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/FlipBubble;->resetBubble()V

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/FlipBubble;->mUnlockListener:Lcom/android/phone/FlipBubble$UnlockListener;

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/android/phone/FlipBubble;->mUnlockListener:Lcom/android/phone/FlipBubble$UnlockListener;

    invoke-interface {v2}, Lcom/android/phone/FlipBubble$UnlockListener;->touchDown()V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/android/phone/FlipBubble;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 75
    return-void
.end method

.method public setDialog(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/phone/FlipBubble;->mDialog:Landroid/view/View;

    .line 216
    return-void
.end method

.method public setFlipBubble()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000

    const/high16 v11, -0x40800000

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 84
    iget-object v5, p0, Lcom/android/phone/FlipBubble;->mFrontBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/FlipBubble;->mFrontBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    :cond_0
    iget-object v5, p0, Lcom/android/phone/FlipBubble;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/FlipBubble;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/FlipBubble;->mFrontBitmap:Landroid/graphics/Bitmap;

    .line 88
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/phone/FlipBubble;->mFrontBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 89
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/android/phone/FlipBubble;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5, v10, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 90
    iget-object v5, p0, Lcom/android/phone/FlipBubble;->mShortcutBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 91
    iget-object v5, p0, Lcom/android/phone/FlipBubble;->mShortcutBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/phone/FlipBubble;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/phone/FlipBubble;->mShortcutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/phone/FlipBubble;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/android/phone/FlipBubble;->mShortcutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v0, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 96
    :cond_2
    iget-object v5, p0, Lcom/android/phone/FlipBubble;->mBackBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/FlipBubble;->mBackBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 97
    :cond_3
    iget-object v5, p0, Lcom/android/phone/FlipBubble;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/FlipBubble;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/FlipBubble;->mBackBitmap:Landroid/graphics/Bitmap;

    .line 100
    :cond_4
    new-instance v0, Landroid/graphics/Canvas;

    .end local v0    # "canvas":Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/android/phone/FlipBubble;->mBackBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 101
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/android/phone/FlipBubble;->mForegroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/FlipBubble;->mForegroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 103
    .local v3, "tmpBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 104
    .local v4, "tmpCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v4, v11, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 105
    iget-object v5, p0, Lcom/android/phone/FlipBubble;->mForegroundBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/phone/FlipBubble;->mForegroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 106
    invoke-virtual {v0, v3, v10, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 107
    invoke-virtual {v4, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 109
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 110
    const/4 v3, 0x0

    .line 112
    :cond_5
    iget-object v5, p0, Lcom/android/phone/FlipBubble;->mShortcutBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_6

    .line 113
    iget-object v5, p0, Lcom/android/phone/FlipBubble;->mShortcutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/FlipBubble;->mShortcutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 115
    .local v1, "reverseBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 116
    .local v2, "shortcutCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v2, v11, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 117
    iget-object v5, p0, Lcom/android/phone/FlipBubble;->mShortcutBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/phone/FlipBubble;->mShortcutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 118
    iget-object v5, p0, Lcom/android/phone/FlipBubble;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/FlipBubble;->mShortcutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/phone/FlipBubble;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/phone/FlipBubble;->mShortcutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v0, v1, v5, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 121
    invoke-virtual {v2, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 122
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_6

    .line 123
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 127
    .end local v1    # "reverseBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "shortcutCanvas":Landroid/graphics/Canvas;
    :cond_6
    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    iget-object v5, p0, Lcom/android/phone/FlipBubble;->mFrontBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v5}, Lcom/android/phone/FlipBubble;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    return-void
.end method

.method public setForegroundBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mForegroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mForegroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mForegroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/android/phone/FlipBubble;->mForegroundBitmap:Landroid/graphics/Bitmap;

    .line 69
    return-void
.end method

.method public setShortcutIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mShortcutBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mShortcutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/phone/FlipBubble;->mShortcutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/android/phone/FlipBubble;->mShortcutBitmap:Landroid/graphics/Bitmap;

    .line 81
    return-void
.end method

.method public setUnlockListener(Lcom/android/phone/FlipBubble$UnlockListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/phone/FlipBubble$UnlockListener;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/phone/FlipBubble;->mUnlockListener:Lcom/android/phone/FlipBubble$UnlockListener;

    .line 212
    return-void
.end method
