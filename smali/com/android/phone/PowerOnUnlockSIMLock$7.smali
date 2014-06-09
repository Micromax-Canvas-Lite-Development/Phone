.class Lcom/android/phone/PowerOnUnlockSIMLock$7;
.super Ljava/lang/Object;
.source "PowerOnUnlockSIMLock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PowerOnUnlockSIMLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PowerOnUnlockSIMLock;


# direct methods
.method constructor <init>(Lcom/android/phone/PowerOnUnlockSIMLock;)V
    .locals 0

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$7;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$7;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    # getter for: Lcom/android/phone/PowerOnUnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$1200(Lcom/android/phone/PowerOnUnlockSIMLock;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1073
    return-void
.end method
