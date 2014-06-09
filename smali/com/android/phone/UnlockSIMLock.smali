.class public Lcom/android/phone/UnlockSIMLock;
.super Landroid/app/Activity;
.source "UnlockSIMLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/UnlockSIMLock$TouchInput;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final CPLOCKTYPE:I = 0x3

.field private static final DIALOG_ENTERNUMBER:I = 0x78

.field private static final DISMISS_LENGTH:I = 0x7

.field private static final DISMISS_SIZE:I = 0xe

.field public static LOCKCATEGORY:Ljava/lang/String; = null

.field public static final LOGTAG:Ljava/lang/String; = "UnlockSIMLock "

.field private static final NPLOCKTYPE:I = 0x0

.field private static final NSPLOCKTYPE:I = 0x1

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


# instance fields
.field public PwdLength:I

.field public SIM1MELockStatus:[I

.field public SIM2MELockStatus:[I

.field public iSIM1Unlocked:I

.field public iSIM2Unlocked:I

.field public iSIMMELockStatus:I

.field public iSIMMEUnlockNo:I

.field private mApp:Lcom/android/phone/PhoneGlobals;

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
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 117
    const-string v0, "LockCategory"

    sput-object v0, Lcom/android/phone/UnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 118
    sput v1, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    .line 119
    sput v1, Lcom/android/phone/UnlockSIMLock;->intSIMNumber:I

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

    .line 106
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 114
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    .line 115
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    .line 116
    iput v4, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    .line 139
    iput-object v3, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 140
    iput-object v3, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 143
    iput-object v3, p0, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    .line 144
    iput-object v3, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockEmptyForSingleCard:Landroid/widget/TextView;

    .line 145
    iput v1, p0, Lcom/android/phone/UnlockSIMLock;->PwdLength:I

    .line 146
    iput-object v3, p0, Lcom/android/phone/UnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 147
    iput-object v3, p0, Lcom/android/phone/UnlockSIMLock;->tempstrPwd:Ljava/lang/String;

    .line 148
    iput v1, p0, Lcom/android/phone/UnlockSIMLock;->mPwdLeftChances:I

    .line 149
    iput v1, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    .line 151
    iput v4, p0, Lcom/android/phone/UnlockSIMLock;->iSIM1Unlocked:I

    .line 152
    iput v4, p0, Lcom/android/phone/UnlockSIMLock;->iSIM2Unlocked:I

    .line 154
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

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock;->strLockName:[Ljava/lang/String;

    .line 162
    new-array v0, v5, [Z

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mIsNoService:[Z

    .line 163
    iput-boolean v4, p0, Lcom/android/phone/UnlockSIMLock;->mECCBtnRunnableStarted:Z

    .line 165
    iput-object v3, p0, Lcom/android/phone/UnlockSIMLock;->pm:Landroid/os/PowerManager;

    .line 358
    new-instance v0, Lcom/android/phone/UnlockSIMLock$4;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockSIMLock$4;-><init>(Lcom/android/phone/UnlockSIMLock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mHandler:Landroid/os/Handler;

    .line 867
    new-instance v0, Lcom/android/phone/UnlockSIMLock$5;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockSIMLock$5;-><init>(Lcom/android/phone/UnlockSIMLock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 904
    new-instance v0, Lcom/android/phone/UnlockSIMLock$6;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockSIMLock$6;-><init>(Lcom/android/phone/UnlockSIMLock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mHideECCBtnRunnable:Ljava/lang/Runnable;

    return-void

    .line 114
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 115
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 162
    :array_2
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 106
    sget v0, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 106
    sput p0, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/phone/UnlockSIMLock;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockSIMLock;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/UnlockSIMLock;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockSIMLock;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockResultNotify:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/UnlockSIMLock;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockSIMLock;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/UnlockSIMLock;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockSIMLock;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mIsNoService:[Z

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/UnlockSIMLock;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockSIMLock;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mHideECCBtnRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/UnlockSIMLock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockSIMLock;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/phone/UnlockSIMLock;->mECCBtnRunnableStarted:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/phone/UnlockSIMLock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/UnlockSIMLock;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/phone/UnlockSIMLock;->mECCBtnRunnableStarted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/UnlockSIMLock;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UnlockSIMLock;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;

    return-object v0
.end method

.method public static bCharNumber(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 941
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 942
    const/4 v0, 0x1

    .line 944
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
    .line 950
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 951
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/phone/UnlockSIMLock;->bCharNumber(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 952
    const/4 v1, 0x0

    .line 955
    :goto_1
    return v1

    .line 950
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 955
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

    .line 973
    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 974
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 975
    const-string v1, "PhoneConstants.GEMINI_SIM_ID_KEY"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    .line 976
    const-string v1, "SIMMELOCKSTATUS"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    .line 977
    const-string v1, "UnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate][iSIMMELockStatus][original]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const-string v1, "UnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate][iSIMMEUnlockNo]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    iget v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit16 v2, v2, 0x200

    shr-int/lit8 v2, v2, 0x9

    aput v2, v1, v5

    .line 980
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    iget v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit16 v2, v2, 0x100

    shr-int/lit8 v2, v2, 0x8

    aput v2, v1, v4

    .line 981
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    iget v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit16 v2, v2, 0x80

    shr-int/lit8 v2, v2, 0x7

    aput v2, v1, v6

    .line 982
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    iget v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x40

    shr-int/lit8 v2, v2, 0x6

    aput v2, v1, v7

    .line 983
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    iget v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x20

    shr-int/lit8 v2, v2, 0x5

    aput v2, v1, v8

    .line 984
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    iget v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x10

    shr-int/lit8 v2, v2, 0x4

    aput v2, v1, v5

    .line 985
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    iget v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x8

    shr-int/lit8 v2, v2, 0x3

    aput v2, v1, v4

    .line 986
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    iget v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x4

    shr-int/lit8 v2, v2, 0x2

    aput v2, v1, v6

    .line 987
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    iget v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x2

    shr-int/lit8 v2, v2, 0x1

    aput v2, v1, v7

    .line 988
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    iget v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x1

    shr-int/lit8 v2, v2, 0x0

    aput v2, v1, v8

    .line 992
    :cond_0
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    aget v1, v1, v5

    if-ne v1, v4, :cond_2

    .line 993
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 994
    sput v5, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    .line 1033
    :cond_1
    :goto_0
    return-void

    .line 995
    :cond_2
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    aget v1, v1, v4

    if-ne v1, v4, :cond_3

    .line 997
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 998
    sput v4, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 999
    :cond_3
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    aget v1, v1, v6

    if-ne v1, v4, :cond_4

    .line 1001
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1002
    sput v6, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1003
    :cond_4
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    aget v1, v1, v7

    if-ne v1, v4, :cond_5

    .line 1005
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1006
    sput v7, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1007
    :cond_5
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    aget v1, v1, v8

    if-ne v1, v4, :cond_6

    .line 1009
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1010
    sput v8, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1011
    :cond_6
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    aget v1, v1, v5

    if-ne v1, v4, :cond_7

    .line 1013
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1014
    sput v5, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1015
    :cond_7
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    aget v1, v1, v4

    if-ne v1, v4, :cond_8

    .line 1017
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1018
    sput v4, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1019
    :cond_8
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    aget v1, v1, v6

    if-ne v1, v4, :cond_9

    .line 1021
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1022
    sput v6, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1023
    :cond_9
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    aget v1, v1, v7

    if-ne v1, v4, :cond_a

    .line 1025
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1026
    sput v7, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1027
    :cond_a
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    aget v1, v1, v8

    if-ne v1, v4, :cond_1

    .line 1029
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1030
    sput v8, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    goto/16 :goto_0
.end method


# virtual methods
.method public getOptrDrawableBySlotId(J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "Slot"    # J

    .prologue
    const/4 v1, 0x0

    .line 928
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 929
    long-to-int v2, p1

    invoke-static {p0, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 930
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    const-string v2, "UnlockSIMLock "

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

    .line 931
    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundDarkRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 936
    .end local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_0
    return-object v1
.end method

.method public getOptrNameBySlotId(J)Ljava/lang/String;
    .locals 4
    .param p1, "Slot"    # J

    .prologue
    .line 912
    const-string v1, "UnlockSIMLock "

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

    .line 913
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 914
    long-to-int v1, p1

    invoke-static {p0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 915
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    const-string v1, "UnlockSIMLock "

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

    .line 916
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 917
    const-string v1, "UnlockSIMLock "

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

    .line 918
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 923
    .end local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 920
    .restart local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 923
    .end local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 806
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 807
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f0b0127

    const/high16 v7, 0x20000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 167
    const-string v2, "UnlockSIMLock "

    const-string v3, "[onCreate]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/phone/UnlockSIMLock;->pm:Landroid/os/PowerManager;

    .line 170
    invoke-virtual {p0, v6}, Lcom/android/phone/UnlockSIMLock;->requestWindowFeature(I)Z

    .line 172
    const v2, 0x7f040046

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->setContentView(I)V

    .line 177
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 180
    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 181
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 182
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 183
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 186
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 188
    invoke-virtual {p0, v8}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2020044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    invoke-virtual {p0, v8}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    .line 190
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 193
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 194
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 195
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 199
    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20b001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/UnlockSIMLock;->mSIMCardNamePadding:I

    .line 202
    const v2, 0x7f0b0128

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mbackspace:Landroid/widget/ImageButton;

    .line 203
    const v2, 0x7f0b0121

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;

    .line 204
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080081

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mIsNoService:[Z

    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3, v5}, Lcom/android/phone/PhoneGlobals;->isCurrentlyNoService(I)Z

    move-result v3

    aput-boolean v3, v2, v5

    .line 207
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mIsNoService:[Z

    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3, v6}, Lcom/android/phone/PhoneGlobals;->isCurrentlyNoService(I)Z

    move-result v3

    aput-boolean v3, v2, v6

    .line 208
    const-string v2, "UnlockSIMLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mApp.isCurrentlyNoService(0) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock;->mIsNoService:[Z

    aget-boolean v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v2, "UnlockSIMLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mApp.isCurrentlyNoService(1) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock;->mIsNoService:[Z

    aget-boolean v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mIsNoService:[Z

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mIsNoService:[Z

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/UnlockSIMLock;->decideLockCategory()V

    .line 215
    const-string v2, "UnlockSIMLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onCreate][lockCategory]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intSIMNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/UnlockSIMLock;->intSIMNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const v2, 0x7f0b0129

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 218
    new-instance v2, Lcom/android/phone/UnlockSIMLock$TouchInput;

    invoke-direct {v2, p0}, Lcom/android/phone/UnlockSIMLock$TouchInput;-><init>(Lcom/android/phone/UnlockSIMLock;)V

    .line 220
    :cond_1
    const v2, 0x7f0b0120

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mDismissButton:Landroid/widget/TextView;

    .line 222
    const v2, 0x7f0b0122

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockResultNotify:Landroid/widget/TextView;

    .line 224
    const v2, 0x7f0b0123

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockActionNotify:Landroid/widget/TextView;

    .line 225
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockActionNotify:Landroid/widget/TextView;

    const v3, 0x7f080085

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const v2, 0x7f0b0124

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    .line 230
    const v2, 0x7f0b012d

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 231
    const v2, 0x7f0b012f

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 242
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mbackspace:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/phone/UnlockSIMLock$1;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockSIMLock$1;-><init>(Lcom/android/phone/UnlockSIMLock;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mbackspace:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/phone/UnlockSIMLock$2;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockSIMLock$2;-><init>(Lcom/android/phone/UnlockSIMLock;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 268
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;

    new-instance v3, Lcom/android/phone/UnlockSIMLock$3;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockSIMLock$3;-><init>(Lcom/android/phone/UnlockSIMLock;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    const-string v2, "UnlockSIMLock "

    const-string v3, "[UnlockSIMLock][onCreate]-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 320
    const-string v0, "UnlockSIMLock "

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 322
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 811
    const-string v0, "UnlockSIMLock "

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

    .line 812
    sparse-switch p1, :sswitch_data_0

    .line 820
    const-string v0, "UnlockSIMLock "

    const-string v1, "[onKey][Pressed invalid Key]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 817
    :sswitch_0
    const-string v0, "UnlockSIMLock "

    const-string v1, "[onKeyDown][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/4 v0, 0x1

    goto :goto_0

    .line 812
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
    .line 859
    const-string v0, "UnlockSIMLock "

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

    .line 860
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 861
    const-string v0, "UnlockSIMLock "

    const-string v1, "[onKeyLongPress][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const/4 v0, 0x1

    .line 864
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
    .line 350
    const-string v0, "UnlockSIMLock "

    const-string v1, "[onNewIntent]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 353
    invoke-direct {p0}, Lcom/android/phone/UnlockSIMLock;->decideLockCategory()V

    .line 354
    const-string v0, "UnlockSIMLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onNewIntent][lockCategory]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intSIMNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/UnlockSIMLock;->intSIMNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 327
    const-string v0, "UnlockSIMLock "

    const-string v1, "[onPause]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v0, "UnlockSIMLock "

    const-string v1, "[onPause] enable statusbar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 332
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->pm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    const-string v0, "UnlockSIMLock "

    const-string v1, "screen is off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/UnlockSIMLock;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 340
    const/16 v0, 0x1f7

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/UnlockSIMLock;->sendVerifyResult(IZ)V

    .line 342
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 343
    return-void
.end method

.method protected onResume()V
    .locals 13

    .prologue
    const/16 v5, 0x6e

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 464
    invoke-static {}, Lcom/android/phone/PowerOnUnlockSIMLock;->getInstance()Lcom/android/phone/PowerOnUnlockSIMLock;

    move-result-object v11

    .line 465
    .local v11, "pInstance":Lcom/android/phone/PowerOnUnlockSIMLock;
    invoke-static {}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->getInstance()Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    move-result-object v12

    .line 466
    .local v12, "psInstance":Lcom/android/phone/PowerOnSetupUnlockSIMLock;
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 467
    const-string v0, "UnlockSIMLock "

    const-string v1, "[onResume]+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    if-eqz v11, :cond_0

    .line 470
    invoke-virtual {v11}, Lcom/android/phone/PowerOnUnlockSIMLock;->finish()V

    .line 471
    const-string v0, "UnlockSIMLock "

    const-string v1, "PowerOnUnlockSIMLock just pause, not destroy, so destroy it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    if-eqz v12, :cond_1

    .line 475
    invoke-virtual {v12}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->finish()V

    .line 476
    const-string v0, "UnlockSIMLock "

    const-string v1, "PowerOnSetupUnlockSIMLock just pause, so destroy it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/android/phone/UnlockSIMLock;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 480
    new-instance v9, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 482
    .local v9, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/android/phone/UnlockSIMLock;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 486
    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 487
    .local v8, "airplaneMode":I
    const-string v0, "UnlockSIMLock "

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

    .line 488
    if-eqz v8, :cond_2

    .line 489
    const/16 v0, 0x1f7

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/UnlockSIMLock;->sendVerifyResult(IZ)V

    .line 490
    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->finish()V

    .line 540
    :goto_0
    return-void

    .line 495
    :cond_2
    const-string v0, "UnlockSIMLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onResume][iSIMMELockStatus] : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget v0, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    if-nez v0, :cond_3

    .line 498
    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->finish()V

    goto :goto_0

    .line 510
    :cond_3
    const-string v0, "UnlockSIMLock "

    const-string v1, "[mHandler][UNLOCK_ICC_SML_COMPLETE][GEMINI Card]+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 512
    .local v10, "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget v0, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v0, :cond_4

    .line 514
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 515
    .local v7, "callback_query":Landroid/os/Message;
    invoke-virtual {v10, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget v1, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 527
    :goto_1
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    int-to-long v3, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/UnlockSIMLock;->getOptrNameBySlotId(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    int-to-long v3, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/UnlockSIMLock;->getOptrDrawableBySlotId(J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 529
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/UnlockSIMLock;->mSIMCardNamePadding:I

    iget v3, p0, Lcom/android/phone/UnlockSIMLock;->mSIMCardNamePadding:I

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 535
    const-string v0, "UnlockSIMLock "

    const-string v1, "[onResume] disable statusbar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 538
    const-string v0, "UnlockSIMLock "

    const-string v1, "[onResume]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 519
    .end local v7    # "callback_query":Landroid/os/Message;
    :cond_4
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 520
    .restart local v7    # "callback_query":Landroid/os/Message;
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget v1, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 304
    const-string v0, "UnlockSIMLock "

    const-string v1, "[onStart]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 307
    const-string v0, "UnlockSIMLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStart]sim state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/16 v0, 0x1f7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/UnlockSIMLock;->sendVerifyResult(IZ)V

    .line 309
    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->finish()V

    .line 312
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 313
    return-void
.end method

.method public sendVerifyResult(IZ)V
    .locals 4
    .param p1, "verifyType"    # I
    .param p2, "bRet"    # Z

    .prologue
    .line 840
    const-string v1, "UnlockSIMLock "

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

    .line 842
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 846
    .local v0, "retIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 847
    const-string v1, "UnlockSIMLock "

    const-string v2, "sendVerifyResult new retIntent failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :goto_0
    return-void

    .line 850
    :cond_0
    const-string v1, "verfiy_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 852
    const-string v1, "verfiy_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 854
    invoke-virtual {p0, v0}, Lcom/android/phone/UnlockSIMLock;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 960
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 962
    .local v0, "newState":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 964
    const v1, 0x7f080091

    invoke-virtual {p0, v1}, Lcom/android/phone/UnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 968
    :goto_0
    return-void

    .line 966
    :cond_0
    const v1, 0x7f080081

    invoke-virtual {p0, v1}, Lcom/android/phone/UnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
