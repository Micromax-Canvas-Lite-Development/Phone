.class public Lcom/android/phone/EnableFdnScreen;
.super Landroid/app/Activity;
.source "EnableFdnScreen.java"


# static fields
.field private static final DBG:Z = false

.field private static final ENABLE_FDN_COMPLETE:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/PhoneGlobals"


# instance fields
.field private mClicked:Landroid/view/View$OnClickListener;

.field private mEnable:Z

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin2Field:Landroid/widget/EditText;

.field private mPinFieldContainer:Landroid/widget/LinearLayout;

.field private mStatusField:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    new-instance v0, Lcom/android/phone/EnableFdnScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EnableFdnScreen$1;-><init>(Lcom/android/phone/EnableFdnScreen;)V

    iput-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mHandler:Landroid/os/Handler;

    .line 190
    new-instance v0, Lcom/android/phone/EnableFdnScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/EnableFdnScreen$3;-><init>(Lcom/android/phone/EnableFdnScreen;)V

    iput-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EnableFdnScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/EnableFdnScreen;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/phone/EnableFdnScreen;->handleResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/EnableFdnScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/EnableFdnScreen;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mPin2Field:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/EnableFdnScreen;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/EnableFdnScreen;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/phone/EnableFdnScreen;->showStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/EnableFdnScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/EnableFdnScreen;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/phone/EnableFdnScreen;->enableFdn()V

    return-void
.end method

.method private enableFdn()V
    .locals 4

    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/phone/EnableFdnScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 166
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/EnableFdnScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/EnableFdnScreen;->mEnable:Z

    invoke-direct {p0}, Lcom/android/phone/EnableFdnScreen;->getPin2()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 168
    return-void
.end method

.method private getPin2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mPin2Field:Landroid/widget/EditText;

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
    .line 171
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/android/phone/EnableFdnScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/phone/EnableFdnScreen;->mEnable:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0802a2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EnableFdnScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 183
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EnableFdnScreen$2;

    invoke-direct {v1, p0}, Lcom/android/phone/EnableFdnScreen$2;-><init>(Lcom/android/phone/EnableFdnScreen;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    return-void

    .line 173
    :cond_1
    const v0, 0x7f0802a3

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/phone/EnableFdnScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0802d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EnableFdnScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 204
    const-string v0, "Settings/PhoneGlobals"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EnableSimPin] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 140
    const v0, 0x7f0b009c

    invoke-virtual {p0, v0}, Lcom/android/phone/EnableFdnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mPin2Field:Landroid/widget/EditText;

    .line 141
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mPin2Field:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 143
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mPin2Field:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EnableFdnScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v0, 0x7f0b0091

    invoke-virtual {p0, v0}, Lcom/android/phone/EnableFdnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    .line 146
    const v0, 0x7f0b009d

    invoke-virtual {p0, v0}, Lcom/android/phone/EnableFdnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mStatusField:Landroid/widget/TextView;

    .line 147
    return-void
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "statusMsg"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 150
    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mStatusField:Landroid/widget/TextView;

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
    const v2, 0x7f04001b

    invoke-virtual {p0, v2}, Lcom/android/phone/EnableFdnScreen;->setContentView(I)V

    .line 106
    invoke-direct {p0}, Lcom/android/phone/EnableFdnScreen;->setupView()V

    .line 108
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EnableFdnScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 109
    iget-object v2, p0, Lcom/android/phone/EnableFdnScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/phone/EnableFdnScreen;->mEnable:Z

    .line 111
    iget-boolean v2, p0, Lcom/android/phone/EnableFdnScreen;->mEnable:Z

    if-eqz v2, :cond_2

    const v1, 0x7f08029f

    .line 112
    .local v1, "id":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/EnableFdnScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/EnableFdnScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/phone/EnableFdnScreen;->getActionBar()Landroid/app/ActionBar;

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
    const v1, 0x7f0802a0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 128
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 129
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 131
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/EnableFdnScreen;->finish()V

    .line 132
    const/4 v1, 0x1

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 123
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 124
    return-void
.end method
