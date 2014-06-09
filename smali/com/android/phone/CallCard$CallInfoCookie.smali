.class Lcom/android/phone/CallCard$CallInfoCookie;
.super Ljava/lang/Object;
.source "CallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallInfoCookie"
.end annotation


# instance fields
.field public bannerNumber:I

.field public call:Lcom/android/internal/telephony/Call;

.field final synthetic this$0:Lcom/android/phone/CallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCard;Lcom/android/internal/telephony/Call;I)V
    .locals 0
    .param p2, "newCall"    # Lcom/android/internal/telephony/Call;
    .param p3, "bannerNo"    # I

    .prologue
    .line 2307
    iput-object p1, p0, Lcom/android/phone/CallCard$CallInfoCookie;->this$0:Lcom/android/phone/CallCard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2308
    iput p3, p0, Lcom/android/phone/CallCard$CallInfoCookie;->bannerNumber:I

    .line 2309
    iput-object p2, p0, Lcom/android/phone/CallCard$CallInfoCookie;->call:Lcom/android/internal/telephony/Call;

    .line 2310
    return-void
.end method
