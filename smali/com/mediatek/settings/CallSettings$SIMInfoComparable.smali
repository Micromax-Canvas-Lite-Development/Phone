.class public Lcom/mediatek/settings/CallSettings$SIMInfoComparable;
.super Ljava/lang/Object;
.source "CallSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/CallSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIMInfoComparable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/provider/Telephony$SIMInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/provider/Telephony$SIMInfo;Landroid/provider/Telephony$SIMInfo;)I
    .locals 2
    .param p1, "sim1"    # Landroid/provider/Telephony$SIMInfo;
    .param p2, "sim2"    # Landroid/provider/Telephony$SIMInfo;

    .prologue
    .line 71
    iget v0, p1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iget v1, p2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 68
    check-cast p1, Landroid/provider/Telephony$SIMInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/provider/Telephony$SIMInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/settings/CallSettings$SIMInfoComparable;->compare(Landroid/provider/Telephony$SIMInfo;Landroid/provider/Telephony$SIMInfo;)I

    move-result v0

    return v0
.end method
