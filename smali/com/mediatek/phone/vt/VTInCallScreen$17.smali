.class Lcom/mediatek/phone/vt/VTInCallScreen$17;
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
    .line 2962
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2964
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    # getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$2200(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2965
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    # getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$2200(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 2966
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const/4 v3, 0x0

    # setter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$2202(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2969
    :cond_0
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v2, v2, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2970
    .local v0, "currentString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2972
    .local v1, "type":I
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08006f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2975
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "The choice of start VT recording : voice and peer video"

    # invokes: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 2977
    const/4 v1, 0x1

    .line 2996
    :goto_0
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    # invokes: Lcom/mediatek/phone/vt/VTInCallScreen;->startRecord(I)V
    invoke-static {v2, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$2300(Lcom/mediatek/phone/vt/VTInCallScreen;I)V

    .line 2997
    :goto_1
    return-void

    .line 2978
    :cond_1
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2981
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "The choice of start VT recording : only voice"

    # invokes: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 2983
    const/4 v1, 0x2

    goto :goto_0

    .line 2984
    :cond_2
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2987
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "The choice of start VT recording : only peer video"

    # invokes: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 2989
    const/4 v1, 0x3

    goto :goto_0

    .line 2992
    :cond_3
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$17;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "The choice of start VT recording : wrong string"

    # invokes: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    goto :goto_1
.end method
