.class Lcom/android/phone/AnimationUtils$CrossFadeDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "AnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CrossFadeDrawable"
.end annotation


# instance fields
.field private final mAnimator:Landroid/animation/ObjectAnimator;

.field private mCrossFadeAlpha:I


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 160
    const-string v0, "crossFadeAlpha"

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AnimationUtils$CrossFadeDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 161
    return-void

    .line 160
    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v3, 0xff

    .line 182
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/AnimationUtils$CrossFadeDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 183
    .local v0, "first":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/AnimationUtils$CrossFadeDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 185
    .local v1, "second":Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/android/phone/AnimationUtils$CrossFadeDrawable;->mCrossFadeAlpha:I

    if-lez v2, :cond_0

    .line 186
    iget v2, p0, Lcom/android/phone/AnimationUtils$CrossFadeDrawable;->mCrossFadeAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 187
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 188
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 191
    :cond_0
    iget v2, p0, Lcom/android/phone/AnimationUtils$CrossFadeDrawable;->mCrossFadeAlpha:I

    if-ge v2, v3, :cond_1

    .line 192
    iget v2, p0, Lcom/android/phone/AnimationUtils$CrossFadeDrawable;->mCrossFadeAlpha:I

    rsub-int v2, v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 193
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 194
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 196
    :cond_1
    return-void
.end method

.method public getAnimator()Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/phone/AnimationUtils$CrossFadeDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public setCrossFadeAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/android/phone/AnimationUtils$CrossFadeDrawable;->mCrossFadeAlpha:I

    .line 173
    invoke-virtual {p0}, Lcom/android/phone/AnimationUtils$CrossFadeDrawable;->invalidateSelf()V

    .line 174
    return-void
.end method
