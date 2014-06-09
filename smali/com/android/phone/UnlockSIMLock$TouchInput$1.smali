.class Lcom/android/phone/UnlockSIMLock$TouchInput$1;
.super Ljava/lang/Object;
.source "UnlockSIMLock.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UnlockSIMLock$TouchInput;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/UnlockSIMLock$TouchInput;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockSIMLock$TouchInput;)V
    .locals 0

    .prologue
    .line 790
    iput-object p1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput$1;->this$1:Lcom/android/phone/UnlockSIMLock$TouchInput;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 793
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 794
    return-void
.end method
