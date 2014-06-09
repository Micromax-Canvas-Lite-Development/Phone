.class Lcom/android/phone/EditFdnContactScreen$FdnKeyListener;
.super Landroid/text/method/DialerKeyListener;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FdnKeyListener"
.end annotation


# static fields
.field public static final CHARACTERS:[C

.field private static sKeyListener:Lcom/android/phone/EditFdnContactScreen$FdnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 313
    const/16 v0, 0xf

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/EditFdnContactScreen$FdnKeyListener;->CHARACTERS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x23s
        0x2as
        0x2bs
        0x2cs
        0x4es
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Landroid/text/method/DialerKeyListener;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/phone/EditFdnContactScreen$FdnKeyListener;
    .locals 1

    .prologue
    .line 333
    sget-object v0, Lcom/android/phone/EditFdnContactScreen$FdnKeyListener;->sKeyListener:Lcom/android/phone/EditFdnContactScreen$FdnKeyListener;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lcom/android/phone/EditFdnContactScreen$FdnKeyListener;

    invoke-direct {v0}, Lcom/android/phone/EditFdnContactScreen$FdnKeyListener;-><init>()V

    sput-object v0, Lcom/android/phone/EditFdnContactScreen$FdnKeyListener;->sKeyListener:Lcom/android/phone/EditFdnContactScreen$FdnKeyListener;

    .line 336
    :cond_0
    sget-object v0, Lcom/android/phone/EditFdnContactScreen$FdnKeyListener;->sKeyListener:Lcom/android/phone/EditFdnContactScreen$FdnKeyListener;

    return-object v0
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 318
    sget-object v0, Lcom/android/phone/EditFdnContactScreen$FdnKeyListener;->CHARACTERS:[C

    return-object v0
.end method
