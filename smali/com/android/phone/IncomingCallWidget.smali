.class public Lcom/android/phone/IncomingCallWidget;
.super Landroid/widget/RelativeLayout;
.source "IncomingCallWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "IncomingCallWidget"


# instance fields
.field private mAnswerButton:Landroid/widget/ImageButton;

.field private mAnswerDialog:Lcom/android/phone/UnlockDialog;

.field private mBackButton:Landroid/widget/ImageButton;

.field private mRejectButton:Landroid/widget/ImageButton;

.field private mRejectDialog:Lcom/android/phone/UnlockDialog;

.field private mRespondViaSMSButton:Landroid/widget/ImageButton;

.field mShadowColors:[I

.field mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mShowRespondViaSMS:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/IncomingCallWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040024

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 44
    .local v1, "view":Landroid/view/View;
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 118
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 47
    const v0, 0x7f0b00b5

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRespondViaSMSButton:Landroid/widget/ImageButton;

    .line 48
    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mAnswerButton:Landroid/widget/ImageButton;

    .line 49
    const v0, 0x7f0b00b6

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRejectButton:Landroid/widget/ImageButton;

    .line 50
    const v0, 0x7f0b00b2

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mBackButton:Landroid/widget/ImageButton;

    .line 52
    const v0, 0x7f0b00b8

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/UnlockDialog;

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRejectDialog:Lcom/android/phone/UnlockDialog;

    .line 53
    const v0, 0x7f0b00b7

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/UnlockDialog;

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mAnswerDialog:Lcom/android/phone/UnlockDialog;

    .line 55
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mAnswerButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 56
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRejectButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 58
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRejectDialog:Lcom/android/phone/UnlockDialog;

    invoke-virtual {p0}, Lcom/android/phone/IncomingCallWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200fe

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/UnlockDialog;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRejectDialog:Lcom/android/phone/UnlockDialog;

    invoke-virtual {p0}, Lcom/android/phone/IncomingCallWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200fd

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/UnlockDialog;->setForegroundBitmap(Landroid/graphics/Bitmap;)V

    .line 62
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mAnswerDialog:Lcom/android/phone/UnlockDialog;

    invoke-virtual {p0}, Lcom/android/phone/IncomingCallWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200fc

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/UnlockDialog;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mAnswerDialog:Lcom/android/phone/UnlockDialog;

    invoke-virtual {p0}, Lcom/android/phone/IncomingCallWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200fb

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/UnlockDialog;->setForegroundBitmap(Landroid/graphics/Bitmap;)V

    .line 66
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRespondViaSMSButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mAnswerButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRejectButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    :pswitch_0
    return v2

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRejectDialog:Lcom/android/phone/UnlockDialog;

    invoke-virtual {v0}, Lcom/android/phone/UnlockDialog;->setFlipBubble()V

    .line 80
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRejectDialog:Lcom/android/phone/UnlockDialog;

    invoke-virtual {v0, v2}, Lcom/android/phone/UnlockDialog;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRejectDialog:Lcom/android/phone/UnlockDialog;

    invoke-virtual {v0, p2}, Lcom/android/phone/UnlockDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mAnswerDialog:Lcom/android/phone/UnlockDialog;

    invoke-virtual {v0}, Lcom/android/phone/UnlockDialog;->setFlipBubble()V

    .line 85
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mAnswerDialog:Lcom/android/phone/UnlockDialog;

    invoke-virtual {v0, v2}, Lcom/android/phone/UnlockDialog;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mAnswerDialog:Lcom/android/phone/UnlockDialog;

    invoke-virtual {v0, p2}, Lcom/android/phone/UnlockDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x7f0b00b3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 123
    if-eq p1, p0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    if-nez p2, :cond_3

    .line 129
    const/4 v0, 0x1

    .line 136
    .local v0, "start":Z
    :goto_1
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mRejectDialog:Lcom/android/phone/UnlockDialog;

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mRejectDialog:Lcom/android/phone/UnlockDialog;

    invoke-virtual {v1, v0}, Lcom/android/phone/UnlockDialog;->setAnmi(Z)V

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mAnswerDialog:Lcom/android/phone/UnlockDialog;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mAnswerDialog:Lcom/android/phone/UnlockDialog;

    invoke-virtual {v1, v0}, Lcom/android/phone/UnlockDialog;->setAnmi(Z)V

    goto :goto_0

    .line 133
    .end local v0    # "start":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "start":Z
    goto :goto_1
.end method

.method public resetLayout()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRespondViaSMSButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRespondViaSMSButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/android/phone/IncomingCallWidget;->mShowRespondViaSMS:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mAnswerButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRejectButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRejectDialog:Lcom/android/phone/UnlockDialog;

    invoke-virtual {v0, v3}, Lcom/android/phone/UnlockDialog;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mAnswerDialog:Lcom/android/phone/UnlockDialog;

    invoke-virtual {v0, v3}, Lcom/android/phone/UnlockDialog;->setVisibility(I)V

    .line 102
    return-void
.end method

.method public setUnlockListener(Lcom/android/phone/FlipBubble$UnlockListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/phone/FlipBubble$UnlockListener;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRejectDialog:Lcom/android/phone/UnlockDialog;

    invoke-virtual {v0, p1}, Lcom/android/phone/UnlockDialog;->setUnlockListener(Lcom/android/phone/FlipBubble$UnlockListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mAnswerDialog:Lcom/android/phone/UnlockDialog;

    invoke-virtual {v0, p1}, Lcom/android/phone/UnlockDialog;->setUnlockListener(Lcom/android/phone/FlipBubble$UnlockListener;)V

    .line 107
    return-void
.end method

.method public showRespondViaSMS(Z)V
    .locals 0
    .param p1, "s"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/phone/IncomingCallWidget;->mShowRespondViaSMS:Z

    .line 111
    return-void
.end method
