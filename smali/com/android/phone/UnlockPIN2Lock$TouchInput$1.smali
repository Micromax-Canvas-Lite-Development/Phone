.class Lcom/android/phone/UnlockPIN2Lock$TouchInput$1;
.super Ljava/lang/Object;
.source "UnlockPIN2Lock.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UnlockPIN2Lock$TouchInput;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/UnlockPIN2Lock$TouchInput;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPIN2Lock$TouchInput;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput$1;->this$1:Lcom/android/phone/UnlockPIN2Lock$TouchInput;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 628
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 629
    return-void
.end method
