.class Lcom/android/phone/PowerOnUnlockSIMLock$2;
.super Ljava/lang/Object;
.source "PowerOnUnlockSIMLock.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PowerOnUnlockSIMLock;->onCreate(Landroid/os/Bundle;)V
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
    .line 273
    iput-object p1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$2;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$2;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v0, v0, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 277
    const-string v0, "PowerOnUnlockSIMLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mbackspace][onLongClickListener][strPwd)]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock$2;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v2, v2, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$2;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$2;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v0, v0, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
