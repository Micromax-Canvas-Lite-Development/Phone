.class public Lcom/android/phone/ChangeIccPinScreen;
.super Landroid/app/Activity;
.source "ChangeIccPinScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ChangeIccPinScreen$ChangeIccPinScreenBroadcastReceiver;,
        Lcom/android/phone/ChangeIccPinScreen$EntryState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_PIN_CHANGED:I = 0x64

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/PhoneGlobals"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final NO_ERROR:I = 0x0

.field private static final PIN_INVALID_LENGTH:I = 0x2

.field private static final PIN_MISMATCH:I = 0x1


# instance fields
.field private mBadPinError:Landroid/widget/TextView;

.field private mBadPukError:Landroid/widget/TextView;

.field private mButton:Landroid/widget/Button;

.field private mChangePin2:Z

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mIccPUKPanel:Landroid/widget/LinearLayout;

.field private mMismatchError:Landroid/widget/TextView;

.field private mNewPin1:Landroid/widget/EditText;

.field private mNewPin1Label:Landroid/widget/TextView;

.field private mNewPin2:Landroid/widget/EditText;

.field private mNewPin2Label:Landroid/widget/TextView;

.field private mOldPINPanel:Landroid/widget/LinearLayout;

.field private mOldPin:Landroid/widget/EditText;

.field private mOldPinLabel:Landroid/widget/TextView;

.field private mPUKCode:Landroid/widget/EditText;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinRetryLabel:Landroid/widget/TextView;

.field private mPuk2Label:Landroid/widget/TextView;

.field private mPukRetryLabel:Landroid/widget/TextView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSimId:I

.field private mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    new-instance v0, Lcom/android/phone/ChangeIccPinScreen$ChangeIccPinScreenBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/ChangeIccPinScreen$ChangeIccPinScreenBroadcastReceiver;-><init>(Lcom/android/phone/ChangeIccPinScreen;Lcom/android/phone/ChangeIccPinScreen$1;)V

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    new-instance v0, Lcom/android/phone/ChangeIccPinScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ChangeIccPinScreen$1;-><init>(Lcom/android/phone/ChangeIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    .line 269
    new-instance v0, Lcom/android/phone/ChangeIccPinScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/ChangeIccPinScreen$2;-><init>(Lcom/android/phone/ChangeIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    .line 534
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/ChangeIccPinScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/phone/ChangeIccPinScreen;->handleResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/ChangeIccPinScreen;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/ChangeIccPinScreen;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/phone/ChangeIccPinScreen;->validateNewPin(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/phone/ChangeIccPinScreen;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/ChangeIccPinScreen;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/phone/ChangeIccPinScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/ChangeIccPinScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/ChangeIccPinScreen;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mSimId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/ChangeIccPinScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/ChangeIccPinScreen;)Lcom/android/phone/ChangeIccPinScreen$EntryState;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPukError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    return-object v0
.end method

.method private displayPUKAlert()V
    .locals 3

    .prologue
    .line 422
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802d4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0801c8

    new-instance v2, Lcom/android/phone/ChangeIccPinScreen$3;

    invoke-direct {v2, p0}, Lcom/android/phone/ChangeIccPinScreen$3;-><init>(Lcom/android/phone/ChangeIccPinScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 430
    return-void
.end method

.method private getRetryPin()Ljava/lang/String;
    .locals 5

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPinCount()I

    move-result v0

    .line 456
    .local v0, "retryCount":I
    packed-switch v0, :pswitch_data_0

    .line 462
    :pswitch_0
    const v1, 0x7f080184

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/ChangeIccPinScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 458
    :pswitch_1
    const-string v1, " "

    goto :goto_0

    .line 460
    :pswitch_2
    const v1, 0x7f080183

    invoke-virtual {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getRetryPinCount()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 446
    iget v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 447
    iget-boolean v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm.sim.retry.pin2.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 450
    :goto_0
    return v0

    .line 447
    :cond_0
    const-string v0, "gsm.sim.retry.pin1.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 450
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v0, :cond_2

    const-string v0, "gsm.sim.retry.pin2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v0, "gsm.sim.retry.pin1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getRetryPuk2()Ljava/lang/String;
    .locals 5

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPuk2Count()I

    move-result v0

    .line 475
    .local v0, "retryCount":I
    packed-switch v0, :pswitch_data_0

    .line 481
    :pswitch_0
    const v1, 0x7f080184

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/ChangeIccPinScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 477
    :pswitch_1
    const-string v1, " "

    goto :goto_0

    .line 479
    :pswitch_2
    const v1, 0x7f080183

    invoke-virtual {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 475
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getRetryPuk2Count()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 467
    iget v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 468
    const-string v0, "gsm.sim.retry.puk2.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 470
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.puk2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private handleResult(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v3, 0x0

    .line 368
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 370
    const-string v1, "handleResult: success!"

    invoke-direct {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->log(Ljava/lang/String;)V

    .line 374
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->showConfirmation()V

    .line 376
    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->finish()V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PIN:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    if-ne v1, v2, :cond_5

    .line 382
    const-string v1, "handleResult: pin failed!"

    invoke-direct {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->log(Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 385
    iget-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_2

    const v0, 0x7f0802da

    .line 386
    .local v0, "id":I
    :goto_1
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 387
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPinCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 390
    const-string v1, "handleResult: puk requested!"

    invoke-direct {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->log(Ljava/lang/String;)V

    .line 392
    iget-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_3

    .line 393
    sget-object v1, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    .line 394
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->displayPUKAlert()V

    .line 395
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->showPukPanel()V

    goto :goto_0

    .line 385
    .end local v0    # "id":I
    :cond_2
    const v0, 0x7f0802ca

    goto :goto_1

    .line 397
    .restart local v0    # "id":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->finish()V

    goto :goto_0

    .line 400
    :cond_4
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPinRetryLabel:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 403
    .end local v0    # "id":I
    :cond_5
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    if-ne v1, v2, :cond_0

    .line 406
    const-string v1, "handleResult: puk2 failed!"

    invoke-direct {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->log(Ljava/lang/String;)V

    .line 408
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPuk2Count()I

    move-result v1

    if-nez v1, :cond_6

    .line 409
    const v1, 0x7f080187

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 410
    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->finish()V

    .line 412
    :cond_6
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPukError:Landroid/widget/TextView;

    const v2, 0x7f0802d9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 413
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPukError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPukRetryLabel:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPuk2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 416
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 530
    iget-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_0

    const-string v0, "[ChgPin2]"

    .line 531
    .local v0, "prefix":Ljava/lang/String;
    :goto_0
    const-string v1, "Settings/PhoneGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-void

    .line 530
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_0
    const-string v0, "[ChgPin]"

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 245
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 246
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPukError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    return-void
.end method

.method private resolveIntent()V
    .locals 3

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 240
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pin2"

    iget-boolean v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    .line 241
    const-string v1, "simId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mSimId:I

    .line 242
    return-void
.end method

.method private showConfirmation()V
    .locals 3

    .prologue
    .line 521
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    if-ne v1, v2, :cond_0

    .line 522
    const v0, 0x7f080185

    .line 526
    .local v0, "id":I
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 527
    return-void

    .line 524
    .end local v0    # "id":I
    :cond_0
    iget-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_1

    const v0, 0x7f0802de

    .restart local v0    # "id":I
    :goto_1
    goto :goto_0

    .end local v0    # "id":I
    :cond_1
    const v0, 0x7f0802d3

    goto :goto_1
.end method

.method private showPinPanel()V
    .locals 3

    .prologue
    .line 494
    iget-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_0

    const v0, 0x7f0802a1

    .line 495
    .local v0, "id":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPinRetryLabel:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 498
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPINPanel:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 499
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 500
    return-void

    .line 494
    .end local v0    # "id":I
    :cond_0
    const v0, 0x7f0802c5

    goto :goto_0
.end method

.method private showPukPanel()V
    .locals 2

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080186

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/ChangeIccPinScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPukRetryLabel:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPuk2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPINPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 491
    return-void
.end method

.method private updateScreenPanel()V
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v0, :cond_2

    .line 504
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPinCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 505
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPuk2Count()I

    move-result v0

    if-nez v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->finish()V

    .line 508
    :cond_0
    sget-object v0, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    .line 509
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->showPukPanel()V

    .line 517
    :goto_0
    return-void

    .line 511
    :cond_1
    sget-object v0, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PIN:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    .line 512
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->showPinPanel()V

    goto :goto_0

    .line 515
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->showPinPanel()V

    goto :goto_0
.end method

.method private validateNewPin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "p1"    # Ljava/lang/String;
    .param p2, "p2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 252
    if-nez p1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v1

    .line 256
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 257
    const/4 v1, 0x1

    goto :goto_0

    .line 260
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 262
    .local v0, "len1":I
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 266
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x12

    .line 147
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 151
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->resolveIntent()V

    .line 153
    const v3, 0x7f040010

    invoke-virtual {p0, v3}, Lcom/android/phone/ChangeIccPinScreen;->setContentView(I)V

    .line 157
    const v3, 0x7f0b0066

    invoke-virtual {p0, v3}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPinLabel:Landroid/widget/TextView;

    .line 158
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPinLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 159
    iget-boolean v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v3, :cond_5

    const v1, 0x7f0802d6

    .line 160
    .local v1, "id":I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPinLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 161
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPinLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080188

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 164
    .end local v1    # "id":I
    :cond_0
    const v3, 0x7f0b0067

    invoke-virtual {p0, v3}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mPinRetryLabel:Landroid/widget/TextView;

    .line 165
    const v3, 0x7f0b0065

    invoke-virtual {p0, v3}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPINPanel:Landroid/widget/LinearLayout;

    .line 168
    const v3, 0x7f0b006a

    invoke-virtual {p0, v3}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1Label:Landroid/widget/TextView;

    .line 169
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1Label:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 170
    iget-boolean v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v3, :cond_6

    const v1, 0x7f0802d7

    .line 171
    .restart local v1    # "id":I
    :goto_1
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1Label:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 175
    .end local v1    # "id":I
    :cond_1
    const v3, 0x7f0b006c

    invoke-virtual {p0, v3}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2Label:Landroid/widget/TextView;

    .line 176
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2Label:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 177
    iget-boolean v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v3, :cond_7

    const v1, 0x7f0802d8

    .line 178
    .restart local v1    # "id":I
    :goto_2
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2Label:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 181
    .end local v1    # "id":I
    :cond_2
    const v3, 0x7f0b0061

    invoke-virtual {p0, v3}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mPuk2Label:Landroid/widget/TextView;

    .line 182
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mPuk2Label:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 183
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mPuk2Label:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080189

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 185
    :cond_3
    const v3, 0x7f0b0062

    invoke-virtual {p0, v3}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mPukRetryLabel:Landroid/widget/TextView;

    .line 186
    const v3, 0x7f0b0064

    invoke-virtual {p0, v3}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPukError:Landroid/widget/TextView;

    .line 187
    const v3, 0x7f0b0068

    invoke-virtual {p0, v3}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    .line 188
    const v3, 0x7f0b006b

    invoke-virtual {p0, v3}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    .line 189
    const v3, 0x7f0b006d

    invoke-virtual {p0, v3}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    .line 191
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 192
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 193
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 195
    const v3, 0x7f0b0069

    invoke-virtual {p0, v3}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    .line 196
    const v3, 0x7f0b006e

    invoke-virtual {p0, v3}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    .line 198
    const v3, 0x7f0b006f

    invoke-virtual {p0, v3}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    .line 199
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v3, 0x7f0b005f

    invoke-virtual {p0, v3}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    .line 203
    const v3, 0x7f0b0063

    invoke-virtual {p0, v3}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    .line 204
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 206
    const v3, 0x7f0b0060

    invoke-virtual {p0, v3}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    .line 209
    sget-object v3, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PIN:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    .line 210
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 214
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/phone/ChangeIccPinScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 219
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_4

    .line 221
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 223
    :cond_4
    return-void

    .line 159
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :cond_5
    const v1, 0x7f0802c7

    goto/16 :goto_0

    .line 170
    :cond_6
    const v1, 0x7f0802c8

    goto/16 :goto_1

    .line 177
    :cond_7
    const v1, 0x7f0802c9

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 441
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 442
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/ChangeIccPinScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 443
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 227
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 228
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 235
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 230
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->finish()V

    .line 231
    const/4 v1, 0x1

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 434
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 435
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->updateScreenPanel()V

    .line 436
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->reset()V

    .line 437
    return-void
.end method
