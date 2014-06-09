.class Lcom/android/phone/UnlockPIN2Lock$TouchInput;
.super Ljava/lang/Object;
.source "UnlockPIN2Lock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockPIN2Lock;
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

.field final synthetic this$0:Lcom/android/phone/UnlockPIN2Lock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPIN2Lock;)V
    .locals 2

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 395
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    .line 410
    const v0, 0x7f0b0083

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mZero:Landroid/widget/TextView;

    .line 411
    const v0, 0x7f0b0079

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mOne:Landroid/widget/TextView;

    .line 412
    const v0, 0x7f0b007a

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 413
    const v0, 0x7f0b007b

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mThree:Landroid/widget/TextView;

    .line 414
    const v0, 0x7f0b007c

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mFour:Landroid/widget/TextView;

    .line 415
    const v0, 0x7f0b007d

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mFive:Landroid/widget/TextView;

    .line 416
    const v0, 0x7f0b007e

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mSix:Landroid/widget/TextView;

    .line 417
    const v0, 0x7f0b007f

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 418
    const v0, 0x7f0b0080

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mEight:Landroid/widget/TextView;

    .line 419
    const v0, 0x7f0b0081

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mNine:Landroid/widget/TextView;

    .line 420
    const v0, 0x7f0b0120

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 421
    const v0, 0x7f0b00a9

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mOk:Landroid/widget/TextView;

    .line 424
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    const/high16 v1, 0x41600000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 454
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 455
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 456
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 457
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 458
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 459
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 460
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 461
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 462
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 463
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 464
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 465
    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 582
    const/4 v0, -0x1

    .line 583
    .local v0, "keyEventCode":I
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 584
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    .line 585
    const/4 v0, 0x7

    .line 614
    :cond_0
    :goto_0
    return v0

    .line 586
    :cond_1
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 587
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    .line 588
    const/16 v0, 0x8

    goto :goto_0

    .line 589
    :cond_2
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 590
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    .line 591
    const/16 v0, 0x9

    goto :goto_0

    .line 592
    :cond_3
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 593
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    .line 594
    const/16 v0, 0xa

    goto :goto_0

    .line 595
    :cond_4
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 596
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    .line 597
    const/16 v0, 0xb

    goto :goto_0

    .line 598
    :cond_5
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 599
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    .line 600
    const/16 v0, 0xc

    goto :goto_0

    .line 601
    :cond_6
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 602
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    .line 603
    const/16 v0, 0xd

    goto :goto_0

    .line 604
    :cond_7
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 605
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    .line 606
    const/16 v0, 0xe

    goto :goto_0

    .line 607
    :cond_8
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 608
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    .line 609
    const/16 v0, 0xf

    goto :goto_0

    .line 610
    :cond_9
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 611
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    .line 612
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

    .line 503
    const-string v2, "UnlockPIN2Lock "

    const-string v3, "[onClick]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v2, v2, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 505
    const-string v2, "UnlockPIN2Lock "

    const-string v3, "[onClick][mPwdDisplay] : null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :goto_0
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v2, :cond_2

    .line 511
    const-string v2, "UnlockPIN2Lock "

    const-string v3, "[onClick][Cancel Button]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    const/16 v3, 0x1f8

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/UnlockPIN2Lock;->sendVerifyResult(IZ)V

    .line 513
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v2}, Lcom/android/phone/UnlockPIN2Lock;->finish()V

    .line 577
    :cond_0
    :goto_1
    return-void

    .line 507
    :cond_1
    const-string v2, "UnlockPIN2Lock "

    const-string v3, "[onClick][mPwdDisplay] : not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 517
    :cond_2
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mOk:Landroid/widget/TextView;

    if-ne p1, v2, :cond_3

    .line 518
    const-string v2, "UnlockPIN2Lock "

    const-string v3, "[onClick][OK Button]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v2, v2, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 520
    const-string v2, "UnlockPIN2Lock "

    const-string v3, "[onClick][OK Button][mPwdDisplay] : not null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v2, v2, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    .line 522
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    sget-object v3, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v2, Lcom/android/phone/UnlockPIN2Lock;->PwdLength:I

    .line 523
    sget-object v2, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/phone/UnlockPIN2Lock;->bStringValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 524
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    # getter for: Lcom/android/phone/UnlockPIN2Lock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/UnlockPIN2Lock;->access$000(Lcom/android/phone/UnlockPIN2Lock;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v3, v4}, Lcom/android/phone/UnlockPIN2Lock;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    :goto_2
    const/4 v2, 0x0

    sput-object v2, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    .line 558
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v2, v2, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 564
    .local v0, "keyEventCode":I
    if-ltz v0, :cond_0

    .line 565
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v2, v2, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 566
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v2, v2, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    .line 567
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    sget-object v3, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v2, Lcom/android/phone/UnlockPIN2Lock;->PwdLength:I

    .line 568
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v2, v2, Lcom/android/phone/UnlockPIN2Lock;->PwdLength:I

    if-ge v2, v6, :cond_4

    .line 570
    iget v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, "strInput":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v2, v2, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 575
    .end local v1    # "strInput":Ljava/lang/String;
    :cond_4
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    goto/16 :goto_1

    .line 526
    .end local v0    # "keyEventCode":I
    :cond_5
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v2, v2, Lcom/android/phone/UnlockPIN2Lock;->PwdLength:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_7

    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v2, v2, Lcom/android/phone/UnlockPIN2Lock;->PwdLength:I

    if-gt v2, v6, :cond_7

    .line 527
    const-string v2, "UnlockPIN2Lock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onClick][OK Button][strPwd] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/android/phone/UnlockPIN2Lock;->progressDialog:Landroid/app/ProgressDialog;

    .line 530
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v2, v2, Lcom/android/phone/UnlockPIN2Lock;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    const v4, 0x7f080090

    invoke-virtual {v3, v4}, Lcom/android/phone/UnlockPIN2Lock;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v2, v2, Lcom/android/phone/UnlockPIN2Lock;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 532
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v2, v2, Lcom/android/phone/UnlockPIN2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 533
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v2, v2, Lcom/android/phone/UnlockPIN2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 538
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v2, v2, Lcom/android/phone/UnlockPIN2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 540
    const-string v2, "UnlockPIN2Lock "

    const-string v3, "[onClick][OK Button][Start Unlock Process]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    sget v2, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    if-nez v2, :cond_6

    .line 546
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    sget v3, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    sget-object v4, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/UnlockPIN2Lock;->unlockPIN2(ILjava/lang/String;)V

    .line 551
    :goto_3
    const-string v2, "UnlockPIN2Lock "

    const-string v3, "[onClick][OK Button][Finish Unlock Process]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 548
    :cond_6
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    sget v3, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    sget-object v4, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/UnlockPIN2Lock;->unlockPIN2(ILjava/lang/String;)V

    goto :goto_3

    .line 554
    :cond_7
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    # getter for: Lcom/android/phone/UnlockPIN2Lock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/UnlockPIN2Lock;->access$000(Lcom/android/phone/UnlockPIN2Lock;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v3, v4}, Lcom/android/phone/UnlockPIN2Lock;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 499
    const/4 v0, 0x0

    return v0
.end method

.method protected showAlertDialog(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 618
    const/16 v1, 0x78

    if-ne p1, v1, :cond_0

    .line 619
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 620
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 635
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 622
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_0
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/android/phone/UnlockPIN2Lock$TouchInput$1;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockPIN2Lock$TouchInput$1;-><init>(Lcom/android/phone/UnlockPIN2Lock$TouchInput;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 620
    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_0
    .end packed-switch
.end method
