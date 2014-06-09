.class Lcom/android/phone/BannerCallCard$CallInfoCookie;
.super Ljava/lang/Object;
.source "BannerCallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BannerCallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallInfoCookie"
.end annotation


# instance fields
.field public bannerNumber:I

.field public call:Lcom/android/internal/telephony/Call;

.field final synthetic this$0:Lcom/android/phone/BannerCallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/BannerCallCard;Lcom/android/internal/telephony/Call;I)V
    .locals 0
    .param p2, "newCall"    # Lcom/android/internal/telephony/Call;
    .param p3, "bannerNo"    # I

    .prologue
    .line 2505
    iput-object p1, p0, Lcom/android/phone/BannerCallCard$CallInfoCookie;->this$0:Lcom/android/phone/BannerCallCard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2506
    iput p3, p0, Lcom/android/phone/BannerCallCard$CallInfoCookie;->bannerNumber:I

    .line 2507
    iput-object p2, p0, Lcom/android/phone/BannerCallCard$CallInfoCookie;->call:Lcom/android/internal/telephony/Call;

    .line 2508
    return-void
.end method
