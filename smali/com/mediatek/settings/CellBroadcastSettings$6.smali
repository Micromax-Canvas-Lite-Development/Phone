.class Lcom/mediatek/settings/CellBroadcastSettings$6;
.super Ljava/lang/Object;
.source "CellBroadcastSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/CellBroadcastSettings;->showLanguageSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/CellBroadcastSettings;

.field final synthetic val$temp:[Z


# direct methods
.method constructor <init>(Lcom/mediatek/settings/CellBroadcastSettings;[Z)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/mediatek/settings/CellBroadcastSettings$6;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iput-object p2, p0, Lcom/mediatek/settings/CellBroadcastSettings$6;->val$temp:[Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I
    .param p3, "isChecked"    # Z

    .prologue
    const/4 v4, 0x0

    .line 758
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings$6;->val$temp:[Z

    aput-boolean p3, v3, p2

    .line 759
    const/4 v2, 0x0

    .line 760
    .local v2, "languageDialog":Landroid/app/AlertDialog;
    instance-of v3, p1, Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 761
    check-cast v2, Landroid/app/AlertDialog;

    .line 763
    :cond_0
    if-nez p2, :cond_1

    .line 764
    if-eqz v2, :cond_2

    .line 765
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings$6;->val$temp:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 766
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 767
    .local v1, "items":Landroid/widget/ListView;
    invoke-virtual {v1, v0, p3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 768
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings$6;->val$temp:[Z

    aput-boolean p3, v3, v0

    .line 765
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 772
    .end local v0    # "i":I
    .end local v1    # "items":Landroid/widget/ListView;
    :cond_1
    if-nez p3, :cond_2

    if-eqz v2, :cond_2

    .line 773
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 774
    .restart local v1    # "items":Landroid/widget/ListView;
    invoke-virtual {v1, v4, p3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 775
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings$6;->val$temp:[Z

    aput-boolean v4, v3, v4

    .line 778
    .end local v1    # "items":Landroid/widget/ListView;
    :cond_2
    return-void
.end method
