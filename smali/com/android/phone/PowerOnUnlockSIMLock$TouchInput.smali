.class Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;
.super Ljava/lang/Object;
.source "PowerOnUnlockSIMLock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PowerOnUnlockSIMLock;
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

.field final synthetic this$0:Lcom/android/phone/PowerOnUnlockSIMLock;


# direct methods
.method constructor <init>(Lcom/android/phone/PowerOnUnlockSIMLock;)V
    .locals 2

    .prologue
    .line 699
    iput-object p1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 685
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    .line 700
    const v0, 0x7f0b0083

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mZero:Landroid/widget/TextView;

    .line 701
    const v0, 0x7f0b0079

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mOne:Landroid/widget/TextView;

    .line 702
    const v0, 0x7f0b007a

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 703
    const v0, 0x7f0b007b

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mThree:Landroid/widget/TextView;

    .line 704
    const v0, 0x7f0b007c

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mFour:Landroid/widget/TextView;

    .line 705
    const v0, 0x7f0b007d

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mFive:Landroid/widget/TextView;

    .line 706
    const v0, 0x7f0b007e

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mSix:Landroid/widget/TextView;

    .line 707
    const v0, 0x7f0b007f

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 708
    const v0, 0x7f0b0080

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mEight:Landroid/widget/TextView;

    .line 709
    const v0, 0x7f0b0081

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mNine:Landroid/widget/TextView;

    .line 710
    const v0, 0x7f0b0120

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 711
    const v0, 0x7f0b00a9

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mOk:Landroid/widget/TextView;

    .line 713
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 726
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 738
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 739
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 740
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 741
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 742
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 743
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 744
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 745
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 746
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 747
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 748
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 749
    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 914
    const/4 v0, -0x1

    .line 915
    .local v0, "keyEventCode":I
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 916
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    .line 917
    const/4 v0, 0x7

    .line 946
    :cond_0
    :goto_0
    return v0

    .line 918
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 919
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    .line 920
    const/16 v0, 0x8

    goto :goto_0

    .line 921
    :cond_2
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 922
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    .line 923
    const/16 v0, 0x9

    goto :goto_0

    .line 924
    :cond_3
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 925
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    .line 926
    const/16 v0, 0xa

    goto :goto_0

    .line 927
    :cond_4
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 928
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    .line 929
    const/16 v0, 0xb

    goto :goto_0

    .line 930
    :cond_5
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 931
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    .line 932
    const/16 v0, 0xc

    goto :goto_0

    .line 933
    :cond_6
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 934
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    .line 935
    const/16 v0, 0xd

    goto :goto_0

    .line 936
    :cond_7
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 937
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    .line 938
    const/16 v0, 0xe

    goto :goto_0

    .line 939
    :cond_8
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 940
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    .line 941
    const/16 v0, 0xf

    goto :goto_0

    .line 942
    :cond_9
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 943
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    .line 944
    const/16 v0, 0x10

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v13, 0x78

    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 786
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v6, :cond_5

    .line 787
    const-string v6, "PowerOnUnlockSIMLock "

    const-string v7, "[onClick][mCandelButton]+"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const/16 v7, 0x1f7

    invoke-virtual {v6, v7, v9}, Lcom/android/phone/PowerOnUnlockSIMLock;->sendVerifyResult(IZ)V

    .line 790
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v6, :cond_2

    .line 791
    sget-object v6, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aput v9, v6, v9

    .line 792
    const-string v6, "PowerOnUnlockSIMLock "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[changed][arySIMLockStatus]: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aget v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    sget-object v6, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aget v6, v6, v10

    if-ne v6, v11, :cond_1

    .line 794
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const-class v7, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 795
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 796
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "PhoneConstants.GEMINI_SIM_ID_KEY"

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 797
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 798
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v6, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 805
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    # invokes: Lcom/android/phone/PowerOnUnlockSIMLock;->setSimLockScreenDone(II)V
    invoke-static {v6, v9, v11}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$400(Lcom/android/phone/PowerOnUnlockSIMLock;II)V

    .line 806
    new-instance v5, Landroid/content/Intent;

    const-string v6, "action_melock_dismiss"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 807
    .local v5, "t":Landroid/content/Intent;
    const-string v6, "simslot"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 808
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v6, v5}, Lcom/android/phone/PowerOnUnlockSIMLock;->sendBroadcast(Landroid/content/Intent;)V

    .line 809
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v6}, Lcom/android/phone/PowerOnUnlockSIMLock;->finish()V

    .line 909
    .end local v5    # "t":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 802
    :cond_1
    const-string v6, "PowerOnUnlockSIMLock "

    const-string v7, "[Dismiss1]New SIM Detect can be showed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    # invokes: Lcom/android/phone/PowerOnUnlockSIMLock;->notifyToShowNewSimDetected()V
    invoke-static {v6}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$500(Lcom/android/phone/PowerOnUnlockSIMLock;)V

    goto :goto_0

    .line 811
    :cond_2
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-ne v6, v10, :cond_4

    .line 812
    sget-object v6, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aput v9, v6, v10

    .line 813
    const-string v6, "PowerOnUnlockSIMLock "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[changed][arySIMLockStatus]: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aget v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    sget-object v6, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aget v6, v6, v9

    if-ne v6, v11, :cond_3

    .line 815
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const-class v7, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 816
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 817
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v6, "PhoneConstants.GEMINI_SIM_ID_KEY"

    invoke-virtual {v0, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 818
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 819
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v6, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 826
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_2
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    # invokes: Lcom/android/phone/PowerOnUnlockSIMLock;->setSimLockScreenDone(II)V
    invoke-static {v6, v10, v11}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$400(Lcom/android/phone/PowerOnUnlockSIMLock;II)V

    .line 827
    new-instance v5, Landroid/content/Intent;

    const-string v6, "action_melock_dismiss"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 828
    .restart local v5    # "t":Landroid/content/Intent;
    const-string v6, "simslot"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 829
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v6, v5}, Lcom/android/phone/PowerOnUnlockSIMLock;->sendBroadcast(Landroid/content/Intent;)V

    .line 830
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v6}, Lcom/android/phone/PowerOnUnlockSIMLock;->finish()V

    goto/16 :goto_1

    .line 823
    .end local v5    # "t":Landroid/content/Intent;
    :cond_3
    const-string v6, "PowerOnUnlockSIMLock "

    const-string v7, "[Dismiss2]New SIM Detect can be showed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    # invokes: Lcom/android/phone/PowerOnUnlockSIMLock;->notifyToShowNewSimDetected()V
    invoke-static {v6}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$500(Lcom/android/phone/PowerOnUnlockSIMLock;)V

    goto :goto_2

    .line 833
    :cond_4
    const-string v6, "PowerOnUnlockSIMLock "

    const-string v7, "[onClick][mCandelButton]-"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 836
    :cond_5
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mOk:Landroid/widget/TextView;

    if-ne p1, v6, :cond_6

    .line 837
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v6, :cond_6

    .line 838
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v7, v7, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 839
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v7, v7, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iput v7, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->PwdLength:I

    .line 840
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/phone/PowerOnUnlockSIMLock;->bStringValid(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 841
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    # getter for: Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$300(Lcom/android/phone/PowerOnUnlockSIMLock;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const v8, 0x7f080083

    invoke-virtual {v7, v8}, Lcom/android/phone/PowerOnUnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    :goto_3
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 886
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    :cond_6
    const-string v6, "PowerOnUnlockSIMLock "

    const-string v7, "[onClick][digit]"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-direct {p0, p1}, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v3

    .line 893
    .local v3, "keyEventCode":I
    if-ltz v3, :cond_0

    .line 894
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v6, :cond_8

    .line 895
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v7, v7, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 896
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v7, v7, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iput v7, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->PwdLength:I

    .line 897
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->PwdLength:I

    if-ge v6, v12, :cond_7

    .line 898
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v8, v7, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 899
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v6, v3}, Lcom/android/phone/PowerOnUnlockSIMLock;->sendDownUpKeyEvents(I)V

    .line 902
    :cond_7
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v7, v7, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    :cond_8
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    goto/16 :goto_1

    .line 843
    .end local v3    # "keyEventCode":I
    :cond_9
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->PwdLength:I

    const/4 v7, 0x4

    if-lt v6, v7, :cond_c

    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->PwdLength:I

    if-gt v6, v12, :cond_c

    .line 845
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    new-instance v7, Landroid/app/ProgressDialog;

    iget-object v8, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-direct {v7, v8}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v7, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    .line 846
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const v8, 0x7f080090

    invoke-virtual {v7, v8}, Lcom/android/phone/PowerOnUnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 847
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v10}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 848
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 849
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 854
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 863
    const-string v6, "PowerOnUnlockSIMLock "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onClick][mOK][Gemini Card][SetSIMLock]+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v8, v8, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 865
    .local v4, "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v6, :cond_b

    .line 866
    const-string v6, "PowerOnUnlockSIMLock "

    const-string v7, "[onClick][mOK][Gemini Card][SetSIMLock][SIM 1]+"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    # getter for: Lcom/android/phone/PowerOnUnlockSIMLock;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$200(Lcom/android/phone/PowerOnUnlockSIMLock;)Landroid/os/Handler;

    move-result-object v6

    invoke-static {v6, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 868
    .local v1, "callback":Landroid/os/Message;
    invoke-virtual {v4, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v7, v7, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Lcom/android/internal/telephony/IccCard;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 869
    const-string v6, "PowerOnUnlockSIMLock "

    const-string v7, "[onClick][mOK][Gemini Card][SetSIMLock][SIM 1]-"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    .end local v1    # "callback":Landroid/os/Message;
    :cond_a
    :goto_4
    const-string v6, "PowerOnUnlockSIMLock "

    const-string v7, "[onClick][mOK][Gemini Card][SetSIMLock]-"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 870
    :cond_b
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-ne v6, v10, :cond_a

    .line 871
    const-string v6, "PowerOnUnlockSIMLock "

    const-string v7, "[onClick][mOK][Gemini Card][SetSIMLock][SIM 2]+"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    # getter for: Lcom/android/phone/PowerOnUnlockSIMLock;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$200(Lcom/android/phone/PowerOnUnlockSIMLock;)Landroid/os/Handler;

    move-result-object v6

    invoke-static {v6, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 873
    .restart local v1    # "callback":Landroid/os/Message;
    invoke-virtual {v4, v10}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v7, v7, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Lcom/android/internal/telephony/IccCard;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 874
    const-string v6, "PowerOnUnlockSIMLock "

    const-string v7, "[onClick][mOK][Gemini Card][SetSIMLock][SIM 2]-"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 881
    .end local v1    # "callback":Landroid/os/Message;
    .end local v4    # "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_c
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    # getter for: Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$300(Lcom/android/phone/PowerOnUnlockSIMLock;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const v8, 0x7f080083

    invoke-virtual {v7, v8}, Lcom/android/phone/PowerOnUnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 782
    const/4 v0, 0x0

    return v0
.end method

.method protected showAlertDialog(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 950
    const/16 v1, 0x78

    if-ne p1, v1, :cond_0

    .line 951
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 952
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 967
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 954
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_0
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput$1;

    invoke-direct {v3, p0}, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput$1;-><init>(Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 952
    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_0
    .end packed-switch
.end method
