.class Lcom/android/phone/InCallScreen$30;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showStorageFullDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0

    .prologue
    .line 8144
    iput-object p1, p0, Lcom/android/phone/InCallScreen$30;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 8147
    iget-object v0, p0, Lcom/android/phone/InCallScreen$30;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showStorageDialog... , on click, which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 8149
    iget-object v0, p0, Lcom/android/phone/InCallScreen$30;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mStorageSpaceDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2700(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8150
    iget-object v0, p0, Lcom/android/phone/InCallScreen$30;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mStorageSpaceDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2700(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 8152
    :cond_0
    return-void
.end method
