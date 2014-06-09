.class Lcom/android/phone/MobileNetworkSettings$10;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MobileNetworkSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    .prologue
    .line 966
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$10;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-wide/16 v3, -0x1

    .line 968
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$10;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mSelectGprsIndex:J
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$1300(Lcom/android/phone/MobileNetworkSettings;)J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    .line 969
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$10;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mDataSwitchMsgIndex:I
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$1400(Lcom/android/phone/MobileNetworkSettings;)I

    move-result v0

    const v1, 0x7f080174

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$10;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mDataSwitchMsgIndex:I
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$1400(Lcom/android/phone/MobileNetworkSettings;)I

    move-result v0

    const v1, 0x7f080176

    if-ne v0, v1, :cond_1

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$10;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$10;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mSelectGprsIndex:J
    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->access$1300(Lcom/android/phone/MobileNetworkSettings;)J

    move-result-wide v1

    # invokes: Lcom/android/phone/MobileNetworkSettings;->enableDataRoaming(J)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/MobileNetworkSettings;->access$1500(Lcom/android/phone/MobileNetworkSettings;J)V

    .line 973
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$10;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$10;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mSelectGprsIndex:J
    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->access$1300(Lcom/android/phone/MobileNetworkSettings;)J

    move-result-wide v1

    # invokes: Lcom/android/phone/MobileNetworkSettings;->switchGprsDefautlSIM(J)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/MobileNetworkSettings;->access$1600(Lcom/android/phone/MobileNetworkSettings;J)V

    .line 974
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$10;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # setter for: Lcom/android/phone/MobileNetworkSettings;->mSelectGprsIndex:J
    invoke-static {v0, v3, v4}, Lcom/android/phone/MobileNetworkSettings;->access$1302(Lcom/android/phone/MobileNetworkSettings;J)J

    .line 976
    :cond_2
    return-void
.end method
