.class Lcom/mediatek/phone/vt/VTInCallScreen$18;
.super Ljava/lang/Object;
.source "VTInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/phone/vt/VTInCallScreen;->onReceiveVTManagerReady()V
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
    .line 3147
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen$18;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 3150
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$18;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v1, " user no selection , default show !! "

    # invokes: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 3151
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$18;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v1, "Incallscreen, before userSelect default"

    # invokes: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 3153
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->userSelectYes(I)V

    .line 3155
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$18;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v1, "Incallscreen, after userSelect default"

    # invokes: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 3158
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$18;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    # getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$2400(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3159
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$18;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    # getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$2400(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3160
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$18;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$2402(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 3162
    :cond_0
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    const-string v1, "0"

    iput-object v1, v0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    .line 3163
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$18;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    # invokes: Lcom/mediatek/phone/vt/VTInCallScreen;->onVTHideMeClick()V
    invoke-static {v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$2500(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 3164
    return-void
.end method
