.class Lcom/android/phone/UnlockPUKLock$9;
.super Ljava/lang/Object;
.source "UnlockPUKLock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockPUKLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockPUKLock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPUKLock;)V
    .locals 0

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/android/phone/UnlockPUKLock$9;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$9;->this$0:Lcom/android/phone/UnlockPUKLock;

    # getter for: Lcom/android/phone/UnlockPUKLock;->mbtnEmergencyCall:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/UnlockPUKLock;->access$600(Lcom/android/phone/UnlockPUKLock;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1143
    return-void
.end method
