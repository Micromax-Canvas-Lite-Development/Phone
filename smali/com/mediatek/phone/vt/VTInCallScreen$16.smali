.class Lcom/mediatek/phone/vt/VTInCallScreen$16;
.super Ljava/lang/Object;
.source "VTInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/phone/vt/VTInCallScreen;->showStartVTRecorderDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/vt/VTInCallScreen;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0

    .prologue
    .line 2932
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen$16;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2934
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$16;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    # getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$2200(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2935
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$16;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    # getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$2200(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2936
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$16;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$2202(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2938
    :cond_0
    return-void
.end method
