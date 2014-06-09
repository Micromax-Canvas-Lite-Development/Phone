.class Lcom/mediatek/settings/FdnSetting2$2;
.super Ljava/lang/Object;
.source "FdnSetting2.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/FdnSetting2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mEndPos:I

.field mStartPos:I

.field mTempStr:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/mediatek/settings/FdnSetting2;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/FdnSetting2;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/mediatek/settings/FdnSetting2$2;->this$0:Lcom/mediatek/settings/FdnSetting2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2$2;->this$0:Lcom/mediatek/settings/FdnSetting2;

    # getter for: Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v0}, Lcom/mediatek/settings/FdnSetting2;->access$500(Lcom/mediatek/settings/FdnSetting2;)Lcom/android/phone/EditPinPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/FdnSetting2$2;->mStartPos:I

    .line 436
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2$2;->this$0:Lcom/mediatek/settings/FdnSetting2;

    # getter for: Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v0}, Lcom/mediatek/settings/FdnSetting2;->access$500(Lcom/mediatek/settings/FdnSetting2;)Lcom/android/phone/EditPinPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/FdnSetting2$2;->mEndPos:I

    .line 437
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2$2;->mTempStr:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 438
    iget v0, p0, Lcom/mediatek/settings/FdnSetting2$2;->mStartPos:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/mediatek/settings/FdnSetting2$2;->mEndPos:I

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 439
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2$2;->this$0:Lcom/mediatek/settings/FdnSetting2;

    # getter for: Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v0}, Lcom/mediatek/settings/FdnSetting2;->access$500(Lcom/mediatek/settings/FdnSetting2;)Lcom/android/phone/EditPinPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2$2;->this$0:Lcom/mediatek/settings/FdnSetting2;

    # getter for: Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v0}, Lcom/mediatek/settings/FdnSetting2;->access$500(Lcom/mediatek/settings/FdnSetting2;)Lcom/android/phone/EditPinPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 442
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 445
    iput-object p1, p0, Lcom/mediatek/settings/FdnSetting2$2;->mTempStr:Ljava/lang/CharSequence;

    .line 446
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 449
    return-void
.end method
