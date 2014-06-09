.class Lcom/android/phone/UnlockPUK2Lock$9;
.super Ljava/lang/Object;
.source "UnlockPUK2Lock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockPUK2Lock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockPUK2Lock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPUK2Lock;)V
    .locals 0

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/android/phone/UnlockPUK2Lock$9;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$9;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    # getter for: Lcom/android/phone/UnlockPUK2Lock;->mbtnEmergencyCall:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/UnlockPUK2Lock;->access$500(Lcom/android/phone/UnlockPUK2Lock;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1022
    return-void
.end method
