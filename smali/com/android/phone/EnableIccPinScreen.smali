.class public Lcom/android/phone/EnableIccPinScreen;
.super Landroid/app/Activity;
.source "EnableIccPinScreen.java"


# static fields
.field private static final DBG:Z = false

.field private static final ENABLE_ICC_PIN_COMPLETE:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/PhoneGlobals"


# instance fields
.field private mClicked:Landroid/view/View$OnClickListener;

.field private mEnable:Z

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinField:Landroid/widget/EditText;

.field private mPinFieldContainer:Landroid/widget/LinearLayout;

.field private mStatusField:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    new-instance v0, Lcom/android/phone/EnableIccPinScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EnableIccPinScreen$1;-><init>(Lcom/android/phone/EnableIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mHandler:Landroid/os/Handler;

    .line 185
    new-instance v0, Lcom/android/phone/EnableIccPinScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/EnableIccPinScreen$3;-><init>(Lcom/android/phone/EnableIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EnableIccPinScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/EnableIccPinScreen;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/phone/EnableIccPinScreen;->handleResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/EnableIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/EnableIccPinScreen;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/EnableIccPinScreen;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/EnableIccPinScreen;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/phone/EnableIccPinScreen;->showStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/EnableIccPinScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/EnableIccPinScreen;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/phone/EnableIccPinScreen;->enableIccPin()V

    return-void
.end method

.method private enableIccPin()V
    .locals 4

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/phone/EnableIccPinScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 161
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/EnableIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/EnableIccPinScreen;->mEnable:Z

    invoke-direct {p0}, Lcom/android/phone/EnableIccPinScreen;->getPin()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 163
    return-void
.end method

.method private getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleResult(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 166
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 168
    invoke-virtual {p0}, Lcom/android/phone/EnableIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/phone/EnableIccPinScreen;->mEnable:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0802d0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EnableIccPinScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 178
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EnableIccPinScreen$2;

    invoke-direct {v1, p0}, Lcom/android/phone/EnableIccPinScreen$2;-><init>(Lcom/android/phone/EnableIccPinScreen;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    return-void

    .line 168
    :cond_1
    const v0, 0x7f0802d1

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/phone/EnableIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0802d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EnableIccPinScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 199
    const-string v0, "Settings/PhoneGlobals"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EnableIccPin] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 134
    const v0, 0x7f0b009c

    invoke-virtual {p0, v0}, Lcom/android/phone/EnableIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    .line 135
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 136
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 137
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EnableIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v0, 0x7f0b0091

    invoke-virtual {p0, v0}, Lcom/android/phone/EnableIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    .line 140
    const v0, 0x7f0b009d

    invoke-virtual {p0, v0}, Lcom/android/phone/EnableIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mStatusField:Landroid/widget/TextView;

    .line 141
    return-void
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "statusMsg"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 144
    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v2, 0x7f04001c

    invoke-virtual {p0, v2}, Lcom/android/phone/EnableIccPinScreen;->setContentView(I)V

    .line 106
    invoke-direct {p0}, Lcom/android/phone/EnableIccPinScreen;->setupView()V

    .line 108
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EnableIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 109
    iget-object v2, p0, Lcom/android/phone/EnableIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/phone/EnableIccPinScreen;->mEnable:Z

    .line 111
    iget-boolean v2, p0, Lcom/android/phone/EnableIccPinScreen;->mEnable:Z

    if-eqz v2, :cond_2

    const v1, 0x7f0802ce

    .line 112
    .local v1, "id":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/EnableIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/EnableIccPinScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/phone/EnableIccPinScreen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 114
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 118
    :cond_0
    return-void

    .line 109
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v1    # "id":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 111
    :cond_2
    const v1, 0x7f0802cd

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 123
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 125
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/EnableIccPinScreen;->finish()V

    .line 126
    const/4 v1, 0x1

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
