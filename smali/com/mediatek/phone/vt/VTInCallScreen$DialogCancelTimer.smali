.class public Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;
.super Ljava/lang/Object;
.source "VTInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/vt/VTInCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogCancelTimer"
.end annotation


# instance fields
.field private mAsker:Landroid/app/AlertDialog;

.field private final mSeconds:I

.field private final mTimer:Ljava/util/Timer;

.field final synthetic this$0:Lcom/mediatek/phone/vt/VTInCallScreen;


# direct methods
.method public constructor <init>(Lcom/mediatek/phone/vt/VTInCallScreen;ILandroid/app/AlertDialog;)V
    .locals 1
    .param p2, "seconds"    # I
    .param p3, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1238
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;->mTimer:Ljava/util/Timer;

    .line 1248
    iput p2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;->mSeconds:I

    .line 1249
    iput-object p3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;->mAsker:Landroid/app/AlertDialog;

    .line 1250
    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;->mAsker:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;->mTimer:Ljava/util/Timer;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 4

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer$1;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer$1;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;)V

    iget v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;->mSeconds:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1266
    return-void
.end method
