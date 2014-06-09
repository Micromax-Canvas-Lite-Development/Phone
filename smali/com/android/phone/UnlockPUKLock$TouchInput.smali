.class Lcom/android/phone/UnlockPUKLock$TouchInput;
.super Ljava/lang/Object;
.source "UnlockPUKLock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockPUKLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchInput"
.end annotation


# instance fields
.field digit:I

.field private mCancelButton:Landroid/widget/TextView;

.field private mEight:Landroid/widget/TextView;

.field private mFive:Landroid/widget/TextView;

.field private mFour:Landroid/widget/TextView;

.field private mNine:Landroid/widget/TextView;

.field private mOk:Landroid/widget/TextView;

.field private mOne:Landroid/widget/TextView;

.field private mSeven:Landroid/widget/TextView;

.field private mSix:Landroid/widget/TextView;

.field private mThree:Landroid/widget/TextView;

.field private mTwo:Landroid/widget/TextView;

.field private mZero:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/phone/UnlockPUKLock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPUKLock;)V
    .locals 2

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 472
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    .line 487
    const v0, 0x7f0b0083

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mZero:Landroid/widget/TextView;

    .line 488
    const v0, 0x7f0b0079

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mOne:Landroid/widget/TextView;

    .line 489
    const v0, 0x7f0b007a

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 490
    const v0, 0x7f0b007b

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mThree:Landroid/widget/TextView;

    .line 491
    const v0, 0x7f0b007c

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mFour:Landroid/widget/TextView;

    .line 492
    const v0, 0x7f0b007d

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mFive:Landroid/widget/TextView;

    .line 493
    const v0, 0x7f0b007e

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mSix:Landroid/widget/TextView;

    .line 494
    const v0, 0x7f0b007f

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 495
    const v0, 0x7f0b0080

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mEight:Landroid/widget/TextView;

    .line 496
    const v0, 0x7f0b0081

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mNine:Landroid/widget/TextView;

    .line 497
    const v0, 0x7f0b0120

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 498
    const v0, 0x7f0b00a9

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mOk:Landroid/widget/TextView;

    .line 501
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    const/high16 v1, 0x41600000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 531
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 532
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 533
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 534
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 535
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 536
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 537
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 538
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 539
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 540
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 541
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 542
    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 724
    const/4 v0, -0x1

    .line 725
    .local v0, "keyEventCode":I
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 726
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    .line 727
    const/4 v0, 0x7

    .line 756
    :cond_0
    :goto_0
    return v0

    .line 728
    :cond_1
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 729
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    .line 730
    const/16 v0, 0x8

    goto :goto_0

    .line 731
    :cond_2
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 732
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    .line 733
    const/16 v0, 0x9

    goto :goto_0

    .line 734
    :cond_3
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 735
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    .line 736
    const/16 v0, 0xa

    goto :goto_0

    .line 737
    :cond_4
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 738
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    .line 739
    const/16 v0, 0xb

    goto :goto_0

    .line 740
    :cond_5
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 741
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    .line 742
    const/16 v0, 0xc

    goto :goto_0

    .line 743
    :cond_6
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 744
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    .line 745
    const/16 v0, 0xd

    goto :goto_0

    .line 746
    :cond_7
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 747
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    .line 748
    const/16 v0, 0xe

    goto :goto_0

    .line 749
    :cond_8
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 750
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    .line 751
    const/16 v0, 0xf

    goto :goto_0

    .line 752
    :cond_9
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 753
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    .line 754
    const/16 v0, 0x10

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x4

    const/4 v7, 0x0

    const/4 v9, 0x0

    const v6, 0x7f080083

    const/16 v8, 0x8

    .line 579
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v4, :cond_1

    .line 580
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    const/16 v5, 0x1f6

    invoke-virtual {v4, v5, v7}, Lcom/android/phone/UnlockPUKLock;->sendVerifyResult(IZ)V

    .line 581
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v4}, Lcom/android/phone/UnlockPUKLock;->finish()V

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mOk:Landroid/widget/TextView;

    if-ne p1, v4, :cond_3

    .line 586
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 587
    :cond_2
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 588
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    .line 589
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lcom/android/phone/UnlockPUKLock;->PwdLength:I

    .line 590
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/phone/UnlockPUKLock;->bStringValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 591
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    # getter for: Lcom/android/phone/UnlockPUKLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/phone/UnlockPUKLock;->access$000(Lcom/android/phone/UnlockPUKLock;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    const v6, 0x7f080084

    invoke-virtual {v5, v6}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    :goto_1
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iput-object v9, v4, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    .line 610
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/phone/UnlockPUKLock$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v2

    .line 706
    .local v2, "keyEventCode":I
    if-ltz v2, :cond_0

    .line 707
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 708
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    .line 709
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lcom/android/phone/UnlockPUKLock;->PwdLength:I

    .line 710
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v4, v4, Lcom/android/phone/UnlockPUKLock;->PwdLength:I

    if-ge v4, v8, :cond_4

    .line 712
    iget v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 713
    .local v3, "strInput":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 717
    .end local v3    # "strInput":Ljava/lang/String;
    :cond_4
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    goto/16 :goto_0

    .line 593
    .end local v2    # "keyEventCode":I
    :cond_5
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v4, v4, Lcom/android/phone/UnlockPUKLock;->PwdLength:I

    if-ne v4, v8, :cond_6

    .line 595
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    const-class v5, Lcom/android/phone/UnlockPUKLock;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 596
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 597
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "PUKPHASE"

    const-string v5, "2"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v4, "PUKLEFTRETRIES"

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v5, v5, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 599
    const-string v4, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v5, v5, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 600
    const-string v4, "INPUTPUK"

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 602
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v4, v1}, Lcom/android/phone/UnlockPUKLock;->startActivity(Landroid/content/Intent;)V

    .line 603
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v4}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto/16 :goto_0

    .line 606
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_6
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    # getter for: Lcom/android/phone/UnlockPUKLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/phone/UnlockPUKLock;->access$000(Lcom/android/phone/UnlockPUKLock;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    const v6, 0x7f080084

    invoke-virtual {v5, v6}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 612
    :cond_7
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 613
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 614
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    .line 615
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lcom/android/phone/UnlockPUKLock;->PwdLength:I

    .line 616
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/phone/UnlockPUKLock;->bStringValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 617
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    # getter for: Lcom/android/phone/UnlockPUKLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/phone/UnlockPUKLock;->access$000(Lcom/android/phone/UnlockPUKLock;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5, v6}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    :goto_3
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iput-object v9, v4, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    .line 637
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 619
    :cond_8
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v4, v4, Lcom/android/phone/UnlockPUKLock;->PwdLength:I

    if-lt v4, v10, :cond_9

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v4, v4, Lcom/android/phone/UnlockPUKLock;->PwdLength:I

    if-gt v4, v8, :cond_9

    .line 621
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    const-class v5, Lcom/android/phone/UnlockPUKLock;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 622
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 623
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v4, "PUKPHASE"

    const-string v5, "3"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v4, "PUKLEFTRETRIES"

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v5, v5, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 625
    const-string v4, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v5, v5, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 626
    const-string v4, "INPUTPUK"

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->strPUK:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v4, "INPUTORIPIN"

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 629
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v4, v1}, Lcom/android/phone/UnlockPUKLock;->startActivity(Landroid/content/Intent;)V

    .line 630
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v4}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto/16 :goto_0

    .line 633
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_9
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    # getter for: Lcom/android/phone/UnlockPUKLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/phone/UnlockPUKLock;->access$000(Lcom/android/phone/UnlockPUKLock;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5, v6}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 639
    :cond_a
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 640
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 641
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    .line 642
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lcom/android/phone/UnlockPUKLock;->PwdLength:I

    .line 643
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/phone/UnlockPUKLock;->bStringValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 644
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    # getter for: Lcom/android/phone/UnlockPUKLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/phone/UnlockPUKLock;->access$000(Lcom/android/phone/UnlockPUKLock;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5, v6}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    :goto_4
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iput-object v9, v4, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    .line 698
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 646
    :cond_b
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v4, v4, Lcom/android/phone/UnlockPUKLock;->PwdLength:I

    if-lt v4, v10, :cond_e

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v4, v4, Lcom/android/phone/UnlockPUKLock;->PwdLength:I

    if-gt v4, v8, :cond_e

    .line 647
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->strOriPIN:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 649
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    const-class v5, Lcom/android/phone/UnlockPUKLock;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 650
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 651
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v4, "PUKPHASE"

    const-string v5, "2"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v4, "PUKLEFTRETRIES"

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v5, v5, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 653
    const-string v4, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v5, v5, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 654
    const-string v4, "WRONGCODE"

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    const v6, 0x7f08008f

    invoke-virtual {v5, v6}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v4, "INPUTPUK"

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->strPUK:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 657
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v4, v1}, Lcom/android/phone/UnlockPUKLock;->startActivity(Landroid/content/Intent;)V

    .line 658
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v4}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto/16 :goto_0

    .line 662
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_c
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    new-instance v5, Landroid/app/ProgressDialog;

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-direct {v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    .line 663
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    const v6, 0x7f080090

    invoke-virtual {v5, v6}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 665
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 666
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 671
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 674
    const-string v4, "UnlockPUKLock "

    const-string v5, "[onClick][OK Button][Start Unlock Process]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v4, v4, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    if-nez v4, :cond_d

    .line 680
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v5, v5, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v6, v6, Lcom/android/phone/UnlockPUKLock;->strPUK:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v7, v7, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/phone/UnlockPUKLock;->unlockPUK(ILjava/lang/String;Ljava/lang/String;)V

    .line 685
    :goto_5
    const-string v4, "UnlockPUKLock "

    const-string v5, "[onClick][OK Button][Finish Unlock Process]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 682
    :cond_d
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v5, v5, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v6, v6, Lcom/android/phone/UnlockPUKLock;->strPUK:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v7, v7, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/phone/UnlockPUKLock;->unlockPUK(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 694
    :cond_e
    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    # getter for: Lcom/android/phone/UnlockPUKLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/phone/UnlockPUKLock;->access$000(Lcom/android/phone/UnlockPUKLock;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5, v6}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 575
    const/4 v0, 0x0

    return v0
.end method

.method protected showAlertDialog(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 760
    const/16 v1, 0x78

    if-ne p1, v1, :cond_0

    .line 761
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 762
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 777
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 764
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_0
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/android/phone/UnlockPUKLock$TouchInput$1;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockPUKLock$TouchInput$1;-><init>(Lcom/android/phone/UnlockPUKLock$TouchInput;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 762
    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_0
    .end packed-switch
.end method
