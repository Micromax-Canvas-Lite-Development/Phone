.class Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;
.super Ljava/lang/Object;
.source "VTInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/vt/VTInCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InCallVideoSettingLocalEffectListener"
.end annotation


# instance fields
.field private mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/phone/vt/VTInCallScreen;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 1

    .prologue
    .line 1590
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;->mValues:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    # getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$1600(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    # getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$1600(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1608
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$1602(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1610
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/vt/VTManager;->setColorEffect(Ljava/lang/String;)V

    .line 1611
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    # invokes: Lcom/mediatek/phone/vt/VTInCallScreen;->updateLocalZoomOrBrightness()V
    invoke-static {v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$1700(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 1612
    return-void
.end method

.method public setValues(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1598
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1599
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;->mValues:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1598
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1601
    :cond_0
    return-void
.end method
