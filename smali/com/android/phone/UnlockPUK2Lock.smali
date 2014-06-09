.class public Lcom/android/phone/UnlockPUK2Lock;
.super Landroid/app/Activity;
.source "UnlockPUK2Lock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/UnlockPUK2Lock$TouchInput;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final DIALOG_ENTERNUMBER:I = 0x78

.field private static final DISMISS_LENGTH:I = 0x7

.field private static final DISMISS_SIZE:I = 0xe

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field public static final LOGTAG:Ljava/lang/String; = "UnlockPUK2Lock "

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

.field private static result:Z

.field public static strWrongCode:Ljava/lang/String;


# instance fields
.field public PwdLength:I

.field public iSIMMEUnlockNo:I

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

.field public strConPIN:Ljava/lang/String;

.field public strOriPIN:Ljava/lang/String;

.field public strPUK:Ljava/lang/String;

.field public strPUKUnlockPhase:Ljava/lang/String;

.field public strPwd:Ljava/lang/String;

.field public tempstrPwd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/UnlockPUK2Lock;->result:Z

    .line 157
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/UnlockPUK2Lock;->strWrongCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 117
    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 118
    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 121
    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    .line 122
    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockEmptyForSingleCard:Landroid/widget/TextView;

    .line 123
    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock;->PwdLength:I

    .line 124
    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->tempstrPwd:Ljava/lang/String;

    .line 126
    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock;->mPwdLeftChances:I

    .line 128
    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUK:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->strOriPIN:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->strConPIN:Ljava/lang/String;

    .line 146
    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    .line 147
    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    .line 161
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mIsNoService:[Z

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mECCBtnRunnableStarted:Z

    .line 731
    new-instance v0, Lcom/android/phone/UnlockPUK2Lock$4;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockPUK2Lock$4;-><init>(Lcom/android/phone/UnlockPUK2Lock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mHandler:Landroid/os/Handler;

    .line 980
    new-instance v0, Lcom/android/phone/UnlockPUK2Lock$8;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockPUK2Lock$8;-><init>(Lcom/android/phone/UnlockPUK2Lock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1019
    new-instance v0, Lcom/android/phone/UnlockPUK2Lock$9;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockPUK2Lock$9;-><init>(Lcom/android/phone/UnlockPUK2Lock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mHideECCBtnRunnable:Ljava/lang/Runnable;

    return-void

    .line 161
    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/UnlockPUK2Lock;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPUK2Lock;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockResultNotify:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/UnlockPUK2Lock;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPUK2Lock;
    .param p1, "x1"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/phone/UnlockPUK2Lock;->getRetryPuk2Count(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/UnlockPUK2Lock;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPUK2Lock;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mIsNoService:[Z

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/UnlockPUK2Lock;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPUK2Lock;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mHideECCBtnRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/UnlockPUK2Lock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPUK2Lock;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mECCBtnRunnableStarted:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/UnlockPUK2Lock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/UnlockPUK2Lock;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/phone/UnlockPUK2Lock;->mECCBtnRunnableStarted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/UnlockPUK2Lock;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPUK2Lock;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mbtnEmergencyCall:Landroid/widget/Button;

    return-object v0
.end method

.method public static bCharNumber(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1056
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1057
    const/4 v0, 0x1

    .line 1059
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
    .line 1065
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1066
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/phone/UnlockPUK2Lock;->bCharNumber(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1067
    const/4 v1, 0x0

    .line 1070
    :goto_1
    return v1

    .line 1065
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1070
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getRetryPin2Count(I)I
    .locals 2
    .param p1, "simId"    # I

    .prologue
    const/4 v1, -0x1

    .line 963
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 964
    const-string v0, "gsm.sim.retry.pin2.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 966
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

    .line 956
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 957
    const-string v0, "gsm.sim.retry.puk2.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 959
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.puk2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private unlockPUK2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "strPUK"    # Ljava/lang/String;
    .param p2, "strPwd"    # Ljava/lang/String;

    .prologue
    .line 829
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 830
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/UnlockPUK2Lock;->getRetryPuk2Count(I)I

    move-result v6

    .line 831
    .local v6, "retryCount":I
    if-lez v6, :cond_0

    .line 833
    const-string v0, "UnlockPUK2Lock "

    const-string v1, "[unlockPUK][new Thread][Start]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const-string v0, "UnlockPUK2Lock "

    const-string v1, "[unlockPUK][new Thread][Run]+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const-string v0, "UnlockPUK2Lock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[unlockPUK][new Thread][TogetResult][strPUK]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const-string v0, "UnlockPUK2Lock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[unlockPUK][new Thread][TogetResult][strPIN]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    .line 839
    .local v5, "callback_query":Landroid/os/Message;
    new-instance v0, Lcom/android/phone/UnlockPUK2Lock$5;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/UnlockPUK2Lock$5;-><init>(Lcom/android/phone/UnlockPUK2Lock;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {v0}, Lcom/android/phone/UnlockPUK2Lock$5;->start()V

    .line 845
    const-string v0, "UnlockPUK2Lock "

    const-string v1, "[unlockPUK][new Thread][Finsish]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    .end local v5    # "callback_query":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public getOptrDrawableBySlotId(J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "Slot"    # J

    .prologue
    const/4 v1, 0x0

    .line 1043
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 1044
    long-to-int v2, p1

    invoke-static {p0, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1045
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    const-string v2, "UnlockPUK2Lock "

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

    .line 1046
    if-eqz v0, :cond_0

    .line 1047
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUK2Lock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundDarkRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1051
    .end local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_0
    return-object v1
.end method

.method public getOptrNameBySlotId(J)Ljava/lang/String;
    .locals 4
    .param p1, "Slot"    # J

    .prologue
    .line 1027
    const-string v1, "UnlockPUK2Lock "

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

    .line 1028
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 1029
    long-to-int v1, p1

    invoke-static {p0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1030
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    const-string v1, "UnlockPUK2Lock "

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

    .line 1031
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1032
    const-string v1, "UnlockPUK2Lock "

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

    .line 1033
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 1038
    .end local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 1035
    .restart local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUK2Lock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1038
    .end local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUK2Lock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUK2Lock;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 728
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 729
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

    .line 165
    const-string v3, "UnlockPUK2Lock "

    const-string v4, "[onCreate]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0, v6}, Lcom/android/phone/UnlockPUK2Lock;->requestWindowFeature(I)Z

    .line 169
    const v3, 0x7f040046

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->setContentView(I)V

    .line 174
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 177
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUK2Lock;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 178
    .local v2, "win":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 179
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, -0x80000000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 180
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 182
    const v3, 0x7f0b0127

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/UnlockPUK2Lock;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2020044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    const v3, 0x7f0b0127

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    .line 184
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 189
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUK2Lock;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 192
    const v3, 0x7f0b0128

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mbackspace:Landroid/widget/ImageButton;

    .line 193
    const v3, 0x7f0b0121

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mbtnEmergencyCall:Landroid/widget/Button;

    .line 194
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/UnlockPUK2Lock;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080081

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mIsNoService:[Z

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4, v7}, Lcom/android/phone/PhoneGlobals;->isCurrentlyNoService(I)Z

    move-result v4

    aput-boolean v4, v3, v7

    .line 197
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mIsNoService:[Z

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4, v6}, Lcom/android/phone/PhoneGlobals;->isCurrentlyNoService(I)Z

    move-result v4

    aput-boolean v4, v3, v6

    .line 198
    const-string v3, "UnlockPUK2Lock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mApp.isCurrentlyNoService(0) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock;->mIsNoService:[Z

    aget-boolean v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v3, "UnlockPUK2Lock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mApp.isCurrentlyNoService(1) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock;->mIsNoService:[Z

    aget-boolean v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mIsNoService:[Z

    aget-boolean v3, v3, v7

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mIsNoService:[Z

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_0

    .line 201
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mbtnEmergencyCall:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUK2Lock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20b001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mSIMCardNamePadding:I

    .line 206
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUK2Lock;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 207
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 208
    const-string v3, "UnlockPUK2Lock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onStart][original]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v3, "PhoneConstants.GEMINI_SIM_ID_KEY"

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    .line 210
    const-string v3, "PINLEFTRETRIES"

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    .line 211
    const-string v3, "PUKPHASE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    .line 212
    const-string v3, "INPUTPUK"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUK:Ljava/lang/String;

    .line 213
    const-string v3, "INPUTORIPIN"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->strOriPIN:Ljava/lang/String;

    .line 214
    const-string v3, "INPUTCONPIN"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->strConPIN:Ljava/lang/String;

    .line 215
    const-string v3, "WRONGCODE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/phone/UnlockPUK2Lock;->strWrongCode:Ljava/lang/String;

    .line 218
    :cond_1
    const v3, 0x7f0b0129

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 220
    new-instance v3, Lcom/android/phone/UnlockPUK2Lock$TouchInput;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockPUK2Lock$TouchInput;-><init>(Lcom/android/phone/UnlockPUK2Lock;)V

    .line 222
    :cond_2
    const v3, 0x7f0b0120

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mDismissButton:Landroid/widget/TextView;

    .line 224
    const v3, 0x7f0b0122

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockResultNotify:Landroid/widget/TextView;

    .line 225
    sget-object v3, Lcom/android/phone/UnlockPUK2Lock;->strWrongCode:Ljava/lang/String;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/phone/UnlockPUK2Lock;->strWrongCode:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 226
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockResultNotify:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :cond_3
    const v3, 0x7f0b0123

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockActionNotify:Landroid/widget/TextView;

    .line 229
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 230
    :cond_4
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockActionNotify:Landroid/widget/TextView;

    const v4, 0x7f080089

    invoke-virtual {p0, v4}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_5
    :goto_0
    const v3, 0x7f0b0124

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    .line 241
    const v3, 0x7f0b012d

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 242
    const v3, 0x7f0b012f

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 254
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mbackspace:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/phone/UnlockPUK2Lock$1;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPUK2Lock$1;-><init>(Lcom/android/phone/UnlockPUK2Lock;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mbackspace:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/phone/UnlockPUK2Lock$2;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPUK2Lock$2;-><init>(Lcom/android/phone/UnlockPUK2Lock;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 280
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mbtnEmergencyCall:Landroid/widget/Button;

    new-instance v4, Lcom/android/phone/UnlockPUK2Lock$3;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPUK2Lock$3;-><init>(Lcom/android/phone/UnlockPUK2Lock;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    const-string v3, "UnlockPUK2Lock "

    const-string v4, "[unlock][onCreate]-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void

    .line 231
    :cond_6
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 232
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockActionNotify:Landroid/widget/TextView;

    const v4, 0x7f08008a

    invoke-virtual {p0, v4}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 233
    :cond_7
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 234
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockActionNotify:Landroid/widget/TextView;

    const v4, 0x7f08008b

    invoke-virtual {p0, v4}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 322
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 323
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 942
    const-string v0, "UnlockPUK2Lock "

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

    .line 943
    sparse-switch p1, :sswitch_data_0

    .line 951
    const-string v0, "UnlockPUK2Lock "

    const-string v1, "[onKey][Pressed invalid Key]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 948
    :sswitch_0
    const-string v0, "UnlockPUK2Lock "

    const-string v1, "[onKeyDown][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const/4 v0, 0x1

    goto :goto_0

    .line 943
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
    .line 971
    const-string v0, "UnlockPUK2Lock "

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

    .line 972
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 973
    const-string v0, "UnlockPUK2Lock "

    const-string v1, "[onKeyLongPress][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/4 v0, 0x1

    .line 976
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/UnlockPUK2Lock;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 329
    const/16 v0, 0x1f9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/UnlockPUK2Lock;->sendVerifyResult(IZ)V

    .line 330
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 331
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const v7, 0x7f08007c

    const/16 v6, 0x1f9

    const/4 v5, 0x0

    .line 337
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 338
    const-string v2, "UnlockPUK2Lock "

    const-string v3, "[onResume]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v2, p0, Lcom/android/phone/UnlockPUK2Lock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockPUK2Lock;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 342
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    iget-object v2, p0, Lcom/android/phone/UnlockPUK2Lock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/phone/UnlockPUK2Lock;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 347
    iget-object v2, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 366
    :cond_0
    const-string v2, "UnlockPUK2Lock "

    const-string v3, "[onResume][GEMINI Card]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget v2, p0, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    if-nez v2, :cond_3

    .line 370
    invoke-direct {p0, v5}, Lcom/android/phone/UnlockPUK2Lock;->getRetryPuk2Count(I)I

    move-result v1

    .line 371
    .local v1, "retryCount":I
    const-string v2, "UnlockPUK2Lock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onResume][GEMINI Card][SIM1][PUK Retries Left] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    if-lez v1, :cond_2

    .line 373
    iget-object v2, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

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

    .line 403
    .end local v1    # "retryCount":I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/UnlockPUK2Lock;->getOptrNameBySlotId(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v2, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/UnlockPUK2Lock;->getOptrDrawableBySlotId(J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 405
    iget-object v2, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mSIMCardNamePadding:I

    iget v4, p0, Lcom/android/phone/UnlockPUK2Lock;->mSIMCardNamePadding:I

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 408
    :goto_1
    return-void

    .line 375
    .restart local v1    # "retryCount":I
    :cond_2
    invoke-virtual {p0, v6, v5}, Lcom/android/phone/UnlockPUK2Lock;->sendVerifyResult(IZ)V

    .line 376
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto :goto_1

    .line 382
    .end local v1    # "retryCount":I
    :cond_3
    const-string v2, "UnlockPUK2Lock "

    const-string v3, "[onResume][GEMINI Card][SIM2]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/phone/UnlockPUK2Lock;->getRetryPuk2Count(I)I

    move-result v1

    .line 384
    .restart local v1    # "retryCount":I
    const-string v2, "UnlockPUK2Lock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onResume][GEMINI Card][SIM2][PUK Retries Left] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    if-lez v1, :cond_4

    .line 386
    iget-object v2, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

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

    .line 388
    :cond_4
    invoke-virtual {p0, v6, v5}, Lcom/android/phone/UnlockPUK2Lock;->sendVerifyResult(IZ)V

    .line 389
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto :goto_1

    .line 395
    .end local v1    # "retryCount":I
    :cond_5
    iget-object v2, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 397
    iget-object v2, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 315
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 316
    return-void
.end method

.method public sendVerifyResult(IZ)V
    .locals 4
    .param p1, "verifyType"    # I
    .param p2, "bRet"    # Z

    .prologue
    .line 922
    const-string v1, "UnlockPUK2Lock "

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

    .line 924
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 928
    .local v0, "retIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 929
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "sendVerifyResult new retIntent failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :goto_0
    return-void

    .line 932
    :cond_0
    const-string v1, "verfiy_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 934
    const-string v1, "verfiy_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 936
    invoke-virtual {p0, v0}, Lcom/android/phone/UnlockPUK2Lock;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public unlockPUK2(ILjava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "simId"    # I
    .param p2, "strPUK"    # Ljava/lang/String;
    .param p3, "strPwd"    # Ljava/lang/String;

    .prologue
    .line 852
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 853
    .local v3, "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    if-nez p1, :cond_1

    .line 855
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[unlockPUK][Gemini Card][SIM1]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/UnlockPUK2Lock;->getRetryPuk2Count(I)I

    move-result v13

    .line 858
    .local v13, "retryCount":I
    const-string v1, "UnlockPUK2Lock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPUK][Gemini Card][SIM1][PUK_REQUIRED][retryCount] : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    if-lez v13, :cond_0

    .line 861
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[unlockPUK][Gemini Card][SIM1][new Thread][Start]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[unlockPUK][Gemini Card][SIM1][new Thread][Run]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const-string v1, "UnlockPUK2Lock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPUK][Gemini Card][SIM1][TogetResult][strPUK]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const-string v1, "UnlockPUK2Lock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPUK][Gemini Card][SIM1][TogetResult][strPIN]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    .line 868
    .local v6, "callback_query2":Landroid/os/Message;
    new-instance v1, Lcom/android/phone/UnlockPUK2Lock$6;

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/UnlockPUK2Lock$6;-><init>(Lcom/android/phone/UnlockPUK2Lock;Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {v1}, Lcom/android/phone/UnlockPUK2Lock$6;->start()V

    .line 873
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[unlockPUK][Gemini Card][SIM1][new Thread][Finsish]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    .end local v6    # "callback_query2":Landroid/os/Message;
    :cond_0
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[unlockPUK][Gemini Card][SIM1]-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :goto_0
    return-void

    .line 883
    .end local v13    # "retryCount":I
    :cond_1
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[unlockPUK][Gemini Card][SIM2]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/UnlockPUK2Lock;->getRetryPuk2Count(I)I

    move-result v13

    .line 885
    .restart local v13    # "retryCount":I
    const-string v1, "UnlockPUK2Lock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPUK][Gemini Card][SIM2][PIN_REQUIRED][retryCount] : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    if-lez v13, :cond_2

    .line 888
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[unlockPUK][Gemini Card][SIM2][new Thread][Start]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[unlockPUK][Gemini Card][SIM2][new Thread][Run]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const-string v1, "UnlockPUK2Lock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPUK][Gemini Card][SIM2][TogetResult][strPUK]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const-string v1, "UnlockPUK2Lock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPUK][Gemini Card][SIM2][TogetResult][strPIN]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v12

    .line 895
    .local v12, "callback_query3":Landroid/os/Message;
    new-instance v7, Lcom/android/phone/UnlockPUK2Lock$7;

    move-object v8, p0

    move-object v9, v3

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v7 .. v12}, Lcom/android/phone/UnlockPUK2Lock$7;-><init>(Lcom/android/phone/UnlockPUK2Lock;Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {v7}, Lcom/android/phone/UnlockPUK2Lock$7;->start()V

    .line 901
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[unlockPUK][Gemini Card][SIM2][new Thread][Finsish]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 903
    .end local v12    # "callback_query3":Landroid/os/Message;
    :cond_2
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[Gemini Card][SetSIMLock][SIM 2]-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 1075
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 1077
    .local v0, "newState":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1079
    const v1, 0x7f080091

    invoke-virtual {p0, v1}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    :goto_0
    return-void

    .line 1081
    :cond_0
    const v1, 0x7f080081

    invoke-virtual {p0, v1}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
