.class Lcom/android/phone/DeleteFdnContactScreen$1;
.super Ljava/lang/Object;
.source "DeleteFdnContactScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DeleteFdnContactScreen;->handlePin2Error()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DeleteFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/DeleteFdnContactScreen;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/phone/DeleteFdnContactScreen$1;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen$1;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    invoke-virtual {v0}, Lcom/android/phone/DeleteFdnContactScreen;->finish()V

    .line 335
    return-void
.end method
