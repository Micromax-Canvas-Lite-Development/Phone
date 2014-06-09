.class public Lcom/android/phone/UnlockPUKLock;
.super Landroid/app/Activity;
.source "UnlockPUKLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/UnlockPUKLock$TouchInput;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final DIALOG_ENTERNUMBER:I = 0x78

.field private static final DISMISS_LENGTH:I = 0x7

.field private static final DISMISS_SIZE:I = 0xe

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field public static final LOGTAG:Ljava/lang/String; = "UnlockPUKLock "

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
    .line 114
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/UnlockPUKLock;->result:Z

    .line 159
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/UnlockPUKLock;->strWrongCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 120
    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 121
    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 124
    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    .line 125
    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockEmptyForSingleCard:Landroid/widget/TextView;

    .line 126
    iput v1, p0, Lcom/android/phone/UnlockPUKLock;->PwdLength:I

    .line 127
    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->tempstrPwd:Ljava/lang/String;

    .line 129
    iput v1, p0, Lcom/android/phone/UnlockPUKLock;->mPwdLeftChances:I

    .line 131
    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->strPUK:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->strOriPIN:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->strConPIN:Ljava/lang/String;

    .line 149
    iput v1, p0, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    .line 150
    iput v1, p0, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    .line 166
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->mIsNoService:[Z

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/UnlockPUKLock;->mECCBtnRunnableStarted:Z

    .line 788
    new-instance v0, Lcom/android/phone/UnlockPUKLock$4;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockPUKLock$4;-><init>(Lcom/android/phone/UnlockPUKLock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->mHandler:Landroid/os/Handler;

    .line 1101
    new-instance v0, Lcom/android/phone/UnlockPUKLock$8;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockPUKLock$8;-><init>(Lcom/android/phone/UnlockPUKLock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1140
    new-instance v0, Lcom/android/phone/UnlockPUKLock$9;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockPUKLock$9;-><init>(Lcom/android/phone/UnlockPUKLock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->mHideECCBtnRunnable:Ljava/lang/Runnable;

    return-void

    .line 166
    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/UnlockPUKLock;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPUKLock;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockResultNotify:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/android/phone/UnlockPUKLock;->result:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 107
    sput-boolean p0, Lcom/android/phone/UnlockPUKLock;->result:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/phone/UnlockPUKLock;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPUKLock;
    .param p1, "x1"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/phone/UnlockPUKLock;->getRetryPukCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/UnlockPUKLock;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPUKLock;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock;->mIsNoService:[Z

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/UnlockPUKLock;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPUKLock;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock;->mHideECCBtnRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/UnlockPUKLock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPUKLock;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/phone/UnlockPUKLock;->mECCBtnRunnableStarted:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/UnlockPUKLock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/UnlockPUKLock;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/phone/UnlockPUKLock;->mECCBtnRunnableStarted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/UnlockPUKLock;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockPUKLock;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock;->mbtnEmergencyCall:Landroid/widget/Button;

    return-object v0
.end method

.method public static bCharNumber(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1176
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1177
    const/4 v0, 0x1

    .line 1179
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
    .line 1185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1186
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/phone/UnlockPUKLock;->bCharNumber(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1187
    const/4 v1, 0x0

    .line 1190
    :goto_1
    return v1

    .line 1185
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1190
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getRetryPukCount(I)I
    .locals 2
    .param p1, "simId"    # I

    .prologue
    const/4 v1, -0x1

    .line 1084
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1085
    const-string v0, "gsm.sim.retry.puk1.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1087
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.puk1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private unlockPUK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "strPUK"    # Ljava/lang/String;
    .param p2, "strPwd"    # Ljava/lang/String;

    .prologue
    .line 914
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 915
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_0

    .line 917
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/phone/UnlockPUKLock;->getRetryPukCount(I)I

    move-result v1

    .line 918
    .local v1, "retryCount":I
    if-lez v1, :cond_0

    .line 920
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][new Thread][Start]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    new-instance v2, Lcom/android/phone/UnlockPUKLock$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/phone/UnlockPUKLock$5;-><init>(Lcom/android/phone/UnlockPUKLock;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/phone/UnlockPUKLock$5;->start()V

    .line 941
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][new Thread][Finsish]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
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

    .line 1163
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 1164
    long-to-int v2, p1

    invoke-static {p0, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1165
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    const-string v2, "UnlockPUKLock "

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

    .line 1166
    if-eqz v0, :cond_0

    .line 1167
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundDarkRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1171
    .end local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_0
    return-object v1
.end method

.method public getOptrNameBySlotId(J)Ljava/lang/String;
    .locals 4
    .param p1, "Slot"    # J

    .prologue
    .line 1147
    const-string v1, "UnlockPUKLock "

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

    .line 1148
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 1149
    long-to-int v1, p1

    invoke-static {p0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1150
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    const-string v1, "UnlockPUKLock "

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

    .line 1151
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1152
    const-string v1, "UnlockPUKLock "

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

    .line 1153
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 1158
    .end local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 1155
    .restart local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1158
    .end local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 783
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 784
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f0b0127

    const/high16 v9, 0x20000

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 170
    const-string v3, "UnlockPUKLock "

    const-string v4, "[onCreate]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {p0, v6}, Lcom/android/phone/UnlockPUKLock;->requestWindowFeature(I)Z

    .line 174
    const v3, 0x7f040046

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->setContentView(I)V

    .line 179
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 182
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 183
    .local v2, "win":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 184
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, -0x80000000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 185
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 188
    const-string v3, "statusbar"

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 190
    invoke-virtual {p0, v10}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2020044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    invoke-virtual {p0, v10}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    .line 192
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 197
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 200
    const v3, 0x7f0b0128

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mbackspace:Landroid/widget/ImageButton;

    .line 201
    const v3, 0x7f0b0121

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mbtnEmergencyCall:Landroid/widget/Button;

    .line 202
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080081

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mIsNoService:[Z

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4, v7}, Lcom/android/phone/PhoneGlobals;->isCurrentlyNoService(I)Z

    move-result v4

    aput-boolean v4, v3, v7

    .line 205
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mIsNoService:[Z

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4, v6}, Lcom/android/phone/PhoneGlobals;->isCurrentlyNoService(I)Z

    move-result v4

    aput-boolean v4, v3, v6

    .line 206
    const-string v3, "UnlockPUKLock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mApp.isCurrentlyNoService(0) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock;->mIsNoService:[Z

    aget-boolean v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v3, "UnlockPUKLock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mApp.isCurrentlyNoService(1) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock;->mIsNoService:[Z

    aget-boolean v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mIsNoService:[Z

    aget-boolean v3, v3, v7

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mIsNoService:[Z

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_0

    .line 209
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mbtnEmergencyCall:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20b001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/UnlockPUKLock;->mSIMCardNamePadding:I

    .line 214
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 215
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 216
    const-string v3, "UnlockPUKLock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onStart][original]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v3, "PhoneConstants.GEMINI_SIM_ID_KEY"

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    .line 218
    const-string v3, "PINLEFTRETRIES"

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    .line 219
    const-string v3, "PUKPHASE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    .line 220
    const-string v3, "INPUTPUK"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strPUK:Ljava/lang/String;

    .line 221
    const-string v3, "INPUTORIPIN"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strOriPIN:Ljava/lang/String;

    .line 222
    const-string v3, "INPUTCONPIN"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strConPIN:Ljava/lang/String;

    .line 223
    const-string v3, "WRONGCODE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/phone/UnlockPUKLock;->strWrongCode:Ljava/lang/String;

    .line 225
    :cond_1
    const v3, 0x7f0b0122

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockResultNotify:Landroid/widget/TextView;

    .line 226
    sget-object v3, Lcom/android/phone/UnlockPUKLock;->strWrongCode:Ljava/lang/String;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/phone/UnlockPUKLock;->strWrongCode:Ljava/lang/String;

    const v4, 0x7f080082

    invoke-virtual {p0, v4}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/phone/UnlockPUKLock;->strWrongCode:Ljava/lang/String;

    const v4, 0x7f08008f

    invoke-virtual {p0, v4}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 228
    :cond_2
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockResultNotify:Landroid/widget/TextView;

    sget-object v4, Lcom/android/phone/UnlockPUKLock;->strWrongCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :cond_3
    const v3, 0x7f0b0129

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 232
    new-instance v3, Lcom/android/phone/UnlockPUKLock$TouchInput;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockPUKLock$TouchInput;-><init>(Lcom/android/phone/UnlockPUKLock;)V

    .line 234
    :cond_4
    const v3, 0x7f0b0120

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mDismissButton:Landroid/widget/TextView;

    .line 236
    const v3, 0x7f0b0123

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockActionNotify:Landroid/widget/TextView;

    .line 237
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 238
    :cond_5
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockActionNotify:Landroid/widget/TextView;

    const v4, 0x7f08008c

    invoke-virtual {p0, v4}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :cond_6
    :goto_0
    const v3, 0x7f0b0124

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    .line 249
    const v3, 0x7f0b012d

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 250
    const v3, 0x7f0b012f

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 261
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mbackspace:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/phone/UnlockPUKLock$1;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPUKLock$1;-><init>(Lcom/android/phone/UnlockPUKLock;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mbackspace:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/phone/UnlockPUKLock$2;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPUKLock$2;-><init>(Lcom/android/phone/UnlockPUKLock;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 287
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mbtnEmergencyCall:Landroid/widget/Button;

    new-instance v4, Lcom/android/phone/UnlockPUKLock$3;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPUKLock$3;-><init>(Lcom/android/phone/UnlockPUKLock;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    const-string v3, "UnlockPUKLock "

    const-string v4, "[unlock][onCreate]-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void

    .line 239
    :cond_7
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 240
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockActionNotify:Landroid/widget/TextView;

    const v4, 0x7f08008d

    invoke-virtual {p0, v4}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 241
    :cond_8
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 242
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockActionNotify:Landroid/widget/TextView;

    const v4, 0x7f08008e

    invoke-virtual {p0, v4}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 329
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 330
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    .line 338
    :cond_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UnlockPUKLock "

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1070
    const-string v0, "UnlockPUKLock "

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

    .line 1071
    sparse-switch p1, :sswitch_data_0

    .line 1079
    const-string v0, "UnlockPUKLock "

    const-string v1, "[onKey][Pressed invalid Key]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1076
    :sswitch_0
    const-string v0, "UnlockPUKLock "

    const-string v1, "[onKeyDown][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const/4 v0, 0x1

    goto :goto_0

    .line 1071
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
    .line 1092
    const-string v0, "UnlockPUKLock "

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

    .line 1093
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 1094
    const-string v0, "UnlockPUKLock "

    const-string v1, "[onKeyLongPress][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    const/4 v0, 0x1

    .line 1097
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    const-string v0, "UnlockPUKLock "

    const-string v1, "[onPause]+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v0, "UnlockPUKLock "

    const-string v1, "[onPause] enable statusbar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 348
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/UnlockPUKLock;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 349
    const/16 v0, 0x1f6

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/UnlockPUKLock;->sendVerifyResult(IZ)V

    .line 350
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 351
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const v8, 0x7f08007c

    const/16 v7, 0x1f6

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 357
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 358
    const-string v3, "UnlockPUKLock "

    const-string v4, "[onResume]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 362
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/phone/UnlockPUKLock;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 367
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 393
    :cond_0
    const-string v3, "UnlockPUKLock "

    const-string v4, "[onResume][GEMINI Card]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 395
    .local v1, "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget v3, p0, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    if-nez v3, :cond_4

    .line 397
    const-string v3, "UnlockPUKLock "

    const-string v4, "[onResume][GEMINI Card][SIM1]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_3

    .line 399
    const-string v3, "UnlockPUKLock "

    const-string v4, "[onResume][GEMINI Card][SIM1][PUK_REQUIRED]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-direct {p0, v6}, Lcom/android/phone/UnlockPUKLock;->getRetryPukCount(I)I

    move-result v2

    .line 402
    .local v2, "retryCount":I
    const-string v3, "UnlockPUKLock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onResume][GEMINI Card][SIM1][PUK Retries Left] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    if-lez v2, :cond_2

    .line 404
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    .end local v1    # "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v2    # "retryCount":I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    int-to-long v4, v4

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/UnlockPUKLock;->getOptrNameBySlotId(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    int-to-long v4, v4

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/UnlockPUKLock;->getOptrDrawableBySlotId(J)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 446
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/phone/UnlockPUKLock;->mSIMCardNamePadding:I

    iget v5, p0, Lcom/android/phone/UnlockPUKLock;->mSIMCardNamePadding:I

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 450
    const-string v3, "UnlockPUKLock "

    const-string v4, "[onResume] disable statusbar"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v4, 0x10000

    invoke-virtual {v3, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 453
    :goto_1
    return-void

    .line 406
    .restart local v1    # "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .restart local v2    # "retryCount":I
    :cond_2
    invoke-virtual {p0, v7, v6}, Lcom/android/phone/UnlockPUKLock;->sendVerifyResult(IZ)V

    .line 407
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto :goto_1

    .line 411
    .end local v2    # "retryCount":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto :goto_1

    .line 417
    :cond_4
    const-string v3, "UnlockPUKLock "

    const-string v4, "[onResume][GEMINI Card][SIM2]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_6

    .line 420
    const-string v3, "UnlockPUKLock "

    const-string v4, "[onResume][GEMINI Card][SIM2][PUK_REQUIRED]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-direct {p0, v5}, Lcom/android/phone/UnlockPUKLock;->getRetryPukCount(I)I

    move-result v2

    .line 422
    .restart local v2    # "retryCount":I
    const-string v3, "UnlockPUKLock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onResume][GEMINI Card][SIM2][PUK Retries Left] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    if-lez v2, :cond_5

    .line 424
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 426
    :cond_5
    invoke-virtual {p0, v7, v6}, Lcom/android/phone/UnlockPUKLock;->sendVerifyResult(IZ)V

    .line 427
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto :goto_1

    .line 431
    .end local v2    # "retryCount":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto :goto_1

    .line 436
    .end local v1    # "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_7
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 438
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 322
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 323
    return-void
.end method

.method public sendVerifyResult(IZ)V
    .locals 4
    .param p1, "verifyType"    # I
    .param p2, "bRet"    # Z

    .prologue
    .line 1050
    const-string v1, "UnlockPUKLock "

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

    .line 1052
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1056
    .local v0, "retIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 1057
    const-string v1, "UnlockPUKLock "

    const-string v2, "sendVerifyResult new retIntent failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :goto_0
    return-void

    .line 1060
    :cond_0
    const-string v1, "verfiy_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1062
    const-string v1, "verfiy_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1064
    invoke-virtual {p0, v0}, Lcom/android/phone/UnlockPUKLock;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public unlockPUK(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "simId"    # I
    .param p2, "strPUK"    # Ljava/lang/String;
    .param p3, "strPwd"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 953
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 954
    .local v0, "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    if-nez p1, :cond_2

    .line 956
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][Gemini Card][SIM1]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    .line 960
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][Gemini Card][SIM1][PUK_REQUIRED]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-direct {p0, v4}, Lcom/android/phone/UnlockPUKLock;->getRetryPukCount(I)I

    move-result v1

    .line 962
    .local v1, "retryCount":I
    const-string v2, "UnlockPUKLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPUK][Gemini Card][SIM1][PUK_REQUIRED][retryCount] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    if-lez v1, :cond_0

    .line 965
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][Gemini Card][SIM1][new Thread][Start]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    new-instance v2, Lcom/android/phone/UnlockPUKLock$6;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/phone/UnlockPUKLock$6;-><init>(Lcom/android/phone/UnlockPUKLock;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/phone/UnlockPUKLock$6;->start()V

    .line 986
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][Gemini Card][SIM1][new Thread][Finsish]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_0
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][Gemini Card][SIM1]-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    .end local v1    # "retryCount":I
    :cond_1
    :goto_0
    return-void

    .line 996
    :cond_2
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][Gemini Card][SIM2]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    .line 1000
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][Gemini Card][SIM2][PIN_REQUIRED]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-direct {p0, v5}, Lcom/android/phone/UnlockPUKLock;->getRetryPukCount(I)I

    move-result v1

    .line 1002
    .restart local v1    # "retryCount":I
    const-string v2, "UnlockPUKLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPUK][Gemini Card][SIM2][PIN_REQUIRED][retryCount] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    if-lez v1, :cond_3

    .line 1005
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][Gemini Card][SIM2][new Thread][Start]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    new-instance v2, Lcom/android/phone/UnlockPUKLock$7;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/phone/UnlockPUKLock$7;-><init>(Lcom/android/phone/UnlockPUKLock;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/phone/UnlockPUKLock$7;->start()V

    .line 1027
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][Gemini Card][SIM2][new Thread][Finsish]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_3
    const-string v2, "UnlockPUKLock "

    const-string v3, "[Gemini Card][SetSIMLock][SIM 2]-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 1195
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 1197
    .local v0, "newState":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1199
    const v1, 0x7f080091

    invoke-virtual {p0, v1}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1203
    :goto_0
    return-void

    .line 1201
    :cond_0
    const v1, 0x7f080081

    invoke-virtual {p0, v1}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
