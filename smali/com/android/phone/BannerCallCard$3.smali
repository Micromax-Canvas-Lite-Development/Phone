.class Lcom/android/phone/BannerCallCard$3;
.super Ljava/lang/Object;
.source "BannerCallCard.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BannerCallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BannerCallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/BannerCallCard;)V
    .locals 0

    .prologue
    .line 3945
    iput-object p1, p0, Lcom/android/phone/BannerCallCard$3;->this$0:Lcom/android/phone/BannerCallCard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 8
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v7, 0x0

    .line 3947
    const-string v5, "onAnimationEnd"

    # invokes: Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/BannerCallCard;->access$400(Ljava/lang/String;)V

    .line 3948
    const/4 v0, 0x0

    .line 3949
    .local v0, "allAnimationEnd":Z
    check-cast p1, Landroid/view/animation/AnimationSet;

    .end local p1    # "animation":Landroid/view/animation/Animation;
    invoke-virtual {p1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 3951
    .local v1, "animationCount":I
    iget-object v5, p0, Lcom/android/phone/BannerCallCard$3;->this$0:Lcom/android/phone/BannerCallCard;

    # operator++ for: Lcom/android/phone/BannerCallCard;->mShowAnimator2End:I
    invoke-static {v5}, Lcom/android/phone/BannerCallCard;->access$708(Lcom/android/phone/BannerCallCard;)I

    .line 3953
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mShowAnimator2End "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/BannerCallCard$3;->this$0:Lcom/android/phone/BannerCallCard;

    # getter for: Lcom/android/phone/BannerCallCard;->mShowAnimator2End:I
    invoke-static {v6}, Lcom/android/phone/BannerCallCard;->access$700(Lcom/android/phone/BannerCallCard;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " animationCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/BannerCallCard;->access$400(Ljava/lang/String;)V

    .line 3956
    iget-object v5, p0, Lcom/android/phone/BannerCallCard$3;->this$0:Lcom/android/phone/BannerCallCard;

    # getter for: Lcom/android/phone/BannerCallCard;->mShowAnimator2End:I
    invoke-static {v5}, Lcom/android/phone/BannerCallCard;->access$700(Lcom/android/phone/BannerCallCard;)I

    move-result v5

    if-ne v5, v1, :cond_0

    .line 3957
    const/4 v0, 0x1

    .line 3960
    :cond_0
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/phone/BannerCallCard$3;->this$0:Lcom/android/phone/BannerCallCard;

    # getter for: Lcom/android/phone/BannerCallCard;->mShowSwtchCall2Animator:Z
    invoke-static {v5}, Lcom/android/phone/BannerCallCard;->access$200(Lcom/android/phone/BannerCallCard;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3962
    iget-object v5, p0, Lcom/android/phone/BannerCallCard$3;->this$0:Lcom/android/phone/BannerCallCard;

    iget-object v5, v5, Lcom/android/phone/BannerCallCard;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v5}, Lcom/mediatek/phone/DualTalkUtils;->switchCalls()V

    .line 3963
    iget-object v5, p0, Lcom/android/phone/BannerCallCard$3;->this$0:Lcom/android/phone/BannerCallCard;

    # getter for: Lcom/android/phone/BannerCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/BannerCallCard;->access$500(Lcom/android/phone/BannerCallCard;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 3964
    iget-object v5, p0, Lcom/android/phone/BannerCallCard$3;->this$0:Lcom/android/phone/BannerCallCard;

    # setter for: Lcom/android/phone/BannerCallCard;->mShowSwtchCall2Animator:Z
    invoke-static {v5, v7}, Lcom/android/phone/BannerCallCard;->access$202(Lcom/android/phone/BannerCallCard;Z)Z

    .line 3966
    :cond_1
    if-eqz v0, :cond_2

    .line 3967
    iget-object v5, p0, Lcom/android/phone/BannerCallCard$3;->this$0:Lcom/android/phone/BannerCallCard;

    const v6, 0x7f0b010e

    invoke-virtual {v5, v6}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 3968
    .local v3, "relativeLayout":Landroid/widget/RelativeLayout;
    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/android/phone/BannerCallCard$3;->this$0:Lcom/android/phone/BannerCallCard;

    # getter for: Lcom/android/phone/BannerCallCard;->mIncomingCallInfoWidth:I
    invoke-static {v5}, Lcom/android/phone/BannerCallCard;->access$800(Lcom/android/phone/BannerCallCard;)I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/BannerCallCard$3;->this$0:Lcom/android/phone/BannerCallCard;

    # getter for: Lcom/android/phone/BannerCallCard;->mIncomingCallInfoHeight:I
    invoke-static {v6}, Lcom/android/phone/BannerCallCard;->access$900(Lcom/android/phone/BannerCallCard;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 3970
    .local v4, "source":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v5, p0, Lcom/android/phone/BannerCallCard$3;->this$0:Lcom/android/phone/BannerCallCard;

    # getter for: Lcom/android/phone/BannerCallCard;->mIncomingCallInfoTopMargin:I
    invoke-static {v5}, Lcom/android/phone/BannerCallCard;->access$1000(Lcom/android/phone/BannerCallCard;)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3971
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 3973
    .local v2, "param":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3974
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3975
    iget-object v5, p0, Lcom/android/phone/BannerCallCard$3;->this$0:Lcom/android/phone/BannerCallCard;

    # getter for: Lcom/android/phone/BannerCallCard;->mIncomingCall2Info:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/phone/BannerCallCard;->access$1100(Lcom/android/phone/BannerCallCard;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 3976
    iget-object v5, p0, Lcom/android/phone/BannerCallCard$3;->this$0:Lcom/android/phone/BannerCallCard;

    # setter for: Lcom/android/phone/BannerCallCard;->mShowAnimator2End:I
    invoke-static {v5, v7}, Lcom/android/phone/BannerCallCard;->access$702(Lcom/android/phone/BannerCallCard;I)I

    .line 3978
    .end local v2    # "param":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "relativeLayout":Landroid/widget/RelativeLayout;
    .end local v4    # "source":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 3981
    const-string v0, "onAnimationRepeat"

    # invokes: Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/BannerCallCard;->access$400(Ljava/lang/String;)V

    .line 3982
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 7
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 3985
    const-string v3, "onAnimationStart"

    # invokes: Lcom/android/phone/BannerCallCard;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/BannerCallCard;->access$400(Ljava/lang/String;)V

    .line 3986
    iget-object v3, p0, Lcom/android/phone/BannerCallCard$3;->this$0:Lcom/android/phone/BannerCallCard;

    const v4, 0x7f0b010e

    invoke-virtual {v3, v4}, Lcom/android/phone/BannerCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 3987
    .local v1, "relativeLayout":Landroid/widget/RelativeLayout;
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 3989
    .local v2, "source":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3990
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 3992
    .local v0, "param":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3993
    iget-object v3, p0, Lcom/android/phone/BannerCallCard$3;->this$0:Lcom/android/phone/BannerCallCard;

    # getter for: Lcom/android/phone/BannerCallCard;->mNeedShowIncomingCall2Animator:Z
    invoke-static {v3}, Lcom/android/phone/BannerCallCard;->access$1200(Lcom/android/phone/BannerCallCard;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3994
    iget-object v3, p0, Lcom/android/phone/BannerCallCard$3;->this$0:Lcom/android/phone/BannerCallCard;

    # setter for: Lcom/android/phone/BannerCallCard;->mNeedShowIncomingCall2Animator:Z
    invoke-static {v3, v6}, Lcom/android/phone/BannerCallCard;->access$1202(Lcom/android/phone/BannerCallCard;Z)Z

    .line 3996
    :cond_0
    return-void
.end method
