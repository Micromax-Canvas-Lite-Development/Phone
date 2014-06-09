.class Lcom/android/phone/UnlockPUK2Lock$TouchInput;
.super Ljava/lang/Object;
.source "UnlockPUK2Lock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockPUK2Lock;
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

.field final synthetic this$0:Lcom/android/phone/UnlockPUK2Lock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPUK2Lock;)V
    .locals 2

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 426
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    .line 441
    const v0, 0x7f0b0083

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mZero:Landroid/widget/TextView;

    .line 442
    const v0, 0x7f0b0079

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mOne:Landroid/widget/TextView;

    .line 443
    const v0, 0x7f0b007a

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 444
    const v0, 0x7f0b007b

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mThree:Landroid/widget/TextView;

    .line 445
    const v0, 0x7f0b007c

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mFour:Landroid/widget/TextView;

    .line 446
    const v0, 0x7f0b007d

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mFive:Landroid/widget/TextView;

    .line 447
    const v0, 0x7f0b007e

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mSix:Landroid/widget/TextView;

    .line 448
    const v0, 0x7f0b007f

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 449
    const v0, 0x7f0b0080

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mEight:Landroid/widget/TextView;

    .line 450
    const v0, 0x7f0b0081

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mNine:Landroid/widget/TextView;

    .line 451
    const v0, 0x7f0b0120

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 452
    const v0, 0x7f0b00a9

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mOk:Landroid/widget/TextView;

    .line 455
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    const/high16 v1, 0x41600000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 485
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 486
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 487
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 488
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 489
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 490
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 491
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 492
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 493
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 494
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 495
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 496
    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 669
    const/4 v0, -0x1

    .line 670
    .local v0, "keyEventCode":I
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 671
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    .line 672
    const/4 v0, 0x7

    .line 701
    :cond_0
    :goto_0
    return v0

    .line 673
    :cond_1
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 674
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    .line 675
    const/16 v0, 0x8

    goto :goto_0

    .line 676
    :cond_2
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 677
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    .line 678
    const/16 v0, 0x9

    goto :goto_0

    .line 679
    :cond_3
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 680
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    .line 681
    const/16 v0, 0xa

    goto :goto_0

    .line 682
    :cond_4
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 683
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    .line 684
    const/16 v0, 0xb

    goto :goto_0

    .line 685
    :cond_5
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 686
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    .line 687
    const/16 v0, 0xc

    goto :goto_0

    .line 688
    :cond_6
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 689
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    .line 690
    const/16 v0, 0xd

    goto :goto_0

    .line 691
    :cond_7
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 692
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    .line 693
    const/16 v0, 0xe

    goto :goto_0

    .line 694
    :cond_8
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 695
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    .line 696
    const/16 v0, 0xf

    goto :goto_0

    .line 697
    :cond_9
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 698
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    .line 699
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

    .line 533
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v4, :cond_1

    .line 534
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    const/16 v5, 0x1f9

    invoke-virtual {v4, v5, v7}, Lcom/android/phone/UnlockPUK2Lock;->sendVerifyResult(IZ)V

    .line 535
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v4}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mOk:Landroid/widget/TextView;

    if-ne p1, v4, :cond_4

    .line 540
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 541
    :cond_2
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 542
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    .line 543
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lcom/android/phone/UnlockPUK2Lock;->PwdLength:I

    .line 544
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->PwdLength:I

    if-ne v4, v8, :cond_3

    .line 546
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    const-class v5, Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 547
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 548
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "PUKPHASE"

    const-string v5, "2"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v4, "PUKLEFTRETRIES"

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v5, v5, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 550
    const-string v4, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v5, v5, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 551
    const-string v4, "INPUTPUK"

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 553
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v4, v1}, Lcom/android/phone/UnlockPUK2Lock;->startActivity(Landroid/content/Intent;)V

    .line 554
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v4}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto :goto_0

    .line 557
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    # getter for: Lcom/android/phone/UnlockPUK2Lock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/phone/UnlockPUK2Lock;->access$000(Lcom/android/phone/UnlockPUK2Lock;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    const v6, 0x7f080084

    invoke-virtual {v5, v6}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iput-object v9, v4, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    .line 560
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v2

    .line 651
    .local v2, "keyEventCode":I
    if-ltz v2, :cond_0

    .line 652
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    .line 653
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    .line 654
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lcom/android/phone/UnlockPUK2Lock;->PwdLength:I

    .line 655
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->PwdLength:I

    if-ge v4, v8, :cond_5

    .line 657
    iget v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 658
    .local v3, "strInput":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 662
    .end local v3    # "strInput":Ljava/lang/String;
    :cond_5
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    goto/16 :goto_0

    .line 562
    .end local v2    # "keyEventCode":I
    :cond_6
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 563
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 564
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    .line 565
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lcom/android/phone/UnlockPUK2Lock;->PwdLength:I

    .line 566
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->PwdLength:I

    if-lt v4, v10, :cond_7

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->PwdLength:I

    if-gt v4, v8, :cond_7

    .line 568
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    const-class v5, Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 569
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 570
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v4, "PUKPHASE"

    const-string v5, "3"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v4, "PUKLEFTRETRIES"

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v5, v5, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 572
    const-string v4, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v5, v5, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 573
    const-string v4, "INPUTPUK"

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUK2Lock;->strPUK:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v4, "INPUTORIPIN"

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 576
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v4, v1}, Lcom/android/phone/UnlockPUK2Lock;->startActivity(Landroid/content/Intent;)V

    .line 577
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v4}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto/16 :goto_0

    .line 580
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    # getter for: Lcom/android/phone/UnlockPUK2Lock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/phone/UnlockPUK2Lock;->access$000(Lcom/android/phone/UnlockPUK2Lock;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v5, v6}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iput-object v9, v4, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    .line 583
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 585
    :cond_8
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 586
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 587
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    .line 588
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lcom/android/phone/UnlockPUK2Lock;->PwdLength:I

    .line 589
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/phone/UnlockPUK2Lock;->bStringValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 590
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    # getter for: Lcom/android/phone/UnlockPUK2Lock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/phone/UnlockPUK2Lock;->access$000(Lcom/android/phone/UnlockPUK2Lock;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v5, v6}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    :goto_2
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iput-object v9, v4, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    .line 643
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 592
    :cond_9
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->PwdLength:I

    if-lt v4, v10, :cond_c

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->PwdLength:I

    if-gt v4, v8, :cond_c

    .line 593
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->strOriPIN:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 594
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    # getter for: Lcom/android/phone/UnlockPUK2Lock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/phone/UnlockPUK2Lock;->access$000(Lcom/android/phone/UnlockPUK2Lock;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    const v6, 0x7f08008f

    invoke-virtual {v5, v6}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    const-class v5, Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 596
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 597
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v4, "PUKPHASE"

    const-string v5, "2"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v4, "PUKLEFTRETRIES"

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v5, v5, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 599
    const-string v4, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v5, v5, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 600
    const-string v4, "INPUTPUK"

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUK2Lock;->strPUK:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 602
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v4, v1}, Lcom/android/phone/UnlockPUK2Lock;->startActivity(Landroid/content/Intent;)V

    .line 603
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v4}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto/16 :goto_0

    .line 607
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_a
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    new-instance v5, Landroid/app/ProgressDialog;

    iget-object v6, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/android/phone/UnlockPUK2Lock;->progressDialog:Landroid/app/ProgressDialog;

    .line 608
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    const v6, 0x7f080090

    invoke-virtual {v5, v6}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 610
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 611
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 616
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 619
    const-string v4, "UnlockPUK2Lock "

    const-string v5, "[onClick][OK Button][Start Unlock Process]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    if-nez v4, :cond_b

    .line 625
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v5, v5, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    iget-object v6, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v6, v6, Lcom/android/phone/UnlockPUK2Lock;->strPUK:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v7, v7, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/phone/UnlockPUK2Lock;->unlockPUK2(ILjava/lang/String;Ljava/lang/String;)V

    .line 630
    :goto_3
    const-string v4, "UnlockPUK2Lock "

    const-string v5, "[onClick][OK Button][Finish Unlock Process]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 627
    :cond_b
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v5, v5, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    iget-object v6, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v6, v6, Lcom/android/phone/UnlockPUK2Lock;->strPUK:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v7, v7, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/phone/UnlockPUK2Lock;->unlockPUK2(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 639
    :cond_c
    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    # getter for: Lcom/android/phone/UnlockPUK2Lock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/phone/UnlockPUK2Lock;->access$000(Lcom/android/phone/UnlockPUK2Lock;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v5, v6}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method protected showAlertDialog(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 705
    const/16 v1, 0x78

    if-ne p1, v1, :cond_0

    .line 706
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 707
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 722
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 709
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_0
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/android/phone/UnlockPUK2Lock$TouchInput$1;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockPUK2Lock$TouchInput$1;-><init>(Lcom/android/phone/UnlockPUK2Lock$TouchInput;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 707
    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_0
    .end packed-switch
.end method
