.class Lcom/android/phone/UnlockPINLock$TouchInput;
.super Ljava/lang/Object;
.source "UnlockPINLock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockPINLock;
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

.field final synthetic this$0:Lcom/android/phone/UnlockPINLock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPINLock;)V
    .locals 2

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 455
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    .line 470
    const v0, 0x7f0b0083

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mZero:Landroid/widget/TextView;

    .line 471
    const v0, 0x7f0b0079

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mOne:Landroid/widget/TextView;

    .line 472
    const v0, 0x7f0b007a

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 473
    const v0, 0x7f0b007b

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mThree:Landroid/widget/TextView;

    .line 474
    const v0, 0x7f0b007c

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mFour:Landroid/widget/TextView;

    .line 475
    const v0, 0x7f0b007d

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mFive:Landroid/widget/TextView;

    .line 476
    const v0, 0x7f0b007e

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mSix:Landroid/widget/TextView;

    .line 477
    const v0, 0x7f0b007f

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 478
    const v0, 0x7f0b0080

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mEight:Landroid/widget/TextView;

    .line 479
    const v0, 0x7f0b0081

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mNine:Landroid/widget/TextView;

    .line 480
    const v0, 0x7f0b0120

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 481
    const v0, 0x7f0b00a9

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mOk:Landroid/widget/TextView;

    .line 484
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    const/high16 v1, 0x41600000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 514
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 515
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 516
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 517
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 518
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 519
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 520
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 521
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 522
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 523
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 524
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 525
    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 643
    const/4 v0, -0x1

    .line 644
    .local v0, "keyEventCode":I
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 645
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    .line 646
    const/4 v0, 0x7

    .line 675
    :cond_0
    :goto_0
    return v0

    .line 647
    :cond_1
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 648
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    .line 649
    const/16 v0, 0x8

    goto :goto_0

    .line 650
    :cond_2
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 651
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    .line 652
    const/16 v0, 0x9

    goto :goto_0

    .line 653
    :cond_3
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 654
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    .line 655
    const/16 v0, 0xa

    goto :goto_0

    .line 656
    :cond_4
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 657
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    .line 658
    const/16 v0, 0xb

    goto :goto_0

    .line 659
    :cond_5
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 660
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    .line 661
    const/16 v0, 0xc

    goto :goto_0

    .line 662
    :cond_6
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 663
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    .line 664
    const/16 v0, 0xd

    goto :goto_0

    .line 665
    :cond_7
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 666
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    .line 667
    const/16 v0, 0xe

    goto :goto_0

    .line 668
    :cond_8
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 669
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    .line 670
    const/16 v0, 0xf

    goto :goto_0

    .line 671
    :cond_9
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 672
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    .line 673
    const/16 v0, 0x10

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v4, 0x7f080083

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 563
    const-string v2, "UnlockPINLock "

    const-string v3, "[onClick]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v2, v2, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 565
    const-string v2, "UnlockPINLock "

    const-string v3, "[onClick][mPwdDisplay] : null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :goto_0
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v2, :cond_2

    .line 571
    const-string v2, "UnlockPINLock "

    const-string v3, "[onClick][Cancel Button]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    const/16 v3, 0x1f5

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/UnlockPINLock;->sendVerifyResult(IZ)V

    .line 573
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-virtual {v2}, Lcom/android/phone/UnlockPINLock;->finish()V

    .line 638
    :cond_0
    :goto_1
    return-void

    .line 567
    :cond_1
    const-string v2, "UnlockPINLock "

    const-string v3, "[onClick][mPwdDisplay] : not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 577
    :cond_2
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mOk:Landroid/widget/TextView;

    if-ne p1, v2, :cond_3

    .line 578
    const-string v2, "UnlockPINLock "

    const-string v3, "[onClick][OK Button]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v2, v2, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 580
    const-string v2, "UnlockPINLock "

    const-string v3, "[onClick][OK Button][mPwdDisplay] : not null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v2, v2, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    .line 582
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    sget-object v3, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v2, Lcom/android/phone/UnlockPINLock;->PwdLength:I

    .line 583
    sget-object v2, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/phone/UnlockPINLock;->bStringValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 584
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    # getter for: Lcom/android/phone/UnlockPINLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/UnlockPINLock;->access$000(Lcom/android/phone/UnlockPINLock;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-virtual {v3, v4}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    :goto_2
    const/4 v2, 0x0

    sput-object v2, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    .line 618
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v2, v2, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/phone/UnlockPINLock$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 624
    .local v0, "keyEventCode":I
    if-ltz v0, :cond_0

    .line 625
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v2, v2, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 626
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v2, v2, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    .line 627
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    sget-object v3, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v2, Lcom/android/phone/UnlockPINLock;->PwdLength:I

    .line 628
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget v2, v2, Lcom/android/phone/UnlockPINLock;->PwdLength:I

    if-ge v2, v6, :cond_4

    .line 630
    iget v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, "strInput":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v2, v2, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 635
    .end local v1    # "strInput":Ljava/lang/String;
    :cond_4
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    goto/16 :goto_1

    .line 586
    .end local v0    # "keyEventCode":I
    :cond_5
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget v2, v2, Lcom/android/phone/UnlockPINLock;->PwdLength:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_7

    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget v2, v2, Lcom/android/phone/UnlockPINLock;->PwdLength:I

    if-gt v2, v6, :cond_7

    .line 587
    const-string v2, "UnlockPINLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onClick][OK Button][strPwd] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/android/phone/UnlockPINLock;->progressDialog:Landroid/app/ProgressDialog;

    .line 590
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v2, v2, Lcom/android/phone/UnlockPINLock;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    const v4, 0x7f080090

    invoke-virtual {v3, v4}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v2, v2, Lcom/android/phone/UnlockPINLock;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 592
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v2, v2, Lcom/android/phone/UnlockPINLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 593
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v2, v2, Lcom/android/phone/UnlockPINLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 598
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v2, v2, Lcom/android/phone/UnlockPINLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 600
    const-string v2, "UnlockPINLock "

    const-string v3, "[onClick][OK Button][Start Unlock Process]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    sget v2, Lcom/android/phone/UnlockPINLock;->iSIMMEUnlockNo:I

    if-nez v2, :cond_6

    .line 606
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    sget v3, Lcom/android/phone/UnlockPINLock;->iSIMMEUnlockNo:I

    sget-object v4, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/UnlockPINLock;->unlockPIN(ILjava/lang/String;)V

    .line 611
    :goto_3
    const-string v2, "UnlockPINLock "

    const-string v3, "[onClick][OK Button][Finish Unlock Process]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 608
    :cond_6
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    sget v3, Lcom/android/phone/UnlockPINLock;->iSIMMEUnlockNo:I

    sget-object v4, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/UnlockPINLock;->unlockPIN(ILjava/lang/String;)V

    goto :goto_3

    .line 614
    :cond_7
    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    # getter for: Lcom/android/phone/UnlockPINLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/UnlockPINLock;->access$000(Lcom/android/phone/UnlockPINLock;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-virtual {v3, v4}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 558
    const/4 v0, 0x0

    return v0
.end method

.method protected showAlertDialog(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 679
    const/16 v1, 0x78

    if-ne p1, v1, :cond_0

    .line 680
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 681
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 696
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 683
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_0
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/android/phone/UnlockPINLock$TouchInput$1;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockPINLock$TouchInput$1;-><init>(Lcom/android/phone/UnlockPINLock$TouchInput;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 681
    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_0
    .end packed-switch
.end method
