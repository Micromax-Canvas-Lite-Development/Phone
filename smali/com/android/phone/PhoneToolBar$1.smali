.class Lcom/android/phone/PhoneToolBar$1;
.super Ljava/lang/Object;
.source "PhoneToolBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneToolBar;->startAlphaAmination()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneToolBar;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneToolBar;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/phone/PhoneToolBar$1;->this$0:Lcom/android/phone/PhoneToolBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/phone/PhoneToolBar$1;->this$0:Lcom/android/phone/PhoneToolBar;

    iget-object v0, v0, Lcom/android/phone/PhoneToolBar;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 229
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 226
    return-void
.end method
