.class public Lcom/android/phone/UnlockPIN2Lock;
.super Landroid/app/Activity;
.source "UnlockPIN2Lock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/UnlockPIN2Lock$TouchInput;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final DIALOG_ENTERNUMBER:I = 0x78

.field private static final DISMISS_LENGTH:I = 0x7

.field private static final DISMISS_SIZE:I = 0xe

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field public static final LOGTAG:Ljava/lang/String; = "UnlockPIN2Lock "

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final MSG1:I = 0x64

.field private static final MSG2:I = 0x66

.field private static final MSG3:I = 0x68

.field private static final MSG4:I = 0x6a

.field public static final START_TYPE:Ljava/lang/String; = "start_type"

.field public static final START_TYPE_REQ:Ljava/lang/String; = "request"

.field public static final START_TYPE_RSP:Ljava/lang/String; = "response"

.field static final VERIFY_RESULT:Ljava/lang/String; = "verfiy_result"

.field static final VERIFY_TYPE:Ljava/lang/String; = "verfiy_type"

.field static final VERIFY_TYPE_PIN:I = 0x1f5

.field static final VERIFY_TYPE_PIN2:I = 0x1f8

.field static final VERIFY_TYPE_PUK:I = 0x1f6

.field static final VERIFY_TYPE_PUK2:I = 0x1f9

.field static final VERIFY_TYPE_SIMMELOCK:I = 0x1f7

.field public static iSIMMEUnlockNo:I

.field private static result:Z

.field public static strPwd:Ljava/lang/String;

.field public static strWrongCode:Ljava/lang/String;


# instance fields
.field public PwdLength:I

.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mDismissButton:Landroid/widget/TextView;

.field private mECCBtnRunnableStarted:Z

.field public mHandler:Landroid/os/Handler;

.field private mHideECCBtnRunnable:Ljava/lang/Runnable;

.field private mIsNoService:[Z

.field public mPwdDisplay:Landroid/widget/TextView;

.field public mPwdLeftChances:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSIMCardNamePadding:I

.field private mUnlockActionNotify:Landroid/widget/TextView;

.field private mUnlockEmptyForSingleCard:Landroid/widget/TextView;

.field private mUnlockForSIMNotify:Landroid/widget/TextView;

.field private mUnlockResultNotify:Landroid/widget/TextView;

.field private mUnlockRetriesNotify:Landroid/widget/TextView;

.field private mUnlockSIMNameNotify:Landroid/widget/TextView;

.field private mbackspace:Landroid/widget/ImageButton;

.field private mbtnEmergencyCall:Landroid/widget/Button;

.field public progressDialog:Landroid/app/ProgressDialog;

.field public retryCount:I

.field public tempstrPwd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    .line 111
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/UnlockPIN2Lock;->result:Z

    .line 124
    sput-object v1, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    .line 151
    sput-object v1, Lcom/android/phone/UnlockPIN2Lock;->strWrongCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    .line 117
    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 118
    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 121
    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    .line 122
    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockEmptyForSingleCard:Landroid/widget/TextView;

    .line 123
    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock;->PwdLength:I

    .line 125
    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->tempstrPwd:Ljava/lang/String;

    .line 126
    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock;->mPwdLeftChances:I

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mIsNoService:[Z

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mECCBtnRunnableStarted:Z

    .line 661
    new-instance v0, Lcom/android/phone/UnlockPIN2Lock$4;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockPIN2Lock$4;-><init>(Lcom/android/phone/UnlockPIN2Lock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mHandler:Landroid/os/Handler;

    .line 923
    new-instance v0, Lcom/android/phone/UnlockPIN2Lock$8;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockPIN2Lock$8;-><init>(Lcom/android/phone/UnlockPIN2Lock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 962
    new-instance v0, Lcom/android/phone/UnlockPIN2Lock$9;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockPIN2Lock$9;-><init>(Lcom/android/phone/UnlockPIN2Lock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mHideECCBtnRunnable:Ljava/lang/Runnable;

    return-void

    .line 155
    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/UnlockPIN2Lock;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPIN2Lock;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockResultNotify:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/UnlockPIN2Lock;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPIN2Lock;
    .param p1, "x1"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/phone/UnlockPIN2Lock;->getRetryPin2Count(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/UnlockPIN2Lock;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPIN2Lock;
    .param p1, "x1"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/phone/UnlockPIN2Lock;->getRetryPuk2Count(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/UnlockPIN2Lock;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPIN2Lock;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mIsNoService:[Z

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/UnlockPIN2Lock;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPIN2Lock;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mHideECCBtnRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/UnlockPIN2Lock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPIN2Lock;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mECCBtnRunnableStarted:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/UnlockPIN2Lock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/UnlockPIN2Lock;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/phone/UnlockPIN2Lock;->mECCBtnRunnableStarted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/UnlockPIN2Lock;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPIN2Lock;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mbtnEmergencyCall:Landroid/widget/Button;

    return-object v0
.end method

.method public static bCharNumber(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1000
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1001
    const/4 v0, 0x1

    .line 1003
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bStringValid(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1009
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1010
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/phone/UnlockPIN2Lock;->bCharNumber(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1011
    const/4 v1, 0x0

    .line 1014
    :goto_1
    return v1

    .line 1009
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1014
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getRetryPin2Count(I)I
    .locals 2
    .param p1, "simId"    # I

    .prologue
    const/4 v1, -0x1

    .line 906
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 907
    const-string v0, "gsm.sim.retry.pin2.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 909
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.pin2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getRetryPuk2Count(I)I
    .locals 2
    .param p1, "simId"    # I

    .prologue
    const/4 v1, -0x1

    .line 900
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 901
    const-string v0, "gsm.sim.retry.puk2.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 903
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.puk2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private unlockPIN2(Ljava/lang/String;)V
    .locals 6
    .param p1, "strPwd"    # Ljava/lang/String;

    .prologue
    .line 791
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 792
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->getRetryPin2Count(I)I

    move-result v2

    .line 793
    .local v2, "retryCount":I
    if-lez v2, :cond_0

    .line 795
    const-string v3, "UnlockPIN2Lock "

    const-string v4, "[unlockPIN][new Thread][Start]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const-string v3, "UnlockPIN2Lock "

    const-string v4, "[unlockPIN][new Thread][Run]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const-string v3, "UnlockPIN2Lock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[unlockPIN][new Thread][TogetResult][strPwd]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 800
    .local v0, "callback_query":Landroid/os/Message;
    new-instance v3, Lcom/android/phone/UnlockPIN2Lock$5;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/android/phone/UnlockPIN2Lock$5;-><init>(Lcom/android/phone/UnlockPIN2Lock;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {v3}, Lcom/android/phone/UnlockPIN2Lock$5;->start()V

    .line 806
    const-string v3, "UnlockPIN2Lock "

    const-string v4, "[unlockPIN][new Thread][Finsish]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    .end local v0    # "callback_query":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public getOptrDrawableBySlotId(J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "Slot"    # J

    .prologue
    const/4 v1, 0x0

    .line 987
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 988
    long-to-int v2, p1

    invoke-static {p0, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 989
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    const-string v2, "UnlockPIN2Lock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getOptrDrawableBySlotId][info]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    if-eqz v0, :cond_0

    .line 991
    invoke-virtual {p0}, Lcom/android/phone/UnlockPIN2Lock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundDarkRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 995
    .end local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_0
    return-object v1
.end method

.method public getOptrNameBySlotId(J)Ljava/lang/String;
    .locals 4
    .param p1, "Slot"    # J

    .prologue
    .line 971
    const-string v1, "UnlockPIN2Lock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getOptrNameBySlotId][Slot]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    long-to-int v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 973
    long-to-int v1, p1

    invoke-static {p0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 974
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    const-string v1, "UnlockPIN2Lock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getOptrNameBySlotId][info]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 976
    const-string v1, "UnlockPIN2Lock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getOptrNameBySlotId][OptrName]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 982
    .end local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 979
    .restart local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/UnlockPIN2Lock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 982
    .end local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/UnlockPIN2Lock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/android/phone/UnlockPIN2Lock;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 641
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 642
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f080082

    const/high16 v9, 0x20000

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 159
    const-string v3, "UnlockPIN2Lock "

    const-string v4, "[onCreate]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0, v6}, Lcom/android/phone/UnlockPIN2Lock;->requestWindowFeature(I)Z

    .line 163
    const v3, 0x7f040046

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->setContentView(I)V

    .line 168
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 171
    invoke-virtual {p0}, Lcom/android/phone/UnlockPIN2Lock;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 172
    .local v2, "win":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 173
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, -0x80000000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 174
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 176
    const v3, 0x7f0b0127

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/UnlockPIN2Lock;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2020044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    const v3, 0x7f0b0127

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    .line 178
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 183
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/phone/UnlockPIN2Lock;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 188
    const v3, 0x7f0b0128

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mbackspace:Landroid/widget/ImageButton;

    .line 189
    const v3, 0x7f0b0121

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mbtnEmergencyCall:Landroid/widget/Button;

    .line 190
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/UnlockPIN2Lock;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080081

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mIsNoService:[Z

    iget-object v4, p0, Lcom/android/phone/UnlockPIN2Lock;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4, v7}, Lcom/android/phone/PhoneGlobals;->isCurrentlyNoService(I)Z

    move-result v4

    aput-boolean v4, v3, v7

    .line 193
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mIsNoService:[Z

    iget-object v4, p0, Lcom/android/phone/UnlockPIN2Lock;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4, v6}, Lcom/android/phone/PhoneGlobals;->isCurrentlyNoService(I)Z

    move-result v4

    aput-boolean v4, v3, v6

    .line 194
    const-string v3, "UnlockPIN2Lock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mApp.isCurrentlyNoService(0) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock;->mIsNoService:[Z

    aget-boolean v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v3, "UnlockPIN2Lock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mApp.isCurrentlyNoService(1) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock;->mIsNoService:[Z

    aget-boolean v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mIsNoService:[Z

    aget-boolean v3, v3, v7

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mIsNoService:[Z

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_0

    .line 197
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mbtnEmergencyCall:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/UnlockPIN2Lock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20b001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mSIMCardNamePadding:I

    .line 202
    invoke-virtual {p0}, Lcom/android/phone/UnlockPIN2Lock;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 203
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 204
    const-string v3, "UnlockPIN2Lock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onCreate][iSIMMEUnlockNo]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v3, "PhoneConstants.GEMINI_SIM_ID_KEY"

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    .line 206
    const-string v3, "PINLEFTRETRIES"

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    .line 207
    const-string v3, "WRONGCODE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/phone/UnlockPIN2Lock;->strWrongCode:Ljava/lang/String;

    .line 209
    :cond_1
    const v3, 0x7f0b0129

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 211
    new-instance v3, Lcom/android/phone/UnlockPIN2Lock$TouchInput;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockPIN2Lock$TouchInput;-><init>(Lcom/android/phone/UnlockPIN2Lock;)V

    .line 213
    :cond_2
    const v3, 0x7f0b0120

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mDismissButton:Landroid/widget/TextView;

    .line 215
    const v3, 0x7f0b0122

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockResultNotify:Landroid/widget/TextView;

    .line 216
    sget-object v3, Lcom/android/phone/UnlockPIN2Lock;->strWrongCode:Ljava/lang/String;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/phone/UnlockPIN2Lock;->strWrongCode:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/phone/UnlockPIN2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 217
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockResultNotify:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/android/phone/UnlockPIN2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_3
    const v3, 0x7f0b0123

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockActionNotify:Landroid/widget/TextView;

    .line 220
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockActionNotify:Landroid/widget/TextView;

    const v4, 0x7f080087

    invoke-virtual {p0, v4}, Lcom/android/phone/UnlockPIN2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    const v3, 0x7f0b0124

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    .line 225
    const v3, 0x7f0b012d

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 226
    const v3, 0x7f0b012f

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 237
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mbackspace:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/phone/UnlockPIN2Lock$1;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPIN2Lock$1;-><init>(Lcom/android/phone/UnlockPIN2Lock;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mbackspace:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/phone/UnlockPIN2Lock$2;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPIN2Lock$2;-><init>(Lcom/android/phone/UnlockPIN2Lock;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 263
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mbtnEmergencyCall:Landroid/widget/Button;

    new-instance v4, Lcom/android/phone/UnlockPIN2Lock$3;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPIN2Lock$3;-><init>(Lcom/android/phone/UnlockPIN2Lock;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    const-string v3, "UnlockPIN2Lock "

    const-string v4, "[unlock][onCreate]-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 310
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 311
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 648
    const-string v0, "UnlockPIN2Lock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onKeyDown][Pressed invalid Key][keyCode()]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    sparse-switch p1, :sswitch_data_0

    .line 657
    const-string v0, "UnlockPIN2Lock "

    const-string v1, "[onKey][Pressed invalid Key]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 654
    :sswitch_0
    const-string v0, "UnlockPIN2Lock "

    const-string v1, "[onKeyDown][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v0, 0x1

    goto :goto_0

    .line 649
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 914
    const-string v0, "UnlockPIN2Lock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onKeyLongPress][Long Pressed invalid Key][keyCode()]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 916
    const-string v0, "UnlockPIN2Lock "

    const-string v1, "[onKeyLongPress][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v0, 0x1

    .line 919
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/UnlockPIN2Lock;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 317
    const/16 v0, 0x1f8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/UnlockPIN2Lock;->sendVerifyResult(IZ)V

    .line 318
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 319
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const v6, 0x7f08007c

    const/4 v5, 0x0

    .line 327
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 328
    const-string v2, "UnlockPIN2Lock "

    const-string v3, "[onResume]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockPIN2Lock;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 332
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/phone/UnlockPIN2Lock;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 349
    const-string v2, "UnlockPIN2Lock "

    const-string v3, "[onResume][GEMINI Card]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sget v2, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    if-nez v2, :cond_0

    .line 352
    const-string v2, "UnlockPIN2Lock "

    const-string v3, "[onResume][GEMINI Card][SIM1]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-direct {p0, v5}, Lcom/android/phone/UnlockPIN2Lock;->getRetryPin2Count(I)I

    move-result v1

    .line 355
    .local v1, "retryCount":I
    const-string v2, "UnlockPIN2Lock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onResume][GEMINI Card][SIM1][PIN Retries Left] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v6}, Lcom/android/phone/UnlockPIN2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    :goto_0
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    sget v3, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/UnlockPIN2Lock;->getOptrNameBySlotId(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    sget v3, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/UnlockPIN2Lock;->getOptrDrawableBySlotId(J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 374
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mSIMCardNamePadding:I

    iget v4, p0, Lcom/android/phone/UnlockPIN2Lock;->mSIMCardNamePadding:I

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 376
    return-void

    .line 361
    .end local v1    # "retryCount":I
    :cond_0
    const-string v2, "UnlockPIN2Lock "

    const-string v3, "[onResume][GEMINI Card][SIM2]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/phone/UnlockPIN2Lock;->getRetryPin2Count(I)I

    move-result v1

    .line 364
    .restart local v1    # "retryCount":I
    const-string v2, "UnlockPIN2Lock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onResume][GEMINI Card][SIM2][PIN Retries Left] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v6}, Lcom/android/phone/UnlockPIN2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 300
    return-void
.end method

.method public sendVerifyResult(IZ)V
    .locals 4
    .param p1, "verifyType"    # I
    .param p2, "bRet"    # Z

    .prologue
    .line 882
    const-string v1, "UnlockPIN2Lock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendVerifyResult verifyType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bRet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 888
    .local v0, "retIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 889
    const-string v1, "UnlockPIN2Lock "

    const-string v2, "sendVerifyResult new retIntent failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :goto_0
    return-void

    .line 892
    :cond_0
    const-string v1, "verfiy_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 894
    const-string v1, "verfiy_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 896
    invoke-virtual {p0, v0}, Lcom/android/phone/UnlockPIN2Lock;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public unlockPIN2(ILjava/lang/String;)V
    .locals 7
    .param p1, "simId"    # I
    .param p2, "strPwd"    # Ljava/lang/String;

    .prologue
    .line 814
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 815
    .local v2, "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    if-nez p1, :cond_1

    .line 817
    const-string v4, "UnlockPIN2Lock "

    const-string v5, "[unlockPIN][Gemini Card][SIM1]+"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/phone/UnlockPIN2Lock;->getRetryPin2Count(I)I

    move-result v3

    .line 819
    .local v3, "retryCount":I
    const-string v4, "UnlockPIN2Lock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[unlockPIN][Gemini Card][SIM1][PIN_REQUIRED][retryCount] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    if-lez v3, :cond_0

    .line 822
    const-string v4, "UnlockPIN2Lock "

    const-string v5, "[unlockPIN][Gemini Card][SIM1][new Thread][Start]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const-string v4, "UnlockPIN2Lock "

    const-string v5, "[unlockPIN][Gemini Card][SIM1][new Thread][Run]+"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const-string v4, "UnlockPIN2Lock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[unlockPIN][Gemini Card][SIM1][TogetResult][strPwd]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v4, p0, Lcom/android/phone/UnlockPIN2Lock;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x68

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 828
    .local v0, "callback_query2":Landroid/os/Message;
    new-instance v4, Lcom/android/phone/UnlockPIN2Lock$6;

    invoke-direct {v4, p0, v2, p2, v0}, Lcom/android/phone/UnlockPIN2Lock$6;-><init>(Lcom/android/phone/UnlockPIN2Lock;Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {v4}, Lcom/android/phone/UnlockPIN2Lock$6;->start()V

    .line 834
    const-string v4, "UnlockPIN2Lock "

    const-string v5, "[unlockPIN][Gemini Card][SIM1][new Thread][Finsish]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    .end local v0    # "callback_query2":Landroid/os/Message;
    :cond_0
    const-string v4, "UnlockPIN2Lock "

    const-string v5, "[unlockPIN][Gemini Card][SIM1]-"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :goto_0
    return-void

    .line 842
    .end local v3    # "retryCount":I
    :cond_1
    const-string v4, "UnlockPIN2Lock "

    const-string v5, "[unlockPIN][Gemini Card][SIM2]+"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/phone/UnlockPIN2Lock;->getRetryPin2Count(I)I

    move-result v3

    .line 844
    .restart local v3    # "retryCount":I
    const-string v4, "UnlockPIN2Lock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[unlockPIN][Gemini Card][SIM2][PIN_REQUIRED][retryCount] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    if-lez v3, :cond_2

    .line 847
    const-string v4, "UnlockPIN2Lock "

    const-string v5, "[unlockPIN][Gemini Card][SIM2][new Thread][Start]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const-string v4, "UnlockPIN2Lock "

    const-string v5, "[unlockPIN][Gemini Card][SIM2][new Thread][Run]+"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const-string v4, "UnlockPIN2Lock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[unlockPIN][Gemini Card][SIM2][TogetResult][strPwd]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v4, p0, Lcom/android/phone/UnlockPIN2Lock;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x6a

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 852
    .local v1, "callback_query3":Landroid/os/Message;
    new-instance v4, Lcom/android/phone/UnlockPIN2Lock$7;

    invoke-direct {v4, p0, v2, p2, v1}, Lcom/android/phone/UnlockPIN2Lock$7;-><init>(Lcom/android/phone/UnlockPIN2Lock;Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {v4}, Lcom/android/phone/UnlockPIN2Lock$7;->start()V

    .line 859
    const-string v4, "UnlockPIN2Lock "

    const-string v5, "[unlockPIN][Gemini Card][SIM2][new Thread][Finsish]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    .end local v1    # "callback_query3":Landroid/os/Message;
    :cond_2
    const-string v4, "UnlockPIN2Lock "

    const-string v5, "[Gemini Card][SetSIMLock][SIM 2]-"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 1019
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 1021
    .local v0, "newState":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1023
    const v1, 0x7f080091

    invoke-virtual {p0, v1}, Lcom/android/phone/UnlockPIN2Lock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    :goto_0
    return-void

    .line 1025
    :cond_0
    const v1, 0x7f080081

    invoke-virtual {p0, v1}, Lcom/android/phone/UnlockPIN2Lock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
