.class Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;
.super Ljava/lang/Object;
.source "PLMNListPreference.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/PLMNListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkCompare"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/PLMNListPreference;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/PLMNListPreference;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;->this$0:Lcom/mediatek/settings/PLMNListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)I
    .locals 2
    .param p1, "object1"    # Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    .param p2, "object2"    # Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .prologue
    .line 272
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 269
    check-cast p1, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;->compare(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)I

    move-result v0

    return v0
.end method
