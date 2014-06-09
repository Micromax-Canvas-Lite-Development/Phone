.class public Lcom/android/phone/UnlockPINLock;
.super Landroid/app/Activity;
.source "UnlockPINLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/UnlockPINLock$TouchInput;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final DIALOG_ENTERNUMBER:I = 0x78

.field private static final DISMISS_LENGTH:I = 0x7

.field private static final DISMISS_SIZE:I = 0xe

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field public static final LOGTAG:Ljava/lang/String; = "UnlockPINLock "

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

.field private mStatusBarManager:Landroid/app/StatusBarManager;

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

    .line 111
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/UnlockPINLock;->iSIMMEUnlockNo:I

    .line 115
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/UnlockPINLock;->result:Z

    .line 128
    sput-object v1, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    .line 156
    sput-object v1, Lcom/android/phone/UnlockPINLock;->strWrongCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 112
    iput v1, p0, Lcom/android/phone/UnlockPINLock;->retryCount:I

    .line 121
    iput-object v0, p0, Lcom/android/phone/UnlockPINLock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 122
    iput-object v0, p0, Lcom/android/phone/UnlockPINLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 125
    iput-object v0, p0, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    .line 126
    iput-object v0, p0, Lcom/android/phone/UnlockPINLock;->mUnlockEmptyForSingleCard:Landroid/widget/TextView;

    .line 127
    iput v1, p0, Lcom/android/phone/UnlockPINLock;->PwdLength:I

    .line 129
    iput-object v0, p0, Lcom/android/phone/UnlockPINLock;->tempstrPwd:Ljava/lang/String;

    .line 130
    iput v1, p0, Lcom/android/phone/UnlockPINLock;->mPwdLeftChances:I

    .line 162
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock;->mIsNoService:[Z

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/UnlockPINLock;->mECCBtnRunnableStarted:Z

    .line 722
    new-instance v0, Lcom/android/phone/UnlockPINLock$4;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockPINLock$4;-><init>(Lcom/android/phone/UnlockPINLock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock;->mHandler:Landroid/os/Handler;

    .line 1034
    new-instance v0, Lcom/android/phone/UnlockPINLock$8;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockPINLock$8;-><init>(Lcom/android/phone/UnlockPINLock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1075
    new-instance v0, Lcom/android/phone/UnlockPINLock$9;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockPINLock$9;-><init>(Lcom/android/phone/UnlockPINLock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock;->mHideECCBtnRunnable:Ljava/lang/Runnable;

    return-void

    .line 162
    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/UnlockPINLock;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPINLock;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock;->mUnlockResultNotify:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/android/phone/UnlockPINLock;->result:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 105
    sput-boolean p0, Lcom/android/phone/UnlockPINLock;->result:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/phone/UnlockPINLock;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPINLock;
    .param p1, "x1"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/phone/UnlockPINLock;->getRetryPinCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/UnlockPINLock;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPINLock;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock;->mIsNoService:[Z

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/UnlockPINLock;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPINLock;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock;->mHideECCBtnRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/UnlockPINLock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPINLock;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/phone/UnlockPINLock;->mECCBtnRunnableStarted:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/UnlockPINLock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/UnlockPINLock;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/phone/UnlockPINLock;->mECCBtnRunnableStarted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/UnlockPINLock;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPINLock;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock;->mbtnEmergencyCall:Landroid/widget/Button;

    return-object v0
.end method

.method public static bCharNumber(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1112
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1113
    const/4 v0, 0x1

    .line 1115
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
    .line 1121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1122
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/phone/UnlockPINLock;->bCharNumber(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1123
    const/4 v1, 0x0

    .line 1126
    :goto_1
    return v1

    .line 1121
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1126
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getRetryPinCount(I)I
    .locals 2
    .param p1, "simId"    # I

    .prologue
    const/4 v1, -0x1

    .line 1018
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1019
    const-string v0, "gsm.sim.retry.pin1.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1021
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.pin1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getRetryPukCount(I)I
    .locals 2
    .param p1, "simId"    # I

    .prologue
    const/4 v1, -0x1

    .line 1012
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1013
    const-string v0, "gsm.sim.retry.puk1.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1015
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.puk1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private unlockPIN(Ljava/lang/String;)V
    .locals 4
    .param p1, "strPwd"    # Ljava/lang/String;

    .prologue
    .line 859
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 860
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_0

    .line 862
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/phone/UnlockPINLock;->getRetryPinCount(I)I

    move-result v1

    .line 863
    .local v1, "retryCount":I
    if-lez v1, :cond_0

    .line 865
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][new Thread][Start]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    new-instance v2, Lcom/android/phone/UnlockPINLock$5;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/UnlockPINLock$5;-><init>(Lcom/android/phone/UnlockPINLock;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/phone/UnlockPINLock$5;->start()V

    .line 886
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][new Thread][Finsish]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    .end local v1    # "retryCount":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getOptrDrawableBySlotId(J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "Slot"    # J

    .prologue
    const/4 v1, 0x0

    .line 1099
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 1100
    long-to-int v2, p1

    invoke-static {p0, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1101
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    const-string v2, "UnlockPINLock "

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

    .line 1102
    if-eqz v0, :cond_0

    .line 1103
    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundDarkRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1107
    .end local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_0
    return-object v1
.end method

.method public getOptrNameBySlotId(J)Ljava/lang/String;
    .locals 4
    .param p1, "Slot"    # J

    .prologue
    .line 1083
    const-string v1, "UnlockPINLock "

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

    .line 1084
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 1085
    long-to-int v1, p1

    invoke-static {p0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1086
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    const-string v1, "UnlockPINLock "

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

    .line 1087
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1088
    const-string v1, "UnlockPINLock "

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

    .line 1089
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 1094
    .end local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 1091
    .restart local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1094
    .end local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 702
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 703
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v10, 0x20000

    const/4 v9, -0x1

    const v8, 0x7f080082

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 167
    const-string v3, "UnlockPINLock "

    const-string v4, "[onCreate]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0, v6}, Lcom/android/phone/UnlockPINLock;->requestWindowFeature(I)Z

    .line 171
    const v3, 0x7f040046

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->setContentView(I)V

    .line 176
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/UnlockPINLock;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 179
    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 180
    .local v2, "win":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 181
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, -0x80000000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 182
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 185
    const-string v3, "statusbar"

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/phone/UnlockPINLock;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 187
    const v3, 0x7f0b0127

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2020044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    const v3, 0x7f0b0127

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    .line 189
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 194
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v10, v10}, Landroid/view/Window;->setFlags(II)V

    .line 197
    const v3, 0x7f0b0128

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/phone/UnlockPINLock;->mbackspace:Landroid/widget/ImageButton;

    .line 198
    const v3, 0x7f0b0121

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/UnlockPINLock;->mbtnEmergencyCall:Landroid/widget/Button;

    .line 199
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080081

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mIsNoService:[Z

    iget-object v4, p0, Lcom/android/phone/UnlockPINLock;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4, v7}, Lcom/android/phone/PhoneGlobals;->isCurrentlyNoService(I)Z

    move-result v4

    aput-boolean v4, v3, v7

    .line 202
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mIsNoService:[Z

    iget-object v4, p0, Lcom/android/phone/UnlockPINLock;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4, v6}, Lcom/android/phone/PhoneGlobals;->isCurrentlyNoService(I)Z

    move-result v4

    aput-boolean v4, v3, v6

    .line 203
    const-string v3, "UnlockPINLock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mApp.isCurrentlyNoService(0) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPINLock;->mIsNoService:[Z

    aget-boolean v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v3, "UnlockPINLock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mApp.isCurrentlyNoService(1) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPINLock;->mIsNoService:[Z

    aget-boolean v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mIsNoService:[Z

    aget-boolean v3, v3, v7

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mIsNoService:[Z

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_0

    .line 207
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mbtnEmergencyCall:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20b001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/UnlockPINLock;->mSIMCardNamePadding:I

    .line 212
    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 213
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 214
    const-string v3, "PhoneConstants.GEMINI_SIM_ID_KEY"

    invoke-virtual {v0, v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/phone/UnlockPINLock;->iSIMMEUnlockNo:I

    .line 215
    const-string v3, "UnlockPINLock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onCreate][iSIMMEUnlockNo]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/phone/UnlockPINLock;->iSIMMEUnlockNo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v3, "PINLEFTRETRIES"

    invoke-virtual {v0, v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/UnlockPINLock;->retryCount:I

    .line 217
    const-string v3, "WRONGCODE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/phone/UnlockPINLock;->strWrongCode:Ljava/lang/String;

    .line 219
    :cond_1
    const-string v3, "UnlockPINLock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onCreate][strWrongCode]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/phone/UnlockPINLock;->strWrongCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const v3, 0x7f0b0122

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPINLock;->mUnlockResultNotify:Landroid/widget/TextView;

    .line 221
    sget-object v3, Lcom/android/phone/UnlockPINLock;->strWrongCode:Ljava/lang/String;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/phone/UnlockPINLock;->strWrongCode:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 222
    const-string v3, "UnlockPINLock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onCreate][Set Wrong code String]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mUnlockResultNotify:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :cond_2
    const v3, 0x7f0b0129

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 227
    new-instance v3, Lcom/android/phone/UnlockPINLock$TouchInput;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockPINLock$TouchInput;-><init>(Lcom/android/phone/UnlockPINLock;)V

    .line 229
    :cond_3
    const v3, 0x7f0b0120

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPINLock;->mDismissButton:Landroid/widget/TextView;

    .line 231
    const v3, 0x7f0b0123

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPINLock;->mUnlockActionNotify:Landroid/widget/TextView;

    .line 232
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mUnlockActionNotify:Landroid/widget/TextView;

    const v4, 0x7f080088

    invoke-virtual {p0, v4}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    const v3, 0x7f0b0124

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPINLock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    .line 237
    const v3, 0x7f0b012d

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPINLock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 238
    const v3, 0x7f0b012f

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPINLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 249
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mbackspace:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/phone/UnlockPINLock$1;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPINLock$1;-><init>(Lcom/android/phone/UnlockPINLock;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mbackspace:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/phone/UnlockPINLock$2;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPINLock$2;-><init>(Lcom/android/phone/UnlockPINLock;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 277
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mbtnEmergencyCall:Landroid/widget/Button;

    new-instance v4, Lcom/android/phone/UnlockPINLock$3;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPINLock$3;-><init>(Lcom/android/phone/UnlockPINLock;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    const-string v3, "UnlockPINLock "

    const-string v4, "[unlock][onCreate]-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 324
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 325
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 709
    const-string v0, "UnlockPINLock "

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

    .line 710
    sparse-switch p1, :sswitch_data_0

    .line 718
    const-string v0, "UnlockPINLock "

    const-string v1, "[onKey][Pressed invalid Key]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 715
    :sswitch_0
    const-string v0, "UnlockPINLock "

    const-string v1, "[onKeyDown][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/4 v0, 0x1

    goto :goto_0

    .line 710
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
    .line 1026
    const-string v0, "UnlockPINLock "

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

    .line 1027
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 1028
    const-string v0, "UnlockPINLock "

    const-string v1, "[onKeyLongPress][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    const/4 v0, 0x1

    .line 1031
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 329
    const-string v1, "UnlockPINLock "

    const-string v2, "[onPause]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v1, "UnlockPINLock "

    const-string v2, "[onPause] enable statusbar"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 336
    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 337
    .local v0, "airplaneMode":I
    const-string v1, "UnlockPINLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onPause][getAirPlaneMode] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    if-nez v0, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/UnlockPINLock;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 342
    :cond_0
    const/16 v1, 0x1f5

    invoke-virtual {p0, v1, v4}, Lcom/android/phone/UnlockPINLock;->sendVerifyResult(IZ)V

    .line 344
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 345
    return-void
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const v9, 0x7f08007c

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 353
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 354
    const-string v4, "UnlockPINLock "

    const-string v5, "[onResume]+"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 358
    .local v0, "airplaneMode":I
    const-string v4, "UnlockPINLock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onResume][getAirPlaneMode] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    if-eqz v0, :cond_0

    .line 360
    const/16 v4, 0x1f5

    invoke-virtual {p0, v4, v7}, Lcom/android/phone/UnlockPINLock;->sendVerifyResult(IZ)V

    .line 361
    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->finish()V

    .line 436
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Lcom/android/phone/UnlockPINLock;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 367
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 369
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/UnlockPINLock;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 390
    const-string v4, "UnlockPINLock "

    const-string v5, "[onResume][GEMINI Card]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 392
    .local v2, "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    sget v4, Lcom/android/phone/UnlockPINLock;->iSIMMEUnlockNo:I

    if-nez v4, :cond_2

    .line 394
    const-string v4, "UnlockPINLock "

    const-string v5, "[onResume][GEMINI Card][SIM1]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v5, :cond_1

    .line 396
    const-string v4, "UnlockPINLock "

    const-string v5, "[onResume][GEMINI Card][SIM1][PIN_REQUIRED]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-direct {p0, v7}, Lcom/android/phone/UnlockPINLock;->getRetryPinCount(I)I

    move-result v3

    .line 399
    .local v3, "retryCount":I
    const-string v4, "UnlockPINLock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onResume][GEMINI Card][SIM1][PIN Retries Left] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v9}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    :goto_1
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    sget v5, Lcom/android/phone/UnlockPINLock;->iSIMMEUnlockNo:I

    int-to-long v5, v5

    invoke-virtual {p0, v5, v6}, Lcom/android/phone/UnlockPINLock;->getOptrNameBySlotId(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    sget v5, Lcom/android/phone/UnlockPINLock;->iSIMMEUnlockNo:I

    int-to-long v5, v5

    invoke-virtual {p0, v5, v6}, Lcom/android/phone/UnlockPINLock;->getOptrDrawableBySlotId(J)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/phone/UnlockPINLock;->mSIMCardNamePadding:I

    iget v6, p0, Lcom/android/phone/UnlockPINLock;->mSIMCardNamePadding:I

    invoke-virtual {v4, v5, v7, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 432
    const-string v4, "UnlockPINLock "

    const-string v5, "[onResume] disable statusbar"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v5, 0x10000

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 435
    const-string v4, "UnlockPINLock "

    const-string v5, "[onResume]-"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 402
    .end local v3    # "retryCount":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->finish()V

    goto/16 :goto_0

    .line 409
    :cond_2
    const-string v4, "UnlockPINLock "

    const-string v5, "[onResume][GEMINI Card][SIM2]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v5, :cond_3

    .line 412
    const-string v4, "UnlockPINLock "

    const-string v5, "[onResume][GEMINI Card][SIM2][PIN_REQUIRED]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-direct {p0, v8}, Lcom/android/phone/UnlockPINLock;->getRetryPinCount(I)I

    move-result v3

    .line 414
    .restart local v3    # "retryCount":I
    const-string v4, "UnlockPINLock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onResume][GEMINI Card][SIM2][PIN Retries Left] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v4, p0, Lcom/android/phone/UnlockPINLock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v9}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 417
    .end local v3    # "retryCount":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->finish()V

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 313
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 314
    return-void
.end method

.method public sendVerifyResult(IZ)V
    .locals 4
    .param p1, "verifyType"    # I
    .param p2, "bRet"    # Z

    .prologue
    .line 993
    const-string v1, "UnlockPINLock "

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

    .line 995
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 999
    .local v0, "retIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 1000
    const-string v1, "UnlockPINLock "

    const-string v2, "sendVerifyResult new retIntent failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :goto_0
    return-void

    .line 1003
    :cond_0
    const-string v1, "verfiy_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1005
    const-string v1, "verfiy_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1007
    invoke-virtual {p0, v0}, Lcom/android/phone/UnlockPINLock;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public unlockPIN(ILjava/lang/String;)V
    .locals 6
    .param p1, "simId"    # I
    .param p2, "strPwd"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 898
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 899
    .local v0, "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    if-nez p1, :cond_2

    .line 901
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][Gemini Card][SIM1]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    .line 905
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][Gemini Card][SIM1][PIN_REQUIRED]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-direct {p0, v4}, Lcom/android/phone/UnlockPINLock;->getRetryPinCount(I)I

    move-result v1

    .line 907
    .local v1, "retryCount":I
    const-string v2, "UnlockPINLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPIN][Gemini Card][SIM1][PIN_REQUIRED][retryCount] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    if-lez v1, :cond_0

    .line 910
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][Gemini Card][SIM1][new Thread][Start]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    new-instance v2, Lcom/android/phone/UnlockPINLock$6;

    invoke-direct {v2, p0, p2}, Lcom/android/phone/UnlockPINLock$6;-><init>(Lcom/android/phone/UnlockPINLock;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/phone/UnlockPINLock$6;->start()V

    .line 930
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][Gemini Card][SIM1][new Thread][Finsish]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_0
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][Gemini Card][SIM1]-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    .end local v1    # "retryCount":I
    :cond_1
    :goto_0
    return-void

    .line 940
    :cond_2
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][Gemini Card][SIM2]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    .line 944
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][Gemini Card][SIM2][PIN_REQUIRED]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-direct {p0, v5}, Lcom/android/phone/UnlockPINLock;->getRetryPinCount(I)I

    move-result v1

    .line 946
    .restart local v1    # "retryCount":I
    const-string v2, "UnlockPINLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPIN][Gemini Card][SIM2][PIN_REQUIRED][retryCount] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    if-lez v1, :cond_3

    .line 949
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][Gemini Card][SIM2][new Thread][Start]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    new-instance v2, Lcom/android/phone/UnlockPINLock$7;

    invoke-direct {v2, p0, p2}, Lcom/android/phone/UnlockPINLock$7;-><init>(Lcom/android/phone/UnlockPINLock;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/phone/UnlockPINLock$7;->start()V

    .line 970
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][Gemini Card][SIM2][new Thread][Finsish]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_3
    const-string v2, "UnlockPINLock "

    const-string v3, "[Gemini Card][SetSIMLock][SIM 2]-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 1131
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 1133
    .local v0, "newState":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1135
    const v1, 0x7f080091

    invoke-virtual {p0, v1}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    :goto_0
    return-void

    .line 1137
    :cond_0
    const v1, 0x7f080081

    invoke-virtual {p0, v1}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
