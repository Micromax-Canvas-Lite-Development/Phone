.class public Lcom/mediatek/phone/UssdAlertActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UssdAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UssdAlertActivity"

.field private static final TAG:Ljava/lang/String; = "UssdAlertActivity"

.field public static final USSD_DIALOG_NOTIFICATION:I = 0x2

.field public static final USSD_DIALOG_REQUEST:I = 0x1

.field public static final USSD_MESSAGE_EXTRA:Ljava/lang/String; = "ussd_message"

.field public static final USSD_SLOT_ID:Ljava/lang/String; = "slot_id"

.field public static final USSD_TYPE_EXTRA:Ljava/lang/String; = "ussd_type"


# instance fields
.field private mInputText:Landroid/widget/EditText;

.field private mIsClick:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMsg:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSlotId:I

.field private mText:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/phone/UssdAlertActivity;->mType:I

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/phone/UssdAlertActivity;)Lcom/android/internal/app/AlertController;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/UssdAlertActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/phone/UssdAlertActivity;)Lcom/android/internal/app/AlertController;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/UssdAlertActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/phone/UssdAlertActivity;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/UssdAlertActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/phone/UssdAlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/phone/UssdAlertActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/UssdAlertActivity;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private createView()Landroid/view/View;
    .locals 4

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/mediatek/phone/UssdAlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040013

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, "dialogView":Landroid/view/View;
    const v1, 0x7f0b0075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mMsg:Landroid/widget/TextView;

    .line 114
    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mInputText:Landroid/widget/EditText;

    .line 116
    iget-object v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mMsg:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mMsg:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mediatek/phone/UssdAlertActivity;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_0
    iget v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 121
    iget-object v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mInputText:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 124
    :cond_1
    return-object v0
.end method

.method private sendUssd()V
    .locals 3

    .prologue
    .line 148
    const-string v0, "UssdAlertActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUssd sendUssdResponseGemini button, simId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/phone/UssdAlertActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v0, "UssdAlertActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUssd USSR string :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/UssdAlertActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/mediatek/phone/UssdAlertActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/phone/UssdAlertActivity;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendUssdResponseGemini(Ljava/lang/String;I)V

    .line 156
    return-void
.end method


# virtual methods
.method public getmAlertOnlyForTest()Lcom/android/internal/app/AlertController;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method public getmInputTextOnlyForTest()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mediatek/phone/UssdAlertActivity;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getmTypeOnlyForTest()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/mediatek/phone/UssdAlertActivity;->mType:I

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 128
    iput-boolean v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mIsClick:Z

    .line 129
    packed-switch p2, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget v0, p0, Lcom/mediatek/phone/UssdAlertActivity;->mType:I

    if-ne v0, v1, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/mediatek/phone/UssdAlertActivity;->sendUssd()V

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/phone/UssdAlertActivity;->finish()V

    goto :goto_0

    .line 138
    :pswitch_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->cancelUssdDialog()V

    .line 139
    invoke-virtual {p0}, Lcom/mediatek/phone/UssdAlertActivity;->finish()V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 51
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    iget-object v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 56
    .local v1, "p":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v2, p0, Lcom/mediatek/phone/UssdAlertActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 57
    invoke-virtual {p0}, Lcom/mediatek/phone/UssdAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "ussd_message"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/phone/UssdAlertActivity;->mText:Ljava/lang/String;

    .line 59
    const-string v2, "ussd_type"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/phone/UssdAlertActivity;->mType:I

    .line 60
    const-string v2, "slot_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/phone/UssdAlertActivity;->mSlotId:I

    .line 64
    invoke-direct {p0}, Lcom/mediatek/phone/UssdAlertActivity;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 65
    iget v2, p0, Lcom/mediatek/phone/UssdAlertActivity;->mType:I

    if-ne v2, v4, :cond_0

    .line 66
    const v2, 0x7f0801d4

    invoke-virtual {p0, v2}, Lcom/mediatek/phone/UssdAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 67
    const v2, 0x7f0801cc

    invoke-virtual {p0, v2}, Lcom/mediatek/phone/UssdAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 72
    :goto_0
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 75
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/phone/UssdAlertActivity;->playUSSDTone(Landroid/content/Context;)V

    .line 76
    sput-object p0, Lcom/android/phone/PhoneUtils;->mUssdActivity:Lcom/mediatek/phone/UssdAlertActivity;

    .line 77
    invoke-virtual {p0}, Lcom/mediatek/phone/UssdAlertActivity;->setupAlert()V

    .line 78
    return-void

    .line 69
    :cond_0
    const v2, 0x7f0801c8

    invoke-virtual {p0, v2}, Lcom/mediatek/phone/UssdAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 232
    const-string v0, "UssdAlertActivity"

    const-string v1, "onDestroy."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-boolean v0, p0, Lcom/mediatek/phone/UssdAlertActivity;->mIsClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mediatek/phone/UssdAlertActivity;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 234
    invoke-static {}, Lcom/android/phone/PhoneUtils;->cancelUssdDialog()V

    .line 235
    const-string v0, "UssdAlertActivity"

    const-string v1, "onDestroy: cancel the request dialog."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 238
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 160
    const-string v0, "UssdAlertActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0}, Lcom/mediatek/phone/UssdAlertActivity;->finish()V

    .line 163
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/UssdAlertActivity;->playUSSDTone(Landroid/content/Context;)V

    .line 164
    invoke-virtual {p0, p1}, Lcom/mediatek/phone/UssdAlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 165
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 81
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 82
    iget v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mType:I

    if-ne v1, v4, :cond_0

    .line 83
    iget-object v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 90
    :goto_0
    iput-boolean v3, p0, Lcom/mediatek/phone/UssdAlertActivity;->mIsClick:Z

    .line 92
    iget-object v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mInputText:Landroid/widget/EditText;

    new-instance v2, Lcom/mediatek/phone/UssdAlertActivity$1;

    invoke-direct {v2, p0}, Lcom/mediatek/phone/UssdAlertActivity$1;-><init>(Lcom/mediatek/phone/UssdAlertActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 87
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public playUSSDTone(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/mediatek/phone/UssdAlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 170
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 171
    .local v1, "ringerMode":I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 173
    :cond_0
    const-string v2, "UssdAlertActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ringerMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", do not play USSD tone..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_0
    return-void

    .line 178
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mediatek/phone/UssdAlertActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/mediatek/phone/UssdAlertActivity$2;-><init>(Lcom/mediatek/phone/UssdAlertActivity;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setMediaListener(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 202
    new-instance v0, Lcom/mediatek/phone/UssdAlertActivity$3;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/UssdAlertActivity$3;-><init>(Lcom/mediatek/phone/UssdAlertActivity;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 208
    return-void
.end method
