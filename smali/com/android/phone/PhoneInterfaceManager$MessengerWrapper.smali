.class Lcom/android/phone/PhoneInterfaceManager$MessengerWrapper;
.super Ljava/lang/Object;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessengerWrapper"
.end annotation


# instance fields
.field private mInternalHandler:Landroid/os/Handler;

.field private mMessenger:Landroid/os/Messenger;

.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Landroid/os/IBinder;)V
    .locals 2
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 4009
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerWrapper;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3997
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$MessengerWrapper$1;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerWrapper;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, v1, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneInterfaceManager$MessengerWrapper$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$MessengerWrapper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerWrapper;->mInternalHandler:Landroid/os/Handler;

    .line 4010
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerWrapper;->mMessenger:Landroid/os/Messenger;

    .line 4011
    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/PhoneInterfaceManager$MessengerWrapper;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager$MessengerWrapper;

    .prologue
    .line 3994
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerWrapper;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 4018
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerWrapper;->mInternalHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 1

    .prologue
    .line 4014
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerWrapper;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method
