.class Lcom/android/phone/InCallScreen$PostDrawListener;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPostDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostDrawListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method private constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0

    .prologue
    .line 7553
    iput-object p1, p0, Lcom/android/phone/InCallScreen$PostDrawListener;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallScreen$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/InCallScreen;
    .param p2, "x1"    # Lcom/android/phone/InCallScreen$1;

    .prologue
    .line 7553
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen$PostDrawListener;-><init>(Lcom/android/phone/InCallScreen;)V

    return-void
.end method


# virtual methods
.method public onPostDraw()Z
    .locals 1

    .prologue
    .line 7556
    const/4 v0, 0x1

    return v0
.end method
