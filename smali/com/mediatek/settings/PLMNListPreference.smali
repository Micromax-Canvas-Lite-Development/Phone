.class public Lcom/mediatek/settings/PLMNListPreference;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "PLMNListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/PLMNListPreference$SIMCapability;,
        Lcom/mediatek/settings/PLMNListPreference$MyHandler;,
        Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;
    }
.end annotation


# static fields
.field private static final BUTTON_PLMN_LIST_KEY:Ljava/lang/String; = "button_plmn_list_key"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/PLMNListPreference"

.field private static final MENU_ADD:I = 0x1

.field private static final REQUEST_ADD:I = 0x64

.field private static final REQUEST_EDIT:I = 0xc8


# instance fields
.field private mAirplaneModeEnabled:Z

.field private mCapability:Lcom/mediatek/settings/PLMNListPreference$SIMCapability;

.field private mDualSimMode:I

.field private mHandler:Lcom/mediatek/settings/PLMNListPreference$MyHandler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field mListPriority:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mListService:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNumbers:I

.field private mOldInfo:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

.field private mPLMNList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;"
        }
    .end annotation
.end field

.field private mPLMNListContainer:Landroid/preference/PreferenceScreen;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/preference/Preference;",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 41
    iput v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mNumbers:I

    .line 48
    iput v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    .line 49
    iput-object v6, p0, Lcom/mediatek/settings/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 52
    new-instance v0, Lcom/mediatek/settings/PLMNListPreference$SIMCapability;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/settings/PLMNListPreference$SIMCapability;-><init>(Lcom/mediatek/settings/PLMNListPreference;IIII)V

    iput-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mCapability:Lcom/mediatek/settings/PLMNListPreference$SIMCapability;

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    .line 56
    new-instance v0, Lcom/mediatek/settings/PLMNListPreference$MyHandler;

    invoke-direct {v0, p0, v6}, Lcom/mediatek/settings/PLMNListPreference$MyHandler;-><init>(Lcom/mediatek/settings/PLMNListPreference;Lcom/mediatek/settings/PLMNListPreference$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mHandler:Lcom/mediatek/settings/PLMNListPreference$MyHandler;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mListPriority:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mListService:Ljava/util/ArrayList;

    .line 66
    iput-boolean v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mAirplaneModeEnabled:Z

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mDualSimMode:I

    .line 70
    new-instance v0, Lcom/mediatek/settings/PLMNListPreference$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/PLMNListPreference$1;-><init>(Lcom/mediatek/settings/PLMNListPreference;)V

    iput-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 85
    new-instance v0, Lcom/mediatek/settings/PLMNListPreference$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/PLMNListPreference$2;-><init>(Lcom/mediatek/settings/PLMNListPreference;)V

    iput-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 579
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/PLMNListPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/settings/PLMNListPreference;->setScreenEnabled()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/PLMNListPreference;)Lcom/mediatek/settings/PLMNListPreference$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mHandler:Lcom/mediatek/settings/PLMNListPreference$MyHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/PLMNListPreference;)Lcom/mediatek/settings/PLMNListPreference$SIMCapability;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mCapability:Lcom/mediatek/settings/PLMNListPreference$SIMCapability;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/settings/PLMNListPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/mediatek/settings/PLMNListPreference;->mAirplaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$302(Lcom/mediatek/settings/PLMNListPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/mediatek/settings/PLMNListPreference;->mDualSimMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/settings/PLMNListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;

    .prologue
    .line 38
    iget v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/PLMNListPreference;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/PLMNListPreference;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/settings/PLMNListPreference;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/settings/PLMNListPreference;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/mediatek/settings/PLMNListPreference;->refreshPreference(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/settings/PLMNListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;

    .prologue
    .line 38
    iget v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mNumbers:I

    return v0
.end method

.method static synthetic access$810(Lcom/mediatek/settings/PLMNListPreference;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;

    .prologue
    .line 38
    iget v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mNumbers:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mNumbers:I

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/settings/PLMNListPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private addPLMNPreference(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V
    .locals 5
    .param p1, "network"    # Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .prologue
    .line 277
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 278
    .local v2, "pref":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getOperatorAlphaName()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "plmnName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getAccessTechnology()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/mediatek/settings/PLMNListPreference;->getNWString(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "extendName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v3, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 282
    iget-object v3, p0, Lcom/mediatek/settings/PLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    return-void
.end method

.method private adjustPriority(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    const/4 v2, 0x0

    .line 459
    .local v2, "priority":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .line 460
    .local v1, "info":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "priority":I
    .local v3, "priority":I
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->setPriority(I)V

    move v2, v3

    .end local v3    # "priority":I
    .restart local v2    # "priority":I
    goto :goto_0

    .line 462
    .end local v1    # "info":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    :cond_0
    return-void
.end method

.method private createNetworkInfo(Landroid/content/Intent;)Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 324
    const-string v4, "plmn_code"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "numberName":Ljava/lang/String;
    const-string v4, "plmn_name"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "operatorName":Ljava/lang/String;
    const-string v4, "plmn_priority"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 327
    .local v3, "priority":I
    const-string v4, "plmn_service"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 328
    .local v0, "act":I
    new-instance v4, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-direct {v4, v2, v1, v0, v3}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v4
.end method

.method private dumpNetworkInfo(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    const-string v1, "Settings/PLMNListPreference"

    const-string v2, "dumpNetworkInfo : **********start*******"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 381
    const-string v2, "Settings/PLMNListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpNetworkInfo : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    :cond_0
    const-string v1, "Settings/PLMNListPreference"

    const-string v2, "dumpNetworkInfo : ***********stop*******"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void
.end method

.method private extractInfoFromNetworkInfo(Landroid/content/Intent;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .prologue
    .line 286
    const-string v0, "plmn_code"

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v0, "plmn_name"

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getOperatorAlphaName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v0, "plmn_priority"

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    const-string v0, "plmn_service"

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getAccessTechnology()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const-string v0, "plmn_add"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 291
    const-string v0, "plmn_size"

    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    const-string v0, "plmn_slot"

    iget v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    return-void
.end method

.method private genDelete(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "network"    # Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 465
    const-string v5, "Settings/PLMNListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "genDelete : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/mediatek/settings/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    .line 468
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    new-instance v2, Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;-><init>(Lcom/mediatek/settings/PLMNListPreference;)V

    .line 470
    .local v2, "nc":Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;
    iget-object v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-static {v5, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    .line 472
    .local v4, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 473
    iget-object v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 477
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->setOperatorNumeric(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    iget-object v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mCapability:Lcom/mediatek/settings/PLMNListPreference$SIMCapability;

    iget v5, v5, Lcom/mediatek/settings/PLMNListPreference$SIMCapability;->mLastIndex:I

    add-int/lit8 v5, v5, 0x1

    if-ge v0, v5, :cond_1

    .line 481
    new-instance v3, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    const-string v5, ""

    const/4 v6, 0x1

    invoke-direct {v3, v5, v8, v6, v0}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 482
    .local v3, "ni":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 484
    .end local v3    # "ni":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    :cond_1
    invoke-direct {p0, v1}, Lcom/mediatek/settings/PLMNListPreference;->adjustPriority(Ljava/util/ArrayList;)V

    .line 485
    invoke-direct {p0, v1}, Lcom/mediatek/settings/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    .line 487
    return-object v1
.end method

.method private genModifyEx(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "newInfo"    # Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    .param p2, "oldInfo"    # Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    const-string v7, "Settings/PLMNListPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "genModifyEx: change : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "----> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v7, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/mediatek/settings/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    .line 390
    new-instance v3, Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;

    invoke-direct {v3, p0}, Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;-><init>(Lcom/mediatek/settings/PLMNListPreference;)V

    .line 391
    .local v3, "nc":Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;
    iget-object v7, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-static {v7, p2, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v5

    .line 392
    .local v5, "oldPos":I
    iget-object v7, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-static {v7, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    .line 394
    .local v4, "newPos":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 396
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-direct {p0, v2}, Lcom/mediatek/settings/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    .line 428
    :goto_0
    return-object v2

    .line 401
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v7, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 402
    iget-object v7, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 405
    :cond_1
    const/4 v6, -0x1

    .line 406
    .local v6, "properPos":I
    if-gez v4, :cond_2

    .line 407
    iget-object v7, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-direct {p0, v7, p1}, Lcom/mediatek/settings/PLMNListPreference;->getPosition(Ljava/util/List;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)I

    move-result v6

    .line 408
    invoke-virtual {v2, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 409
    invoke-direct {p0, v2}, Lcom/mediatek/settings/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    goto :goto_0

    .line 413
    :cond_2
    move v0, v4

    .line 414
    .local v0, "adjustIndex":I
    if-le v5, v4, :cond_3

    .line 415
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 416
    invoke-virtual {v2, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 426
    :goto_2
    invoke-direct {p0, v2}, Lcom/mediatek/settings/PLMNListPreference;->adjustPriority(Ljava/util/ArrayList;)V

    .line 427
    invoke-direct {p0, v2}, Lcom/mediatek/settings/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    goto :goto_0

    .line 417
    :cond_3
    if-ge v5, v4, :cond_4

    .line 418
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v2, v7, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 419
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 420
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 422
    :cond_4
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 423
    invoke-virtual {v2, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method private getNWString(I)Ljava/lang/String;
    .locals 4
    .param p1, "rilNW"    # I

    .prologue
    .line 604
    invoke-static {p1}, Lcom/mediatek/settings/NetworkEditor;->covertRilNW2Ap(I)I

    move-result v0

    .line 605
    .local v0, "index":I
    const-string v1, ""

    .line 606
    .local v1, "summary":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/NetworkEditor;->getBaseBand()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v0

    .line 615
    :goto_0
    return-object v1

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v0

    goto :goto_0
.end method

.method private getPosition(Ljava/util/List;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)I
    .locals 6
    .param p2, "newInfo"    # Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 432
    const/4 v1, -0x1

    .line 433
    .local v1, "index":I
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 454
    :goto_0
    return v2

    .line 437
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 438
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v5

    if-le v2, v5, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    .line 441
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 442
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 443
    if-nez v0, :cond_6

    .line 444
    const/4 v1, 0x0

    .line 451
    :cond_4
    :goto_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 452
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :cond_5
    move v2, v1

    .line 454
    goto :goto_0

    .line 446
    :cond_6
    add-int/lit8 v1, v0, -0x1

    goto :goto_1
.end method

.method private getSIMCapability()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 226
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 228
    .local v0, "dualPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mHandler:Lcom/mediatek/settings/PLMNListPreference$MyHandler;

    iget v3, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    invoke-virtual {v2, v4, v3, v4}, Lcom/mediatek/settings/PLMNListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPOLCapabilityGemini(ILandroid/os/Message;)V

    .line 235
    .end local v0    # "dualPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mHandler:Lcom/mediatek/settings/PLMNListPreference$MyHandler;

    iget v3, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    invoke-virtual {v2, v4, v3, v4}, Lcom/mediatek/settings/PLMNListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPOLCapability(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private handlePLMNListAdd(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V
    .locals 8
    .param p1, "newInfo"    # Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .prologue
    .line 351
    const-string v5, "Settings/PLMNListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlePLMNListAdd: add new network: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/mediatek/settings/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    .line 353
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 355
    iget-object v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_0
    new-instance v2, Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;-><init>(Lcom/mediatek/settings/PLMNListPreference;)V

    .line 358
    .local v2, "nc":Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;
    iget-object v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-static {v5, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 360
    .local v3, "pos":I
    const/4 v4, -0x1

    .line 361
    .local v4, "properPos":I
    if-gez v3, :cond_1

    .line 362
    iget-object v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-direct {p0, v5, p1}, Lcom/mediatek/settings/PLMNListPreference;->getPosition(Ljava/util/List;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)I

    move-result v4

    .line 364
    :cond_1
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 365
    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 369
    :goto_1
    invoke-direct {p0, v1}, Lcom/mediatek/settings/PLMNListPreference;->adjustPriority(Ljava/util/ArrayList;)V

    .line 370
    invoke-direct {p0, v1}, Lcom/mediatek/settings/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    .line 371
    invoke-direct {p0, v1}, Lcom/mediatek/settings/PLMNListPreference;->handleSetPLMN(Ljava/util/ArrayList;)V

    .line 372
    return-void

    .line 367
    :cond_2
    invoke-virtual {v1, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private handleSetPLMN(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    const/4 v6, 0x1

    .line 332
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/mediatek/settings/PLMNListPreference;->mNumbers:I

    .line 333
    iget-object v3, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/mediatek/settings/PLMNListPreference;->onStarted(Landroid/preference/Preference;Z)V

    .line 334
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 335
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .line 336
    .local v2, "ni":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 338
    .local v0, "dualPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget v3, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    iget-object v4, p0, Lcom/mediatek/settings/PLMNListPreference;->mHandler:Lcom/mediatek/settings/PLMNListPreference$MyHandler;

    iget v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    invoke-virtual {v4, v6, v5, v6}, Lcom/mediatek/settings/PLMNListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPOLEntryGemini(ILcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V

    .line 334
    .end local v0    # "dualPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_0
    iget-object v3, p0, Lcom/mediatek/settings/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/mediatek/settings/PLMNListPreference;->mHandler:Lcom/mediatek/settings/PLMNListPreference$MyHandler;

    iget v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    invoke-virtual {v4, v6, v5, v6}, Lcom/mediatek/settings/PLMNListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/Phone;->setPOLEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V

    .line 344
    const-string v3, "Settings/PLMNListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetPLMN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 348
    .end local v2    # "ni":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    :cond_1
    return-void
.end method

.method private init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V
    .locals 5
    .param p1, "listener"    # Lcom/android/phone/TimeConsumingPreferenceListener;
    .param p2, "skipReading"    # Z
    .param p3, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    .line 197
    const-string v1, "Settings/PLMNListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init with simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_sim_mode_setting"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mDualSimMode:I

    .line 201
    const-string v1, "Settings/PLMNListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings.onResume(), mDualSimMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/PLMNListPreference;->mDualSimMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    if-nez p2, :cond_1

    .line 204
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 206
    .local v0, "dualPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mHandler:Lcom/mediatek/settings/PLMNListPreference$MyHandler;

    invoke-virtual {v1, v4, p3, v4}, Lcom/mediatek/settings/PLMNListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPreferedOperatorListGemini(ILandroid/os/Message;)V

    .line 214
    .end local v0    # "dualPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    :goto_0
    if-eqz p1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 218
    :cond_1
    return-void

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mHandler:Lcom/mediatek/settings/PLMNListPreference$MyHandler;

    invoke-virtual {v2, v4, p3, v4}, Lcom/mediatek/settings/PLMNListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferedOperatorList(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private refreshPreference(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 243
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 246
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 247
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 249
    :cond_2
    iput-object p1, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    .line 250
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 252
    :cond_3
    const-string v2, "Settings/PLMNListPreference"

    const-string v3, "refreshPreference : NULL PLMN list!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    if-nez p1, :cond_4

    .line 255
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    .line 267
    :cond_4
    return-void

    .line 259
    :cond_5
    new-instance v2, Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;-><init>(Lcom/mediatek/settings/PLMNListPreference;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 261
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .line 262
    .local v1, "network":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    invoke-direct {p0, v1}, Lcom/mediatek/settings/PLMNListPreference;->addPLMNPreference(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V

    .line 264
    const-string v2, "Settings/PLMNListPreference"

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setScreenEnabled()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 619
    const/4 v1, 0x0

    .line 620
    .local v1, "isShouldEnabled":Z
    iget-object v4, p0, Lcom/mediatek/settings/PLMNListPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    .line 621
    .local v0, "isIdle":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v4, p0, Lcom/mediatek/settings/PLMNListPreference;->mAirplaneModeEnabled:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/mediatek/settings/PLMNListPreference;->mDualSimMode:I

    if-eqz v4, :cond_1

    move v1, v2

    .line 622
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 623
    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference;->invalidateOptionsMenu()V

    .line 624
    return-void

    .end local v0    # "isIdle":Z
    :cond_0
    move v0, v3

    .line 620
    goto :goto_0

    .restart local v0    # "isIdle":Z
    :cond_1
    move v1, v3

    .line 621
    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0xc8

    const/16 v4, 0x64

    .line 306
    const-string v1, "Settings/PLMNListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v1, "Settings/PLMNListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    if-eqz p3, :cond_0

    .line 310
    invoke-direct {p0, p3}, Lcom/mediatek/settings/PLMNListPreference;->createNetworkInfo(Landroid/content/Intent;)Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    move-result-object v0

    .line 311
    .local v0, "newInfo":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    if-ne p2, v5, :cond_1

    .line 312
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mOldInfo:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-direct {p0, v1}, Lcom/mediatek/settings/PLMNListPreference;->genDelete(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/settings/PLMNListPreference;->handleSetPLMN(Ljava/util/ArrayList;)V

    .line 321
    .end local v0    # "newInfo":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    :cond_0
    :goto_0
    return-void

    .line 313
    .restart local v0    # "newInfo":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    :cond_1
    if-ne p2, v4, :cond_0

    .line 314
    if-ne p1, v4, :cond_2

    .line 315
    invoke-direct {p0, v0}, Lcom/mediatek/settings/PLMNListPreference;->handlePLMNListAdd(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V

    goto :goto_0

    .line 316
    :cond_2
    if-ne p1, v5, :cond_0

    .line 317
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mOldInfo:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/settings/PLMNListPreference;->genModifyEx(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/settings/PLMNListPreference;->handleSetPLMN(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const v1, 0x7f060018

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/PLMNListPreference;->addPreferencesFromResource(I)V

    .line 111
    const-string v1, "button_plmn_list_key"

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/PLMNListPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceScreen;

    .line 112
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 113
    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "simId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    .line 115
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/PLMNListPreference;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 116
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 118
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mIntentFilter:Landroid/content/IntentFilter;

    .line 119
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/settings/PLMNListPreference;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 125
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 127
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 129
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 156
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 157
    const v0, 0x7f08015f

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 159
    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 133
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onDestroy()V

    .line 134
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/PLMNListPreference;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 139
    :cond_0
    return-void
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 0
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "reading"    # Z

    .prologue
    .line 221
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 222
    invoke-direct {p0}, Lcom/mediatek/settings/PLMNListPreference;->setScreenEnabled()V

    .line 223
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 193
    :goto_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_1
    return v1

    .line 177
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/settings/NetworkEditor;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "plmn_name"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v2, "plmn_code"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v2, "plmn_priority"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    const-string v2, "plmn_service"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    const-string v2, "plmn_add"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    const-string v1, "plmn_size"

    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    const-string v1, "plmn_slot"

    iget v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/settings/PLMNListPreference;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 188
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference;->finish()V

    goto :goto_1

    .line 175
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 296
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/settings/NetworkEditor;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .line 298
    .local v0, "info":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    iput-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mOldInfo:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .line 299
    invoke-direct {p0, v1, v0}, Lcom/mediatek/settings/PLMNListPreference;->extractInfoFromNetworkInfo(Landroid/content/Intent;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V

    .line 300
    const/16 v2, 0xc8

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/settings/PLMNListPreference;->startActivityForResult(Landroid/content/Intent;I)V

    .line 301
    const/4 v2, 0x1

    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, "isShouldEnabled":Z
    iget-object v4, p0, Lcom/mediatek/settings/PLMNListPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 166
    .local v0, "isIdle":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v4, p0, Lcom/mediatek/settings/PLMNListPreference;->mAirplaneModeEnabled:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/mediatek/settings/PLMNListPreference;->mDualSimMode:I

    if-eqz v4, :cond_2

    move v1, v2

    .line 167
    :goto_1
    if-eqz p1, :cond_0

    .line 168
    invoke-interface {p1, v3, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 170
    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .end local v0    # "isIdle":Z
    :cond_1
    move v0, v3

    .line 165
    goto :goto_0

    .restart local v0    # "isIdle":Z
    :cond_2
    move v1, v3

    .line 166
    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 142
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 143
    invoke-direct {p0}, Lcom/mediatek/settings/PLMNListPreference;->getSIMCapability()V

    .line 144
    iget v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    invoke-direct {p0, p0, v1, v2}, Lcom/mediatek/settings/PLMNListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 145
    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mAirplaneModeEnabled:Z

    .line 147
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mDualSimMode:I

    .line 150
    const-string v0, "Settings/PLMNListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings.onResume(), mDualSimMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mDualSimMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 145
    goto :goto_0
.end method
