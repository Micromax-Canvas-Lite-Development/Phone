.class Lcom/android/phone/EditPhoneNumberPreference$2;
.super Ljava/lang/Object;
.source "EditPhoneNumberPreference.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditPhoneNumberPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditPhoneNumberPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/EditPhoneNumberPreference;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 2
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    # getter for: Lcom/android/phone/EditPhoneNumberPreference;->mTimeArray:[I
    invoke-static {v1}, Lcom/android/phone/EditPhoneNumberPreference;->access$400(Lcom/android/phone/EditPhoneNumberPreference;)[I

    move-result-object v1

    aget v1, v1, p3

    # setter for: Lcom/android/phone/EditPhoneNumberPreference;->mDelaytime:I
    invoke-static {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->access$302(Lcom/android/phone/EditPhoneNumberPreference;I)I

    .line 295
    return-void
.end method
