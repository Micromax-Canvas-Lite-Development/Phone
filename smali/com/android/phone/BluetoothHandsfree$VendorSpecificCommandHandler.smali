.class Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VendorSpecificCommandHandler"
.end annotation


# instance fields
.field private mCommandName:Ljava/lang/String;

.field private mCompanyId:I

.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;I)V
    .locals 0
    .param p2, "commandName"    # Ljava/lang/String;
    .param p3, "companyId"    # I

    .prologue
    .line 3759
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    .line 3760
    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;->mCommandName:Ljava/lang/String;

    .line 3761
    iput p3, p0, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;->mCompanyId:I

    .line 3762
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;ILcom/android/phone/BluetoothHandsfree$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/BluetoothHandsfree;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/phone/BluetoothHandsfree$1;

    .prologue
    .line 3753
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;-><init>(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public handleActionCommand()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .prologue
    .line 3776
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v0
.end method

.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .prologue
    .line 3766
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v0
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 6
    .param p1, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 3781
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;->mCommandName:Ljava/lang/String;

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;->mCompanyId:I

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/BluetoothAudioGateway;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothAudioGateway;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAudioGateway;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    move-object v4, p1

    # invokes: Lcom/android/phone/BluetoothHandsfree;->broadcastVendorSpecificEventIntent(Ljava/lang/String;II[Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V
    invoke-static/range {v0 .. v5}, Lcom/android/phone/BluetoothHandsfree;->access$7900(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;II[Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V

    .line 3786
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v0
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .prologue
    .line 3771
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v0
.end method
