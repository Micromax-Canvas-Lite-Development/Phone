.class public interface abstract Lcom/android/phone/FlipBubble$UnlockListener;
.super Ljava/lang/Object;
.source "FlipBubble.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/FlipBubble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UnlockListener"
.end annotation


# virtual methods
.method public abstract touchDown()V
.end method

.method public abstract touchUp()V
.end method

.method public abstract unLockFail(Landroid/view/View;)V
.end method

.method public abstract unLockSuccess(Landroid/view/View;)V
.end method
