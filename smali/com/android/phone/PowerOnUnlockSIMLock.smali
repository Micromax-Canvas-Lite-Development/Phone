.class public Lcom/android/phone/PowerOnUnlockSIMLock;
.super Landroid/app/Activity;
.source "PowerOnUnlockSIMLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final CPLOCKTYPE:I = 0x3

.field private static final DIALOG_ENTERNUMBER:I = 0x78

.field public static LOCKCATEGORY:Ljava/lang/String; = null

.field public static final LOGTAG:Ljava/lang/String; = "PowerOnUnlockSIMLock "

.field private static final NPLOCKTYPE:I = 0x0

.field private static final NSPLOCKTYPE:I = 0x1

.field private static SIM1LockedPermanently:I = 0x0

.field private static SIM2LockedPermanently:I = 0x0

.field private static SIMLOCK_TYPE_PIN:I = 0x0

.field private static final SIMLOCK_TYPE_SIMMELOCK:I = 0x2

.field private static final SIMPLOCKTYPE:I = 0x4

.field private static final SPLOCKTYPE:I = 0x2

.field public static final START_TYPE:Ljava/lang/String; = "start_type"

.field public static final START_TYPE_REQ:Ljava/lang/String; = "request"

.field public static final START_TYPE_RSP:Ljava/lang/String; = "response"

.field public static final UNLOCK_ICC_SML_COMPLETE:I = 0x78

.field public static final UNLOCK_ICC_SML_QUERYLEFTTIMES:I = 0x6e

.field static final VERIFY_RESULT:Ljava/lang/String; = "verfiy_result"

.field static final VERIFY_TYPE:Ljava/lang/String; = "verfiy_type"

.field static final VERIFY_TYPE_PIN:I = 0x1f5

.field static final VERIFY_TYPE_PIN2:I = 0x1f8

.field static final VERIFY_TYPE_PUK:I = 0x1f6

.field static final VERIFY_TYPE_PUK2:I = 0x1f9

.field static final VERIFY_TYPE_SIMMELOCK:I = 0x1f7

.field private static intSIMNumber:I

.field private static lockCategory:I

.field private static mInstance:Lcom/android/phone/PowerOnUnlockSIMLock;


# instance fields
.field private DLGMOREINFOIMAGE:I

.field public PwdLength:I

.field public SIM1MELockStatus:[I

.field public SIM2MELockStatus:[I

.field public iSIM1Unlocked:I

.field public iSIM2Unlocked:I

.field public iSIMMELockStatus:I

.field public iSIMMEUnlockNo:I

.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mBtnMoreInfo:Landroid/widget/Button;

.field private mDismissButton:Landroid/widget/TextView;

.field private mECCBtnRunnableStarted:Z

.field private mHandler:Landroid/os/Handler;

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

.field private pm:Landroid/os/PowerManager;

.field public progressDialog:Landroid/app/ProgressDialog;

.field public strLockName:[Ljava/lang/String;

.field public strPwd:Ljava/lang/String;

.field public tempstrPwd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 118
    const-string v0, "LockCategory"

    sput-object v0, Lcom/android/phone/PowerOnUnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 119
    sput v1, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    .line 120
    sput v1, Lcom/android/phone/PowerOnUnlockSIMLock;->intSIMNumber:I

    .line 152
    sput v2, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1LockedPermanently:I

    .line 153
    sput v2, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2LockedPermanently:I

    .line 1136
    const/4 v0, 0x1

    sput v0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIMLOCK_TYPE_PIN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x5

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 107
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 115
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    .line 116
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    .line 117
    iput v4, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    .line 136
    iput-object v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 137
    iput-object v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 140
    iput-object v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    .line 141
    iput-object v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mBtnMoreInfo:Landroid/widget/Button;

    .line 142
    iput-object v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockEmptyForSingleCard:Landroid/widget/TextView;

    .line 143
    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->PwdLength:I

    .line 144
    iput-object v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 145
    iput-object v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->tempstrPwd:Ljava/lang/String;

    .line 146
    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdLeftChances:I

    .line 147
    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    .line 149
    iput v4, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIM1Unlocked:I

    .line 150
    iput v4, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIM2Unlocked:I

    .line 151
    iput v4, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->DLGMOREINFOIMAGE:I

    .line 155
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, " [NP]"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, " [NSP]"

    aput-object v2, v0, v1

    const-string v1, " [SP]"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, " [CP]"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, " [SIMP]"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->strLockName:[Ljava/lang/String;

    .line 160
    iput-object v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->pm:Landroid/os/PowerManager;

    .line 164
    new-array v0, v5, [Z

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mIsNoService:[Z

    .line 165
    iput-boolean v4, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mECCBtnRunnableStarted:Z

    .line 407
    new-instance v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;

    invoke-direct {v0, p0}, Lcom/android/phone/PowerOnUnlockSIMLock$5;-><init>(Lcom/android/phone/PowerOnUnlockSIMLock;)V

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mHandler:Landroid/os/Handler;

    .line 1034
    new-instance v0, Lcom/android/phone/PowerOnUnlockSIMLock$6;

    invoke-direct {v0, p0}, Lcom/android/phone/PowerOnUnlockSIMLock$6;-><init>(Lcom/android/phone/PowerOnUnlockSIMLock;)V

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1070
    new-instance v0, Lcom/android/phone/PowerOnUnlockSIMLock$7;

    invoke-direct {v0, p0}, Lcom/android/phone/PowerOnUnlockSIMLock$7;-><init>(Lcom/android/phone/PowerOnUnlockSIMLock;)V

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mHideECCBtnRunnable:Ljava/lang/Runnable;

    return-void

    .line 115
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 116
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 164
    :array_2
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/PowerOnUnlockSIMLock;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PowerOnUnlockSIMLock;

    .prologue
    .line 107
    iget v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->DLGMOREINFOIMAGE:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 107
    sget v0, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/PowerOnUnlockSIMLock;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PowerOnUnlockSIMLock;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mHideECCBtnRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 107
    sput p0, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/phone/PowerOnUnlockSIMLock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PowerOnUnlockSIMLock;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mECCBtnRunnableStarted:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/phone/PowerOnUnlockSIMLock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PowerOnUnlockSIMLock;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mECCBtnRunnableStarted:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/phone/PowerOnUnlockSIMLock;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PowerOnUnlockSIMLock;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/PowerOnUnlockSIMLock;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PowerOnUnlockSIMLock;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/PowerOnUnlockSIMLock;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PowerOnUnlockSIMLock;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockResultNotify:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/PowerOnUnlockSIMLock;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PowerOnUnlockSIMLock;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PowerOnUnlockSIMLock;->setSimLockScreenDone(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/PowerOnUnlockSIMLock;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PowerOnUnlockSIMLock;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->notifyToShowNewSimDetected()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/PowerOnUnlockSIMLock;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PowerOnUnlockSIMLock;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 107
    sput p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1LockedPermanently:I

    return p0
.end method

.method static synthetic access$802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 107
    sput p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2LockedPermanently:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/phone/PowerOnUnlockSIMLock;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PowerOnUnlockSIMLock;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mIsNoService:[Z

    return-object v0
.end method

.method public static bCharNumber(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1107
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1108
    const/4 v0, 0x1

    .line 1110
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
    .line 1116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1117
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->bCharNumber(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1118
    const/4 v1, 0x0

    .line 1121
    :goto_1
    return v1

    .line 1116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1121
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private decideLockCategory()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1291
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1292
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1293
    const-string v1, "PhoneConstants.GEMINI_SIM_ID_KEY"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    .line 1294
    const-string v1, "SIMMELOCKSTATUS"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    .line 1295
    const-string v1, "PowerOnUnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate][iSIMMELockStatus][original]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    const-string v1, "PowerOnUnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate][iSIMMEUnlockNo]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit16 v2, v2, 0x200

    shr-int/lit8 v2, v2, 0x9

    aput v2, v1, v5

    .line 1298
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit16 v2, v2, 0x100

    shr-int/lit8 v2, v2, 0x8

    aput v2, v1, v4

    .line 1299
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit16 v2, v2, 0x80

    shr-int/lit8 v2, v2, 0x7

    aput v2, v1, v6

    .line 1300
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x40

    shr-int/lit8 v2, v2, 0x6

    aput v2, v1, v7

    .line 1301
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x20

    shr-int/lit8 v2, v2, 0x5

    aput v2, v1, v8

    .line 1302
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x10

    shr-int/lit8 v2, v2, 0x4

    aput v2, v1, v5

    .line 1303
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x8

    shr-int/lit8 v2, v2, 0x3

    aput v2, v1, v4

    .line 1304
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x4

    shr-int/lit8 v2, v2, 0x2

    aput v2, v1, v6

    .line 1305
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x2

    shr-int/lit8 v2, v2, 0x1

    aput v2, v1, v7

    .line 1306
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x1

    shr-int/lit8 v2, v2, 0x0

    aput v2, v1, v8

    .line 1310
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    aget v1, v1, v5

    if-ne v1, v4, :cond_2

    .line 1311
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PowerOnUnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1312
    sput v5, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    .line 1350
    :cond_1
    :goto_0
    return-void

    .line 1313
    :cond_2
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    aget v1, v1, v4

    if-ne v1, v4, :cond_3

    .line 1315
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PowerOnUnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1316
    sput v4, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1317
    :cond_3
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    aget v1, v1, v6

    if-ne v1, v4, :cond_4

    .line 1319
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PowerOnUnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1320
    sput v6, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1321
    :cond_4
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    aget v1, v1, v7

    if-ne v1, v4, :cond_5

    .line 1323
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PowerOnUnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1324
    sput v7, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1325
    :cond_5
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    aget v1, v1, v8

    if-ne v1, v4, :cond_6

    .line 1327
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PowerOnUnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1328
    sput v8, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1329
    :cond_6
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    aget v1, v1, v5

    if-ne v1, v4, :cond_7

    .line 1331
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PowerOnUnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1332
    sput v5, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1333
    :cond_7
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    aget v1, v1, v4

    if-ne v1, v4, :cond_8

    .line 1335
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PowerOnUnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1336
    sput v4, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1337
    :cond_8
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    aget v1, v1, v6

    if-ne v1, v4, :cond_9

    .line 1339
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PowerOnUnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1340
    sput v6, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1341
    :cond_9
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    aget v1, v1, v7

    if-ne v1, v4, :cond_a

    .line 1343
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PowerOnUnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1344
    sput v7, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1345
    :cond_a
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    aget v1, v1, v8

    if-ne v1, v4, :cond_1

    .line 1347
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PowerOnUnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1348
    sput v8, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/android/phone/PowerOnUnlockSIMLock;
    .locals 1

    .prologue
    .line 1255
    sget-object v0, Lcom/android/phone/PowerOnUnlockSIMLock;->mInstance:Lcom/android/phone/PowerOnUnlockSIMLock;

    return-object v0
.end method

.method public static hasIccCard(I)Z
    .locals 4
    .param p0, "slot"    # I

    .prologue
    .line 1224
    const/4 v0, 0x0

    .line 1228
    .local v0, "bRet":Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1231
    .local v2, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1232
    invoke-interface {v2, p0}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1250
    .end local v2    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v0

    .line 1234
    :catch_0
    move-exception v1

    .line 1235
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isSimLockDisplay(II)Z
    .locals 10
    .param p1, "slot"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x0

    const-wide/16 v8, 0x1

    const/4 v3, 0x1

    .line 1140
    if-gez p1, :cond_1

    .line 1163
    :cond_0
    :goto_0
    return v2

    .line 1144
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sim_lock_state_setting"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1145
    .local v1, "simLockState":Ljava/lang/Long;
    move-object v0, v1

    .line 1147
    .local v0, "bitSet":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-int/lit8 v6, p1, 0x2

    ushr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1148
    sget v4, Lcom/android/phone/PowerOnUnlockSIMLock;->SIMLOCK_TYPE_PIN:I

    if-ne v4, p2, :cond_2

    .line 1149
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v4, v8

    cmp-long v4, v8, v4

    if-nez v4, :cond_0

    move v2, v3

    .line 1150
    goto :goto_0

    .line 1154
    :cond_2
    const/4 v4, 0x2

    if-ne v4, p2, :cond_3

    .line 1155
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    ushr-long/2addr v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1156
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v4, v8

    cmp-long v4, v8, v4

    if-nez v4, :cond_0

    move v2, v3

    .line 1157
    goto :goto_0

    :cond_3
    move v2, v3

    .line 1163
    goto :goto_0
.end method

.method private notifyToShowNewSimDetected()V
    .locals 2

    .prologue
    .line 1357
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NEW_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1358
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1359
    return-void
.end method

.method private setSimLockScreenDone(II)V
    .locals 6
    .param p1, "slot"    # I
    .param p2, "type"    # I

    .prologue
    .line 1167
    if-gez p1, :cond_0

    .line 1189
    :goto_0
    return-void

    .line 1171
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PowerOnUnlockSIMLock;->isSimLockDisplay(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1172
    const-string v2, "PowerOnUnlockSIMLock "

    const-string v3, "setSimLockScreenDone the SimLock display is done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1176
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_lock_state_setting"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1178
    .local v1, "simLockState":Ljava/lang/Long;
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1180
    .local v0, "bitSet":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-int/lit8 v4, p1, 0x2

    shl-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1181
    const-string v2, "PowerOnUnlockSIMLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSimLockScreenDone1 bitset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const/4 v2, 0x2

    if-ne v2, p2, :cond_2

    .line 1183
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1185
    :cond_2
    const-string v2, "PowerOnUnlockSIMLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSimLockScreenDone2 bitset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1188
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_lock_state_setting"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public getMoreInfoConfiguration(J)V
    .locals 5
    .param p1, "Slot"    # J

    .prologue
    const/4 v4, 0x0

    .line 1193
    const-string v1, "PowerOnUnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getMoreInfoConfiguration][Slot]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    long-to-int v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 1195
    long-to-int v1, p1

    invoke-static {p0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1196
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    const-string v1, "PowerOnUnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getMoreInfoConfiguration][info]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 1200
    :cond_0
    iget v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v1, :cond_2

    .line 1201
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    const v2, 0x7f080092

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    :goto_0
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1206
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mBtnMoreInfo:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1207
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mBtnMoreInfo:Landroid/widget/Button;

    const v2, 0x7f080095

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    .end local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_1
    :goto_1
    return-void

    .line 1203
    .restart local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_2
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    const v2, 0x7f080093

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1211
    :cond_3
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/PowerOnUnlockSIMLock;->getOptrNameBySlotId(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/PowerOnUnlockSIMLock;->getOptrDrawableBySlotId(J)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1213
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mSIMCardNamePadding:I

    iget v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mSIMCardNamePadding:I

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public getOptrDrawableBySlotId(J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "Slot"    # J

    .prologue
    const/4 v1, 0x0

    .line 1094
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 1095
    long-to-int v2, p1

    invoke-static {p0, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1096
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    const-string v2, "PowerOnUnlockSIMLock "

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

    .line 1097
    if-eqz v0, :cond_0

    .line 1098
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundDarkRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1102
    .end local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_0
    return-object v1
.end method

.method public getOptrNameBySlotId(J)Ljava/lang/String;
    .locals 4
    .param p1, "Slot"    # J

    .prologue
    .line 1078
    const-string v1, "PowerOnUnlockSIMLock "

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

    .line 1079
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 1080
    long-to-int v1, p1

    invoke-static {p0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1081
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    const-string v1, "PowerOnUnlockSIMLock "

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

    .line 1082
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1083
    const-string v1, "PowerOnUnlockSIMLock "

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

    .line 1084
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 1089
    .end local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 1086
    .restart local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1089
    .end local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 972
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 973
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 974
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f0b0127

    const/high16 v7, 0x20000

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 169
    const-string v2, "PowerOnUnlockSIMLock "

    const-string v3, "[onCreate]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 171
    sput-object p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mInstance:Lcom/android/phone/PowerOnUnlockSIMLock;

    .line 172
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->pm:Landroid/os/PowerManager;

    .line 173
    sget-object v2, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aget v2, v2, v6

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aget v2, v2, v5

    if-eqz v2, :cond_3

    :cond_0
    sget v2, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1LockedPermanently:I

    if-ne v2, v5, :cond_1

    invoke-static {v5}, Lcom/android/phone/PowerOnUnlockSIMLock;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    sget v2, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2LockedPermanently:I

    if-ne v2, v5, :cond_2

    invoke-static {v6}, Lcom/android/phone/PowerOnUnlockSIMLock;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    sget v2, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1LockedPermanently:I

    if-ne v2, v5, :cond_4

    sget v2, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2LockedPermanently:I

    if-ne v2, v5, :cond_4

    .line 177
    :cond_3
    const-string v2, "PowerOnUnlockSIMLock "

    const-string v3, "[onCreate][Two cards are handled aleady]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->finish()V

    .line 322
    :goto_0
    return-void

    .line 181
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/phone/PowerOnUnlockSIMLock;->requestWindowFeature(I)Z

    .line 183
    const v2, 0x7f040046

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->setContentView(I)V

    .line 188
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 191
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 192
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 193
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 194
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 197
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 199
    invoke-virtual {p0, v8}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2020044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    invoke-virtual {p0, v8}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    .line 201
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 206
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 207
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 211
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20b001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mSIMCardNamePadding:I

    .line 214
    const v2, 0x7f0b0128

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mbackspace:Landroid/widget/ImageButton;

    .line 215
    const v2, 0x7f0b0121

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;

    .line 216
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080081

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mIsNoService:[Z

    iget-object v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3, v6}, Lcom/android/phone/PhoneGlobals;->isCurrentlyNoService(I)Z

    move-result v3

    aput-boolean v3, v2, v6

    .line 219
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mIsNoService:[Z

    iget-object v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3, v5}, Lcom/android/phone/PhoneGlobals;->isCurrentlyNoService(I)Z

    move-result v3

    aput-boolean v3, v2, v5

    .line 220
    const-string v2, "PowerOnUnlockSIMLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mApp.isCurrentlyNoService(0) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mIsNoService:[Z

    aget-boolean v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v2, "PowerOnUnlockSIMLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mApp.isCurrentlyNoService(1) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mIsNoService:[Z

    aget-boolean v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mIsNoService:[Z

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mIsNoService:[Z

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_5

    .line 224
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 227
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->decideLockCategory()V

    .line 228
    const-string v2, "PowerOnUnlockSIMLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onCreate][lockCategory]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intSIMNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/PowerOnUnlockSIMLock;->intSIMNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const v2, 0x7f0b0129

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 231
    new-instance v2, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;

    invoke-direct {v2, p0}, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;-><init>(Lcom/android/phone/PowerOnUnlockSIMLock;)V

    .line 233
    :cond_6
    const v2, 0x7f0b0120

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mDismissButton:Landroid/widget/TextView;

    .line 235
    const v2, 0x7f0b0122

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockResultNotify:Landroid/widget/TextView;

    .line 237
    const v2, 0x7f0b0123

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockActionNotify:Landroid/widget/TextView;

    .line 238
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockActionNotify:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    const v2, 0x7f0b0124

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    .line 244
    const v2, 0x7f0b012d

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 245
    const v2, 0x7f0b012f

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 246
    const v2, 0x7f0b0132

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mBtnMoreInfo:Landroid/widget/Button;

    .line 259
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mbackspace:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/phone/PowerOnUnlockSIMLock$1;

    invoke-direct {v3, p0}, Lcom/android/phone/PowerOnUnlockSIMLock$1;-><init>(Lcom/android/phone/PowerOnUnlockSIMLock;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mbackspace:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/phone/PowerOnUnlockSIMLock$2;

    invoke-direct {v3, p0}, Lcom/android/phone/PowerOnUnlockSIMLock$2;-><init>(Lcom/android/phone/PowerOnUnlockSIMLock;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 286
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mBtnMoreInfo:Landroid/widget/Button;

    new-instance v3, Lcom/android/phone/PowerOnUnlockSIMLock$3;

    invoke-direct {v3, p0}, Lcom/android/phone/PowerOnUnlockSIMLock$3;-><init>(Lcom/android/phone/PowerOnUnlockSIMLock;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;

    new-instance v3, Lcom/android/phone/PowerOnUnlockSIMLock$4;

    invoke-direct {v3, p0}, Lcom/android/phone/PowerOnUnlockSIMLock$4;-><init>(Lcom/android/phone/PowerOnUnlockSIMLock;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    const-string v2, "PowerOnUnlockSIMLock "

    const-string v3, "[PowerOnUnlockSIMLock][onCreate]-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x1

    .line 1262
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1263
    .local v0, "img":Landroid/widget/ImageView;
    const/4 v1, -0x1

    .line 1264
    .local v1, "imgId":I
    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v2, :cond_1

    .line 1266
    invoke-static {v3}, Lcom/android/phone/PowerOnUnlockSIMLock;->hasIccCard(I)Z

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1268
    const v1, 0x7f0200ea

    .line 1283
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1284
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080096

    invoke-virtual {p0, v3}, Lcom/android/phone/PowerOnUnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08007a

    invoke-virtual {p0, v3}, Lcom/android/phone/PowerOnUnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1286
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    return-object v2

    .line 1271
    :cond_0
    const v1, 0x7f0200ed

    goto :goto_0

    .line 1275
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->hasIccCard(I)Z

    move-result v2

    if-ne v2, v3, :cond_2

    .line 1277
    const v1, 0x7f0200eb

    goto :goto_0

    .line 1280
    :cond_2
    const v1, 0x7f0200ec

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 367
    const-string v0, "PowerOnUnlockSIMLock "

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 369
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 978
    const-string v0, "PowerOnUnlockSIMLock "

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

    .line 979
    sparse-switch p1, :sswitch_data_0

    .line 987
    const-string v0, "PowerOnUnlockSIMLock "

    const-string v1, "[onKey][Pressed invalid Key]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 984
    :sswitch_0
    const-string v0, "PowerOnUnlockSIMLock "

    const-string v1, "[onKeyDown][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const/4 v0, 0x1

    goto :goto_0

    .line 979
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
    const-string v0, "PowerOnUnlockSIMLock "

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
    const-string v0, "PowerOnUnlockSIMLock "

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

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 400
    const-string v0, "PowerOnUnlockSIMLock "

    const-string v1, "[onNewIntent]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 402
    invoke-direct {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->decideLockCategory()V

    .line 403
    const-string v0, "PowerOnUnlockSIMLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onNewIntent][lockCategory]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intSIMNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/PowerOnUnlockSIMLock;->intSIMNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 374
    const-string v1, "PowerOnUnlockSIMLock "

    const-string v2, "[onPause]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v1, "PowerOnUnlockSIMLock "

    const-string v2, "[onPause] enable statusbar"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 377
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->pm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    const-string v1, "PowerOnUnlockSIMLock "

    const-string v2, "screen is off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 381
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 387
    iget v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 388
    .local v0, "oppIndex":I
    :cond_1
    sget-object v1, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 389
    const-string v1, "PowerOnUnlockSIMLock "

    const-string v2, "[onPause]New SIM Detect can be showed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-direct {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->notifyToShowNewSimDetected()V

    .line 393
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 394
    return-void
.end method

.method protected onResume()V
    .locals 14

    .prologue
    const/16 v13, 0x6e

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 570
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 573
    new-instance v11, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v11, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 575
    .local v11, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v11}, Lcom/android/phone/PowerOnUnlockSIMLock;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 578
    const-string v0, "PowerOnUnlockSIMLock "

    const-string v1, "[onResume]+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 582
    .local v8, "airplaneMode":I
    const-string v0, "PowerOnUnlockSIMLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onResume][getAirPlaneMode] : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    if-eqz v8, :cond_0

    .line 584
    const/16 v0, 0x1f7

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->sendVerifyResult(IZ)V

    .line 585
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->finish()V

    .line 662
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 591
    const-string v0, "PowerOnUnlockSIMLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onResume][iSIMMELockStatus] : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    if-nez v0, :cond_4

    .line 596
    iget v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v0, :cond_2

    .line 597
    sget-object v0, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aput v2, v0, v2

    .line 598
    const-string v0, "PowerOnUnlockSIMLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[changed][arySIMLockStatus]: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " , "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aget v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-direct {p0, v2, v6}, Lcom/android/phone/PowerOnUnlockSIMLock;->setSimLockScreenDone(II)V

    .line 601
    sget-object v0, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aget v0, v0, v5

    if-ne v0, v6, :cond_1

    .line 602
    new-instance v10, Landroid/content/Intent;

    const-class v0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-direct {v10, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 603
    .local v10, "intent":Landroid/content/Intent;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 604
    .local v9, "bundle":Landroid/os/Bundle;
    const-string v0, "PhoneConstants.GEMINI_SIM_ID_KEY"

    invoke-virtual {v9, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 605
    invoke-virtual {v10, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 606
    invoke-virtual {p0, v10}, Lcom/android/phone/PowerOnUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 608
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->finish()V

    goto :goto_0

    .line 610
    :cond_2
    iget v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-ne v0, v5, :cond_5

    .line 611
    sget-object v0, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aput v2, v0, v5

    .line 612
    const-string v0, "PowerOnUnlockSIMLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[changed][arySIMLockStatus]: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " , "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aget v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-direct {p0, v5, v6}, Lcom/android/phone/PowerOnUnlockSIMLock;->setSimLockScreenDone(II)V

    .line 614
    sget-object v0, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aget v0, v0, v2

    if-ne v0, v6, :cond_3

    .line 615
    new-instance v10, Landroid/content/Intent;

    const-class v0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-direct {v10, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 616
    .restart local v10    # "intent":Landroid/content/Intent;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 617
    .restart local v9    # "bundle":Landroid/os/Bundle;
    const-string v0, "PhoneConstants.GEMINI_SIM_ID_KEY"

    invoke-virtual {v9, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 618
    invoke-virtual {v10, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 619
    invoke-virtual {p0, v10}, Lcom/android/phone/PowerOnUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 621
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->finish()V

    goto/16 :goto_0

    .line 636
    :cond_4
    const-string v0, "PowerOnUnlockSIMLock "

    const-string v1, "[mHandler][UNLOCK_ICC_SML_COMPLETE][GEMINI Card]+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 638
    .local v12, "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v0, :cond_6

    .line 640
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 641
    .local v7, "callback_query":Landroid/os/Message;
    invoke-virtual {v12, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget v1, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 653
    :goto_1
    iget v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->getMoreInfoConfiguration(J)V

    .line 658
    .end local v7    # "callback_query":Landroid/os/Message;
    .end local v12    # "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_5
    const-string v0, "PowerOnUnlockSIMLock "

    const-string v1, "[onResume] disable statusbar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 660
    const-string v0, "PowerOnUnlockSIMLock "

    const-string v1, "[onResume]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 645
    .restart local v12    # "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_6
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 646
    .restart local v7    # "callback_query":Landroid/os/Message;
    invoke-virtual {v12, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget v1, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x0

    .line 332
    const-string v4, "PowerOnUnlockSIMLock "

    const-string v5, "[onStart]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 335
    const-string v4, "PowerOnUnlockSIMLock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onStart]sim state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget v4, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 340
    .local v0, "anotherSimId":I
    :goto_0
    sget-object v4, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    aget v4, v4, v0

    if-ne v4, v8, :cond_2

    .line 341
    sget-object v4, Lcom/android/phone/PhoneGlobals;->arySIMLockStatus:[I

    iget v5, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    aput v3, v4, v5

    .line 342
    iget v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-direct {p0, v3, v8}, Lcom/android/phone/PowerOnUnlockSIMLock;->setSimLockScreenDone(II)V

    .line 343
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 344
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 345
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "PhoneConstants.GEMINI_SIM_ID_KEY"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 347
    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 359
    .end local v0    # "anotherSimId":I
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 360
    return-void

    :cond_1
    move v0, v3

    .line 339
    goto :goto_0

    .line 351
    .restart local v0    # "anotherSimId":I
    :cond_2
    const-string v4, "PowerOnUnlockSIMLock "

    const-string v5, "[UNLOCK_ICC_SML_COMPLETE1]New SIM Detect can be showed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-direct {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->notifyToShowNewSimDetected()V

    .line 354
    const/16 v4, 0x1f7

    invoke-virtual {p0, v4, v3}, Lcom/android/phone/PowerOnUnlockSIMLock;->sendVerifyResult(IZ)V

    .line 355
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->finish()V

    goto :goto_1
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 0
    .param p1, "keyEventCode"    # I

    .prologue
    .line 676
    return-void
.end method

.method public sendVerifyResult(IZ)V
    .locals 4
    .param p1, "verifyType"    # I
    .param p2, "bRet"    # Z

    .prologue
    .line 1007
    const-string v1, "PowerOnUnlockSIMLock "

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

    .line 1009
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1013
    .local v0, "retIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 1014
    const-string v1, "PowerOnUnlockSIMLock "

    const-string v2, "sendVerifyResult new retIntent failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :goto_0
    return-void

    .line 1017
    :cond_0
    const-string v1, "verfiy_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1019
    const-string v1, "verfiy_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1021
    invoke-virtual {p0, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 1125
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 1127
    .local v0, "newState":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1129
    const v1, 0x7f080091

    invoke-virtual {p0, v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    :goto_0
    return-void

    .line 1131
    :cond_0
    const v1, 0x7f080081

    invoke-virtual {p0, v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
