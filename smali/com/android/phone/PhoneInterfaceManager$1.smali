.class Lcom/android/phone/PhoneInterfaceManager$1;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager;->getScAddressGemini(I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;

.field final synthetic val$addr:Lcom/android/phone/PhoneInterfaceManager$ScAddrGemini;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$ScAddrGemini;)V
    .locals 0

    .prologue
    .line 3689
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$1;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager$1;->val$addr:Lcom/android/phone/PhoneInterfaceManager$ScAddrGemini;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3692
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$1;->val$addr:Lcom/android/phone/PhoneInterfaceManager$ScAddrGemini;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$1;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/16 v3, 0x1f

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$1;->val$addr:Lcom/android/phone/PhoneInterfaceManager$ScAddrGemini;

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    invoke-static {v1, v3, v4}, Lcom/android/phone/PhoneInterfaceManager;->access$1500(Lcom/android/phone/PhoneInterfaceManager;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/android/phone/PhoneInterfaceManager$ScAddrGemini;->scAddr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3696
    :goto_0
    return-void

    .line 3693
    :catch_0
    move-exception v0

    .line 3694
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sca getScAddressGemini "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
