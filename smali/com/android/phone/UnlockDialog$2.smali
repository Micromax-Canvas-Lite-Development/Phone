.class Lcom/android/phone/UnlockDialog$2;
.super Ljava/lang/Object;
.source "UnlockDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UnlockDialog;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockDialog;

.field final synthetic val$imgArrowRight:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockDialog;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/phone/UnlockDialog$2;->this$0:Lcom/android/phone/UnlockDialog;

    iput-object p2, p0, Lcom/android/phone/UnlockDialog$2;->val$imgArrowRight:Landroid/widget/ImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/phone/UnlockDialog$2;->this$0:Lcom/android/phone/UnlockDialog;

    iget-object v0, p0, Lcom/android/phone/UnlockDialog$2;->val$imgArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    # setter for: Lcom/android/phone/UnlockDialog;->rightArrow:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1, v0}, Lcom/android/phone/UnlockDialog;->access$102(Lcom/android/phone/UnlockDialog;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    .line 76
    iget-object v0, p0, Lcom/android/phone/UnlockDialog$2;->this$0:Lcom/android/phone/UnlockDialog;

    # getter for: Lcom/android/phone/UnlockDialog;->rightArrow:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/phone/UnlockDialog;->access$100(Lcom/android/phone/UnlockDialog;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 77
    return-void
.end method
