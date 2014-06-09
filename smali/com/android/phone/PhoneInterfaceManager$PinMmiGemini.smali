.class Lcom/android/phone/PhoneInterfaceManager$PinMmiGemini;
.super Ljava/lang/Object;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinMmiGemini"
.end annotation


# instance fields
.field public dialString:Ljava/lang/String;

.field public simId:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "simId"    # Ljava/lang/Integer;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$PinMmiGemini;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager$PinMmiGemini;->dialString:Ljava/lang/String;

    .line 228
    iput-object p3, p0, Lcom/android/phone/PhoneInterfaceManager$PinMmiGemini;->simId:Ljava/lang/Integer;

    .line 229
    return-void
.end method
