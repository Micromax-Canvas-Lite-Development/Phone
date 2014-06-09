.class public Lcom/android/phone/UnlockDialog;
.super Landroid/widget/LinearLayout;
.source "UnlockDialog.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UnlockDialog"


# instance fields
.field private leftArrow:Landroid/graphics/drawable/AnimationDrawable;

.field private mFlipBubble:Lcom/android/phone/FlipBubble;

.field private mIntent:Landroid/content/Intent;

.field private mSlideDialog:Landroid/widget/TextView;

.field private rightArrow:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object v2, p0, Lcom/android/phone/UnlockDialog;->rightArrow:Landroid/graphics/drawable/AnimationDrawable;

    .line 39
    iput-object v2, p0, Lcom/android/phone/UnlockDialog;->leftArrow:Landroid/graphics/drawable/AnimationDrawable;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 45
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040011

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 46
    .local v1, "view":Landroid/view/View;
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/UnlockDialog;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->leftArrow:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/UnlockDialog;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/UnlockDialog;
    .param p1, "x1"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/phone/UnlockDialog;->leftArrow:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/UnlockDialog;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->rightArrow:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/UnlockDialog;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/UnlockDialog;
    .param p1, "x1"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/phone/UnlockDialog;->rightArrow:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->mFlipBubble:Lcom/android/phone/FlipBubble;

    invoke-virtual {v0}, Lcom/android/phone/FlipBubble;->onDestroy()V

    .line 107
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->leftArrow:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->leftArrow:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->rightArrow:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->rightArrow:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 111
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x32

    .line 55
    const v3, 0x7f0b0071

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockDialog;->mSlideDialog:Landroid/widget/TextView;

    .line 56
    const v3, 0x7f0b0072

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/phone/FlipBubble;

    iput-object v3, p0, Lcom/android/phone/UnlockDialog;->mFlipBubble:Lcom/android/phone/FlipBubble;

    .line 57
    iget-object v3, p0, Lcom/android/phone/UnlockDialog;->mFlipBubble:Lcom/android/phone/FlipBubble;

    invoke-virtual {v3, p0}, Lcom/android/phone/FlipBubble;->setDialog(Landroid/view/View;)V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 59
    .local v0, "handler":Landroid/os/Handler;
    const v3, 0x7f0b0073

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 60
    .local v1, "imgArrowLeft":Landroid/widget/ImageView;
    const v3, 0x7f050002

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 61
    new-instance v3, Lcom/android/phone/UnlockDialog$1;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/UnlockDialog$1;-><init>(Lcom/android/phone/UnlockDialog;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    const v3, 0x7f0b0074

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 70
    .local v2, "imgArrowRight":Landroid/widget/ImageView;
    const v3, 0x7f050003

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 71
    new-instance v3, Lcom/android/phone/UnlockDialog$2;

    invoke-direct {v3, p0, v2}, Lcom/android/phone/UnlockDialog$2;-><init>(Lcom/android/phone/UnlockDialog;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->mSlideDialog:Landroid/widget/TextView;

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 51
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->mFlipBubble:Lcom/android/phone/FlipBubble;

    invoke-virtual {v0, p1}, Lcom/android/phone/FlipBubble;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAnmi(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 119
    if-nez p1, :cond_2

    .line 121
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->leftArrow:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->leftArrow:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->rightArrow:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->rightArrow:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 133
    :cond_1
    :goto_0
    return-void

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->leftArrow:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->leftArrow:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->rightArrow:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->rightArrow:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->mFlipBubble:Lcom/android/phone/FlipBubble;

    invoke-virtual {v0, p1}, Lcom/android/phone/FlipBubble;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    return-void
.end method

.method public setFlipBubble()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->mFlipBubble:Lcom/android/phone/FlipBubble;

    invoke-virtual {v0}, Lcom/android/phone/FlipBubble;->setFlipBubble()V

    .line 115
    return-void
.end method

.method public setForegroundBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->mFlipBubble:Lcom/android/phone/FlipBubble;

    invoke-virtual {v0, p1}, Lcom/android/phone/FlipBubble;->setForegroundBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/UnlockDialog;->mIntent:Landroid/content/Intent;

    .line 83
    return-void
.end method

.method public setShortcutIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->mFlipBubble:Lcom/android/phone/FlipBubble;

    invoke-virtual {v0, p1}, Lcom/android/phone/FlipBubble;->setShortcutIcon(Landroid/graphics/Bitmap;)V

    .line 103
    return-void
.end method

.method public setUnlockListener(Lcom/android/phone/FlipBubble$UnlockListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/phone/FlipBubble$UnlockListener;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/UnlockDialog;->mFlipBubble:Lcom/android/phone/FlipBubble;

    invoke-virtual {v0, p1}, Lcom/android/phone/FlipBubble;->setUnlockListener(Lcom/android/phone/FlipBubble$UnlockListener;)V

    .line 91
    return-void
.end method
