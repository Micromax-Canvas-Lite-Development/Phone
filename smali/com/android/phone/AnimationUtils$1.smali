.class final Lcom/android/phone/AnimationUtils$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AnimationUtils;->startCrossFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$from:Landroid/graphics/drawable/Drawable;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$to:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/phone/AnimationUtils$1;->val$from:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/phone/AnimationUtils$1;->val$to:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/phone/AnimationUtils$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 247
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 250
    iget-object v0, p0, Lcom/android/phone/AnimationUtils$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/AnimationUtils$1;->val$to:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 238
    return-void
.end method
