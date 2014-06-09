.class Lcom/android/phone/UnlockSIMLock$TouchInput;
.super Ljava/lang/Object;
.source "UnlockSIMLock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockSIMLock;
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

.field final synthetic this$0:Lcom/android/phone/UnlockSIMLock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockSIMLock;)V
    .locals 2

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 559
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    .line 574
    const v0, 0x7f0b0083

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mZero:Landroid/widget/TextView;

    .line 575
    const v0, 0x7f0b0079

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mOne:Landroid/widget/TextView;

    .line 576
    const v0, 0x7f0b007a

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 577
    const v0, 0x7f0b007b

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mThree:Landroid/widget/TextView;

    .line 578
    const v0, 0x7f0b007c

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mFour:Landroid/widget/TextView;

    .line 579
    const v0, 0x7f0b007d

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mFive:Landroid/widget/TextView;

    .line 580
    const v0, 0x7f0b007e

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mSix:Landroid/widget/TextView;

    .line 581
    const v0, 0x7f0b007f

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 582
    const v0, 0x7f0b0080

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mEight:Landroid/widget/TextView;

    .line 583
    const v0, 0x7f0b0081

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mNine:Landroid/widget/TextView;

    .line 584
    const v0, 0x7f0b0120

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 585
    const v0, 0x7f0b00a9

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mOk:Landroid/widget/TextView;

    .line 588
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    const/high16 v1, 0x41600000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 605
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 608
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 618
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 619
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 620
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 621
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 622
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 623
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 624
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 625
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 626
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 627
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 628
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 629
    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 747
    const/4 v0, -0x1

    .line 748
    .local v0, "keyEventCode":I
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 749
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    .line 750
    const/4 v0, 0x7

    .line 779
    :cond_0
    :goto_0
    return v0

    .line 751
    :cond_1
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 752
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    .line 753
    const/16 v0, 0x8

    goto :goto_0

    .line 754
    :cond_2
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 755
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    .line 756
    const/16 v0, 0x9

    goto :goto_0

    .line 757
    :cond_3
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 758
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    .line 759
    const/16 v0, 0xa

    goto :goto_0

    .line 760
    :cond_4
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 761
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    .line 762
    const/16 v0, 0xb

    goto :goto_0

    .line 763
    :cond_5
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 764
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    .line 765
    const/16 v0, 0xc

    goto :goto_0

    .line 766
    :cond_6
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 767
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    .line 768
    const/16 v0, 0xd

    goto :goto_0

    .line 769
    :cond_7
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 770
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    .line 771
    const/16 v0, 0xe

    goto :goto_0

    .line 772
    :cond_8
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 773
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    .line 774
    const/16 v0, 0xf

    goto :goto_0

    .line 775
    :cond_9
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 776
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    .line 777
    const/16 v0, 0x10

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x7f080083

    const/16 v10, 0x78

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 666
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v4, :cond_1

    .line 667
    const-string v4, "UnlockSIMLock "

    const-string v5, "[onClick][mCandelButton]+"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    const/16 v5, 0x1f7

    invoke-virtual {v4, v5, v7}, Lcom/android/phone/UnlockSIMLock;->sendVerifyResult(IZ)V

    .line 669
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-virtual {v4}, Lcom/android/phone/UnlockSIMLock;->finish()V

    .line 670
    const-string v4, "UnlockSIMLock "

    const-string v5, "[onClick][mCandelButton]-"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mOk:Landroid/widget/TextView;

    if-ne p1, v4, :cond_2

    .line 674
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v4, v4, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 675
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v5, v5, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/UnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 676
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v5, v5, Lcom/android/phone/UnlockSIMLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lcom/android/phone/UnlockSIMLock;->PwdLength:I

    .line 677
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v4, v4, Lcom/android/phone/UnlockSIMLock;->strPwd:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/phone/UnlockSIMLock;->bStringValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 678
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    # getter for: Lcom/android/phone/UnlockSIMLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/phone/UnlockSIMLock;->access$200(Lcom/android/phone/UnlockSIMLock;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-virtual {v5, v6}, Lcom/android/phone/UnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    :goto_1
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/phone/UnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 722
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v4, v4, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    :cond_2
    const-string v4, "UnlockSIMLock "

    const-string v5, "[onClick][digit]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-direct {p0, p1}, Lcom/android/phone/UnlockSIMLock$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v1

    .line 729
    .local v1, "keyEventCode":I
    if-ltz v1, :cond_0

    .line 730
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v4, v4, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 731
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v5, v5, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/UnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 732
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v5, v5, Lcom/android/phone/UnlockSIMLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lcom/android/phone/UnlockSIMLock;->PwdLength:I

    .line 733
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v4, v4, Lcom/android/phone/UnlockSIMLock;->PwdLength:I

    if-ge v4, v9, :cond_3

    .line 735
    iget v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 736
    .local v3, "strInput":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v4, v4, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 740
    .end local v3    # "strInput":Ljava/lang/String;
    :cond_3
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    goto/16 :goto_0

    .line 680
    .end local v1    # "keyEventCode":I
    :cond_4
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v4, v4, Lcom/android/phone/UnlockSIMLock;->PwdLength:I

    const/4 v5, 0x4

    if-lt v4, v5, :cond_7

    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v4, v4, Lcom/android/phone/UnlockSIMLock;->PwdLength:I

    if-gt v4, v9, :cond_7

    .line 682
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    new-instance v5, Landroid/app/ProgressDialog;

    iget-object v6, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-direct {v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/android/phone/UnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    .line 683
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v4, v4, Lcom/android/phone/UnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    const v6, 0x7f080090

    invoke-virtual {v5, v6}, Lcom/android/phone/UnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 684
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v4, v4, Lcom/android/phone/UnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 685
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v4, v4, Lcom/android/phone/UnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 686
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v4, v4, Lcom/android/phone/UnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 691
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v4, v4, Lcom/android/phone/UnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 700
    const-string v4, "UnlockSIMLock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onClick][mOK][Gemini Card][SetSIMLock]+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v6, v6, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 702
    .local v2, "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v4, v4, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v4, :cond_6

    .line 703
    const-string v4, "UnlockSIMLock "

    const-string v5, "[onClick][mOK][Gemini Card][SetSIMLock][SIM 1]+"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    # getter for: Lcom/android/phone/UnlockSIMLock;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/UnlockSIMLock;->access$100(Lcom/android/phone/UnlockSIMLock;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v4, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 705
    .local v0, "callback":Landroid/os/Message;
    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v5, v5, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IccCard;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 706
    const-string v4, "UnlockSIMLock "

    const-string v5, "[onClick][mOK][Gemini Card][SetSIMLock][SIM 1]-"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    .end local v0    # "callback":Landroid/os/Message;
    :cond_5
    :goto_2
    const-string v4, "UnlockSIMLock "

    const-string v5, "[onClick][mOK][Gemini Card][SetSIMLock]-"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 707
    :cond_6
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v4, v4, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    if-ne v4, v8, :cond_5

    .line 708
    const-string v4, "UnlockSIMLock "

    const-string v5, "[onClick][mOK][Gemini Card][SetSIMLock][SIM 2]+"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    # getter for: Lcom/android/phone/UnlockSIMLock;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/UnlockSIMLock;->access$100(Lcom/android/phone/UnlockSIMLock;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v4, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 710
    .restart local v0    # "callback":Landroid/os/Message;
    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v5, v5, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IccCard;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 711
    const-string v4, "UnlockSIMLock "

    const-string v5, "[onClick][mOK][Gemini Card][SetSIMLock][SIM 2]-"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 718
    .end local v0    # "callback":Landroid/os/Message;
    .end local v2    # "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_7
    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    # getter for: Lcom/android/phone/UnlockSIMLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/phone/UnlockSIMLock;->access$200(Lcom/android/phone/UnlockSIMLock;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-virtual {v5, v6}, Lcom/android/phone/UnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 662
    const/4 v0, 0x0

    return v0
.end method

.method protected showAlertDialog(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 783
    const/16 v1, 0x78

    if-ne p1, v1, :cond_0

    .line 784
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 785
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 800
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 787
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_0
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/android/phone/UnlockSIMLock$TouchInput$1;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockSIMLock$TouchInput$1;-><init>(Lcom/android/phone/UnlockSIMLock$TouchInput;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 785
    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_0
    .end packed-switch
.end method
