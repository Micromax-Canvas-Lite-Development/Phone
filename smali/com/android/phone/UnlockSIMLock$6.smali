.class Lcom/android/phone/UnlockSIMLock$6;
.super Ljava/lang/Object;
.source "UnlockSIMLock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockSIMLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockSIMLock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockSIMLock;)V
    .locals 0

    .prologue
    .line 904
    iput-object p1, p0, Lcom/android/phone/UnlockSIMLock$6;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$6;->this$0:Lcom/android/phone/UnlockSIMLock;

    # getter for: Lcom/android/phone/UnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/UnlockSIMLock;->access$700(Lcom/android/phone/UnlockSIMLock;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 907
    return-void
.end method
