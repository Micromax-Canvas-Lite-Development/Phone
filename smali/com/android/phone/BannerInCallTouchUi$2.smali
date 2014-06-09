.class Lcom/android/phone/BannerInCallTouchUi$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BannerInCallTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BannerInCallTouchUi;->hideIncomingCallWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BannerInCallTouchUi;


# direct methods
.method constructor <init>(Lcom/android/phone/BannerInCallTouchUi;)V
    .locals 0

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/android/phone/BannerInCallTouchUi$2;->this$0:Lcom/android/phone/BannerInCallTouchUi;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 1446
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi$2;->this$0:Lcom/android/phone/BannerInCallTouchUi;

    # getter for: Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    invoke-static {v0}, Lcom/android/phone/BannerInCallTouchUi;->access$400(Lcom/android/phone/BannerInCallTouchUi;)Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1447
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi$2;->this$0:Lcom/android/phone/BannerInCallTouchUi;

    # setter for: Lcom/android/phone/BannerInCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z
    invoke-static {v0, v2}, Lcom/android/phone/BannerInCallTouchUi;->access$102(Lcom/android/phone/BannerInCallTouchUi;Z)Z

    .line 1448
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi$2;->this$0:Lcom/android/phone/BannerInCallTouchUi;

    # setter for: Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallWidgetIsFadingOut:Z
    invoke-static {v0, v2}, Lcom/android/phone/BannerInCallTouchUi;->access$502(Lcom/android/phone/BannerInCallTouchUi;Z)Z

    .line 1449
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi$2;->this$0:Lcom/android/phone/BannerInCallTouchUi;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z
    invoke-static {v0, v1}, Lcom/android/phone/BannerInCallTouchUi;->access$602(Lcom/android/phone/BannerInCallTouchUi;Z)Z

    .line 1453
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 1437
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi$2;->this$0:Lcom/android/phone/BannerInCallTouchUi;

    # getter for: Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    invoke-static {v0}, Lcom/android/phone/BannerInCallTouchUi;->access$400(Lcom/android/phone/BannerInCallTouchUi;)Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setAlpha(F)V

    .line 1438
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi$2;->this$0:Lcom/android/phone/BannerInCallTouchUi;

    # getter for: Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    invoke-static {v0}, Lcom/android/phone/BannerInCallTouchUi;->access$400(Lcom/android/phone/BannerInCallTouchUi;)Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setVisibility(I)V

    .line 1439
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi$2;->this$0:Lcom/android/phone/BannerInCallTouchUi;

    # getter for: Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    invoke-static {v0}, Lcom/android/phone/BannerInCallTouchUi;->access$400(Lcom/android/phone/BannerInCallTouchUi;)Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1440
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi$2;->this$0:Lcom/android/phone/BannerInCallTouchUi;

    # setter for: Lcom/android/phone/BannerInCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z
    invoke-static {v0, v2}, Lcom/android/phone/BannerInCallTouchUi;->access$102(Lcom/android/phone/BannerInCallTouchUi;Z)Z

    .line 1441
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi$2;->this$0:Lcom/android/phone/BannerInCallTouchUi;

    # setter for: Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallWidgetIsFadingOut:Z
    invoke-static {v0, v2}, Lcom/android/phone/BannerInCallTouchUi;->access$502(Lcom/android/phone/BannerInCallTouchUi;Z)Z

    .line 1442
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi$2;->this$0:Lcom/android/phone/BannerInCallTouchUi;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/BannerInCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z
    invoke-static {v0, v1}, Lcom/android/phone/BannerInCallTouchUi;->access$602(Lcom/android/phone/BannerInCallTouchUi;Z)Z

    .line 1443
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi$2;->this$0:Lcom/android/phone/BannerInCallTouchUi;

    # getter for: Lcom/android/phone/BannerInCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z
    invoke-static {v0}, Lcom/android/phone/BannerInCallTouchUi;->access$100(Lcom/android/phone/BannerInCallTouchUi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1430
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi$2;->this$0:Lcom/android/phone/BannerInCallTouchUi;

    iget-object v1, p0, Lcom/android/phone/BannerInCallTouchUi$2;->this$0:Lcom/android/phone/BannerInCallTouchUi;

    # getter for: Lcom/android/phone/BannerInCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/BannerInCallTouchUi;->access$200(Lcom/android/phone/BannerInCallTouchUi;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/BannerInCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V

    .line 1431
    iget-object v0, p0, Lcom/android/phone/BannerInCallTouchUi$2;->this$0:Lcom/android/phone/BannerInCallTouchUi;

    # getter for: Lcom/android/phone/BannerInCallTouchUi;->mInCallControls:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/BannerInCallTouchUi;->access$300(Lcom/android/phone/BannerInCallTouchUi;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1433
    :cond_0
    return-void
.end method
