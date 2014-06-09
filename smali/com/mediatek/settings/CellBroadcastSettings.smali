.class public Lcom/mediatek/settings/CellBroadcastSettings;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CellBroadcastSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;
    }
.end annotation


# static fields
.field private static final CB_MAX_CHANNEL:I = 0xffff

.field private static final CHANNEL_NAME_LENGTH:I = 0x14

.field private static final CHANNEL_URI:Landroid/net/Uri;

.field private static final CHANNEL_URI1:Landroid/net/Uri;

.field private static final DBG:Z = true

.field public static final DEFAULT_SIM:I = 0x2

.field private static final ENABLE:Ljava/lang/String; = "enable"

.field private static final KEYID:Ljava/lang/String; = "_id"

.field private static final KEY_ADD_CHANNEL:Ljava/lang/String; = "button_add_channel"

.field private static final KEY_CHANNEL_LIST:Ljava/lang/String; = "menu_channel_list"

.field private static final KEY_LANGUAGE:Ljava/lang/String; = "button_language"

.field private static final LANGUAGE_NUM:I = 0x16

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/CellBroadcastSettings"

.field private static final MENU_CHANNEL_DELETE:I = 0xc

.field private static final MENU_CHANNEL_EDIT:I = 0xb

.field private static final MENU_CHANNEL_ENABLE_DISABLE:I = 0xa

.field private static final MESSAGE_GET_CONFIG:I = 0x64

.field private static final MESSAGE_SET_CONFIG:I = 0x65

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NUMBER:Ljava/lang/String; = "number"


# instance fields
.field private mAddChannelPreference:Landroid/preference/PreferenceScreen;

.field private mChannelArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/settings/CellBroadcastChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelListPreference:Landroid/preference/PreferenceCategory;

.field private mChannelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/settings/CellBroadcastChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;

.field private mLanguageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/settings/CellBroadcastLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/settings/CellBroadcastLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguagePreference:Landroid/preference/PreferenceScreen;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimId:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const-string v0, "content://cb/channel"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/CellBroadcastSettings;->CHANNEL_URI:Landroid/net/Uri;

    .line 107
    const-string v0, "content://cb/channel1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/CellBroadcastSettings;->CHANNEL_URI1:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 109
    sget-object v0, Lcom/mediatek/settings/CellBroadcastSettings;->CHANNEL_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    .line 115
    new-instance v0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastSettings$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mHandler:Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    .line 126
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mSimId:I

    .line 128
    new-instance v0, Lcom/mediatek/settings/CellBroadcastSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/CellBroadcastSettings$1;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;)V

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 576
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/CellBroadcastSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->setScreenEnabled()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/CellBroadcastSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->updateChannelUIList()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/CellBroadcastSettings;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/settings/CellBroadcastSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/settings/CellBroadcastSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->displayMessage(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->displayMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/settings/CellBroadcastSettings;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/CellBroadcastSettings;->checkChannelIdExist(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastChannel;Lcom/mediatek/settings/CellBroadcastChannel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # Lcom/mediatek/settings/CellBroadcastChannel;
    .param p2, "x2"    # Lcom/mediatek/settings/CellBroadcastChannel;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/CellBroadcastSettings;->updateChannelToDatabase(Lcom/mediatek/settings/CellBroadcastChannel;Lcom/mediatek/settings/CellBroadcastChannel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/settings/CellBroadcastSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->queryChannelFromDatabase()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # Lcom/mediatek/settings/CellBroadcastChannel;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->showEditChannelDialog(Lcom/mediatek/settings/CellBroadcastChannel;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/settings/CellBroadcastSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->initChannelMap()V

    return-void
.end method

.method static synthetic access$2100(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->updateCurrentChannelAndLanguage(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/mediatek/settings/CellBroadcastSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->updateLanguageSummary()V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/settings/CellBroadcastSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->getCellBroadcastConfig(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/settings/CellBroadcastSettings;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/settings/CellBroadcastSettings;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->makeLanguageConfigArray()[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->checkChannelName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->checkChannelNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/CellBroadcastSettings;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->checkChannelIdExist(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # Lcom/mediatek/settings/CellBroadcastChannel;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->makeChannelConfigArray(Lcom/mediatek/settings/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastChannel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # Lcom/mediatek/settings/CellBroadcastChannel;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->insertChannelToDatabase(Lcom/mediatek/settings/CellBroadcastChannel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/settings/CellBroadcastSettings;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/settings/CellBroadcastSettings;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private checkChannelIdExist(I)Z
    .locals 3
    .param p1, "channelId"    # I

    .prologue
    .line 928
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 929
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 930
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 931
    const/4 v2, 0x1

    .line 934
    :goto_1
    return v2

    .line 929
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 934
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private checkChannelIdExist(II)Z
    .locals 6
    .param p1, "newChannelId"    # I
    .param p2, "keyId"    # I

    .prologue
    .line 938
    iget-object v5, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 939
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 940
    iget-object v5, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastChannel;

    .line 941
    .local v2, "tChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v3

    .line 942
    .local v3, "tempChannelId":I
    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v4

    .line 943
    .local v4, "tempKeyId":I
    if-ne v3, p1, :cond_0

    if-eq v4, p2, :cond_0

    .line 944
    const/4 v5, 0x1

    .line 947
    .end local v2    # "tChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    .end local v3    # "tempChannelId":I
    .end local v4    # "tempKeyId":I
    :goto_1
    return v5

    .line 939
    .restart local v2    # "tChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    .restart local v3    # "tempChannelId":I
    .restart local v4    # "tempKeyId":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 947
    .end local v2    # "tChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    .end local v3    # "tempChannelId":I
    .end local v4    # "tempKeyId":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private checkChannelName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 907
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 908
    :cond_0
    const-string p1, ""

    .line 910
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    .line 911
    const/4 v0, 0x0

    .line 913
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkChannelNumber(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 917
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 924
    :cond_0
    :goto_0
    return v1

    .line 920
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 921
    .local v0, "t":I
    const v2, 0xffff

    if-ge v0, v2, :cond_0

    if-ltz v0, :cond_0

    .line 924
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private clearChannel()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 450
    :cond_0
    return-void
.end method

.method private deleteChannelFromDatabase(Lcom/mediatek/settings/CellBroadcastChannel;)Z
    .locals 5
    .param p1, "oldChannel"    # Lcom/mediatek/settings/CellBroadcastChannel;

    .prologue
    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, "where":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private displayMessage(I)V
    .locals 2
    .param p1, "strId"    # I

    .prologue
    .line 837
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 838
    return-void
.end method

.method private displayMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 841
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 842
    return-void
.end method

.method private dumpConfigInfo(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .prologue
    .line 568
    const-string v0, "Settings/CellBroadcastSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump start for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const-string v0, "Settings/CellBroadcastSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FromServiceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ToServiceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v0, "Settings/CellBroadcastSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FromCodeId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ToCodeId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const-string v0, "Settings/CellBroadcastSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump end for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    return-void
.end method

.method private getCellBroadcastConfig(Z)V
    .locals 6
    .param p1, "reason"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x64

    .line 272
    if-eqz p1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mHandler:Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;

    invoke-virtual {v1, v3, v4, v3, v5}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 278
    .local v0, "msg":Landroid/os/Message;
    :goto_0
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mSimId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCellBroadcastSmsConfigGemini(Landroid/os/Message;I)V

    .line 284
    :goto_1
    if-eqz p1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v1, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->onStarted(Landroid/preference/Preference;Z)V

    .line 287
    :cond_0
    return-void

    .line 275
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mHandler:Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;

    const/16 v2, 0x65

    invoke-virtual {v1, v3, v4, v2, v5}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 281
    :cond_2
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    goto :goto_1
.end method

.method private getChannelObjectFromKey(Ljava/lang/String;)Lcom/mediatek/settings/CellBroadcastChannel;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 698
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/CellBroadcastChannel;

    return-object v0
.end method

.method private getLanguageObjectFromKey(Ljava/lang/String;)Lcom/mediatek/settings/CellBroadcastLanguage;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/CellBroadcastLanguage;

    return-object v0
.end method

.method private initChannelMap()V
    .locals 6

    .prologue
    .line 438
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    .line 439
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 440
    .local v2, "tSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 441
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v3}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v1

    .line 442
    .local v1, "id":I
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    .end local v1    # "id":I
    :cond_0
    return-void
.end method

.method private initLanguage()V
    .locals 0

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->initLanguageList()V

    .line 690
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->initLanguageMap()V

    .line 691
    return-void
.end method

.method private initLanguageList()V
    .locals 11

    .prologue
    const/16 v10, 0x16

    .line 663
    new-array v4, v10, [Z

    .line 664
    .local v4, "languageEnable":[Z
    new-array v5, v10, [Ljava/lang/String;

    .line 665
    .local v5, "languageId":[Ljava/lang/String;
    new-array v6, v10, [Ljava/lang/String;

    .line 666
    .local v6, "languageName":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a000e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 667
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a000f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 668
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v10, :cond_0

    .line 669
    aget-object v8, v5, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 670
    .local v2, "id":I
    aget-object v7, v6, v1

    .line 671
    .local v7, "name":Ljava/lang/String;
    aget-boolean v0, v4, v1

    .line 672
    .local v0, "enable":Z
    new-instance v3, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-direct {v3, v2, v7, v0}, Lcom/mediatek/settings/CellBroadcastLanguage;-><init>(ILjava/lang/String;Z)V

    .line 673
    .local v3, "language":Lcom/mediatek/settings/CellBroadcastLanguage;
    iget-object v8, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 675
    .end local v0    # "enable":Z
    .end local v2    # "id":I
    .end local v3    # "language":Lcom/mediatek/settings/CellBroadcastLanguage;
    .end local v7    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initLanguageMap()V
    .locals 5

    .prologue
    .line 678
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageMap:Ljava/util/HashMap;

    .line 679
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x16

    if-ge v0, v3, :cond_1

    .line 680
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastLanguage;

    .line 681
    .local v2, "language":Lcom/mediatek/settings/CellBroadcastLanguage;
    if-eqz v2, :cond_0

    .line 682
    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageId()I

    move-result v1

    .line 683
    .local v1, "id":I
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    .end local v1    # "id":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 686
    .end local v2    # "language":Lcom/mediatek/settings/CellBroadcastLanguage;
    :cond_1
    return-void
.end method

.method private initPreference()V
    .locals 1

    .prologue
    .line 172
    const-string v0, "button_language"

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CellBroadcastSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    .line 173
    const-string v0, "button_add_channel"

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CellBroadcastSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;

    .line 174
    const-string v0, "menu_channel_list"

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CellBroadcastSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelListPreference:Landroid/preference/PreferenceCategory;

    .line 175
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 177
    return-void
.end method

.method private insertChannelToDatabase(Lcom/mediatek/settings/CellBroadcastChannel;)Z
    .locals 4
    .param p1, "channel"    # Lcom/mediatek/settings/CellBroadcastChannel;

    .prologue
    .line 252
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 253
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v2, "number"

    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    const-string v2, "enable"

    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 257
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private makeChannelConfigArray(Lcom/mediatek/settings/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 8
    .param p1, "channel"    # Lcom/mediatek/settings/CellBroadcastChannel;

    .prologue
    const/4 v3, -0x1

    .line 359
    const/4 v0, 0x1

    new-array v6, v0, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 360
    .local v6, "objectList":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v1

    .line 361
    .local v1, "tChannelId":I
    const/4 v7, 0x0

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v5

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    aput-object v0, v6, v7

    .line 362
    return-object v6
.end method

.method private makeLanguageConfigArray()[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 13

    .prologue
    const/4 v3, -0x2

    const/4 v5, 0x1

    const/4 v1, -0x1

    .line 800
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 802
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 803
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 804
    .local v0, "cBConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    .end local v0    # "cBConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    return-object v1

    .line 806
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageId()I

    move-result v3

    .line 807
    .local v3, "beginId":I
    move v4, v3

    .line 808
    .local v4, "endId":I
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageState()Z

    move-result v5

    .line 809
    .local v5, "beginState":Z
    const/4 v6, 0x2

    .line 810
    .local v6, "i":I
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 811
    .local v9, "tSize":I
    const/4 v6, 0x2

    :goto_1
    if-ge v6, v9, :cond_3

    .line 812
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/settings/CellBroadcastLanguage;

    .line 813
    .local v8, "tLanguage":Lcom/mediatek/settings/CellBroadcastLanguage;
    invoke-virtual {v8}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageId()I

    move-result v10

    .line 814
    .local v10, "tempId":I
    invoke-virtual {v8}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageState()Z

    move-result v11

    .line 815
    .local v11, "tempState":Z
    add-int/lit8 v2, v4, 0x1

    if-ne v10, v2, :cond_2

    if-ne v5, v11, :cond_2

    .line 816
    move v4, v10

    .line 811
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 818
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 819
    .restart local v0    # "cBConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    move v3, v10

    .line 821
    move v4, v10

    .line 822
    move v5, v11

    goto :goto_2

    .line 826
    .end local v0    # "cBConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v8    # "tLanguage":Lcom/mediatek/settings/CellBroadcastLanguage;
    .end local v10    # "tempId":I
    .end local v11    # "tempState":Z
    :cond_3
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v6, v2, :cond_0

    .line 827
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    add-int/lit8 v12, v6, -0x1

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageId()I

    move-result v4

    .line 828
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 829
    .restart local v0    # "cBConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private queryChannelFromDatabase()Z
    .locals 11

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 453
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->clearChannel()V

    .line 454
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v0, "name"

    aput-object v0, v2, v9

    const-string v0, "number"

    aput-object v0, v2, v1

    const-string v0, "enable"

    aput-object v0, v2, v3

    .line 456
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 457
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 458
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    new-instance v6, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-direct {v6}, Lcom/mediatek/settings/CellBroadcastChannel;-><init>()V

    .line 460
    .local v6, "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelId(I)V

    .line 461
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setKeyId(I)V

    .line 462
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelName(Ljava/lang/String;)V

    .line 463
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v0, v9

    :goto_1
    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelState(Z)V

    .line 464
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 468
    .end local v6    # "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/IllegalArgumentException;
    move v0, v10

    .line 471
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    return v0

    .restart local v6    # "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    move v0, v10

    .line 463
    goto :goto_1

    .line 466
    .end local v6    # "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v9

    .line 471
    goto :goto_2
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 366
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 367
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 369
    return-void
.end method

.method private setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .locals 5
    .param p1, "objectList"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .prologue
    const/16 v4, 0x65

    const/4 v3, 0x0

    .line 788
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mHandler:Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v3, v4, v2}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 789
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 790
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mSimId:I

    invoke-virtual {v1, p1, p1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCellBroadcastSmsConfigGemini([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;I)V

    .line 795
    :goto_0
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v1, v3}, Lcom/mediatek/settings/CellBroadcastSettings;->onStarted(Landroid/preference/Preference;Z)V

    .line 796
    return-void

    .line 792
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p1, v0}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private setLanguageSummary([Z)V
    .locals 8
    .param p1, "temp"    # [Z

    .prologue
    const/4 v7, 0x0

    .line 218
    if-nez p1, :cond_0

    .line 249
    :goto_0
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x1

    .line 222
    .local v0, "allLanguagesFlag":Z
    array-length v5, p1

    .line 223
    .local v5, "tLength":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 224
    aget-boolean v6, p1, v2

    if-nez v6, :cond_2

    .line 225
    const/4 v0, 0x0

    .line 229
    :cond_1
    aput-boolean v0, p1, v7

    .line 230
    aget-boolean v6, p1, v7

    if-eqz v6, :cond_3

    .line 231
    iget-object v6, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    const v7, 0x7f08010d

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 223
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 234
    :cond_3
    const/4 v1, 0x0

    .line 235
    .local v1, "flag":I
    const-string v4, ""

    .line 236
    .local v4, "summary":Ljava/lang/String;
    const/4 v3, -0x1

    .line 237
    .local v3, "lastIndex":I
    const/4 v2, 0x1

    :goto_2
    if-ge v2, v5, :cond_5

    .line 238
    aget-boolean v6, p1, v2

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    if-ge v1, v6, :cond_4

    .line 239
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-virtual {v6}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 240
    add-int/lit8 v1, v1, 0x1

    .line 241
    move v3, v2

    .line 243
    :cond_4
    aget-boolean v6, p1, v2

    if-eqz v6, :cond_6

    if-le v2, v3, :cond_6

    const/4 v6, -0x1

    if-eq v3, v6, :cond_6

    .line 244
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 248
    :cond_5
    iget-object v6, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 237
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private setScreenEnabled()V
    .locals 3

    .prologue
    .line 951
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 952
    .local v0, "insertSim":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 953
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->finish()V

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 955
    iget v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mSimId:I

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    iget v1, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-eq v2, v1, :cond_0

    .line 956
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->finish()V

    goto :goto_0
.end method

.method private showAddChannelDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 301
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 302
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040035

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 304
    .local v3, "setView":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 306
    const v4, 0x7f080100

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 307
    const v4, 0x104000a

    new-instance v5, Lcom/mediatek/settings/CellBroadcastSettings$3;

    invoke-direct {v5, p0, v3}, Lcom/mediatek/settings/CellBroadcastSettings$3;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;Landroid/view/View;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 350
    const/high16 v4, 0x1040000

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 352
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 353
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-direct {p0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->requestInputMethod(Landroid/app/Dialog;)V

    .line 354
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 355
    return-void
.end method

.method private showEditChannelDialog(Lcom/mediatek/settings/CellBroadcastChannel;)V
    .locals 15
    .param p1, "oldChannel"    # Lcom/mediatek/settings/CellBroadcastChannel;

    .prologue
    .line 372
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v12

    .line 373
    .local v12, "keyId":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v8

    .line 374
    .local v8, "cid":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v9

    .line 375
    .local v9, "cname":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v7

    .line 376
    .local v7, "checked":Z
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 377
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040035

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 378
    .local v13, "setView":Landroid/view/View;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 379
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 380
    const v0, 0x7f080106

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 381
    const v0, 0x7f0b00fa

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 383
    .local v2, "channelName":Landroid/widget/EditText;
    const v0, 0x7f0b00fb

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 385
    .local v3, "channelNum":Landroid/widget/EditText;
    const v0, 0x7f0b00fc

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 387
    .local v4, "channelState":Landroid/widget/CheckBox;
    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 388
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 389
    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 391
    const v14, 0x104000a

    new-instance v0, Lcom/mediatek/settings/CellBroadcastSettings$4;

    move-object v1, p0

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/settings/CellBroadcastSettings$4;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/mediatek/settings/CellBroadcastChannel;)V

    invoke-virtual {v6, v14, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 431
    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 432
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 433
    .local v10, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 434
    invoke-direct {p0, v10}, Lcom/mediatek/settings/CellBroadcastSettings;->requestInputMethod(Landroid/app/Dialog;)V

    .line 435
    return-void
.end method

.method private showLanguageSelectDialog()V
    .locals 12

    .prologue
    const/16 v8, 0x16

    const/4 v11, 0x0

    .line 702
    new-array v6, v8, [Z

    .line 703
    .local v6, "temp":[Z
    new-array v7, v8, [Z

    .line 704
    .local v7, "temp2":[Z
    const/4 v0, 0x1

    .line 705
    .local v0, "allLanguagesFlag":Z
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v8, v6

    if-ge v2, v8, :cond_2

    .line 706
    iget-object v8, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/CellBroadcastLanguage;

    .line 707
    .local v5, "tLanguage":Lcom/mediatek/settings/CellBroadcastLanguage;
    if-eqz v5, :cond_1

    .line 708
    const-string v8, "Settings/CellBroadcastSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "language status "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageState()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-virtual {v5}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageState()Z

    move-result v8

    aput-boolean v8, v6, v2

    .line 710
    invoke-virtual {v5}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageState()Z

    move-result v8

    aput-boolean v8, v7, v2

    .line 714
    :goto_1
    aget-boolean v8, v6, v2

    if-nez v8, :cond_0

    .line 715
    const/4 v0, 0x0

    .line 705
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 712
    :cond_1
    const-string v8, "Settings/CellBroadcastSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showLanguageSelectDialog() init the language list failed when i="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 719
    .end local v5    # "tLanguage":Lcom/mediatek/settings/CellBroadcastLanguage;
    :cond_2
    const-string v8, "Settings/CellBroadcastSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "All language status "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v8, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-virtual {v8, v0}, Lcom/mediatek/settings/CellBroadcastLanguage;->setLanguageState(Z)V

    .line 721
    aput-boolean v0, v6, v11

    .line 722
    aput-boolean v0, v7, v11

    .line 723
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 724
    .local v1, "dlgBuilder":Landroid/app/AlertDialog$Builder;
    const v8, 0x7f080102

    invoke-virtual {p0, v8}, Lcom/mediatek/settings/CellBroadcastSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 725
    const v8, 0x7f0801c8

    new-instance v9, Lcom/mediatek/settings/CellBroadcastSettings$5;

    invoke-direct {v9, p0, v6, v7}, Lcom/mediatek/settings/CellBroadcastSettings$5;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;[Z[Z)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 755
    const v8, 0x7f0801cc

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 756
    new-instance v4, Lcom/mediatek/settings/CellBroadcastSettings$6;

    invoke-direct {v4, p0, v6}, Lcom/mediatek/settings/CellBroadcastSettings$6;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;[Z)V

    .line 780
    .local v4, "multiChoiceListener":Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    const v8, 0x7f0a000e

    invoke-virtual {v1, v8, v6, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 781
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 782
    .local v3, "languageDialog":Landroid/app/AlertDialog;
    if-eqz v3, :cond_3

    .line 783
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 785
    :cond_3
    return-void
.end method

.method private showUpdateDBErrorInfoDialog()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->onError(Landroid/preference/Preference;I)V

    .line 266
    return-void
.end method

.method private updateChannelToDatabase(Lcom/mediatek/settings/CellBroadcastChannel;Lcom/mediatek/settings/CellBroadcastChannel;)Z
    .locals 13
    .param p1, "oldChannel"    # Lcom/mediatek/settings/CellBroadcastChannel;
    .param p2, "newChannel"    # Lcom/mediatek/settings/CellBroadcastChannel;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 475
    const/4 v8, 0x4

    new-array v5, v8, [Ljava/lang/String;

    const-string v8, "_id"

    aput-object v8, v5, v10

    const-string v8, "name"

    aput-object v8, v5, v9

    const/4 v8, 0x2

    const-string v11, "number"

    aput-object v11, v5, v8

    const/4 v8, 0x3

    const-string v11, "enable"

    aput-object v11, v5, v8

    .line 476
    .local v5, "projection":[Ljava/lang/String;
    invoke-virtual {p2}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v2

    .line 477
    .local v2, "id":I
    invoke-virtual {p2}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v1

    .line 479
    .local v1, "enable":Z
    invoke-virtual {p2}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v4

    .line 480
    .local v4, "number":I
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 481
    .local v6, "values":Landroid/content/ContentValues;
    const-string v8, "_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 482
    const-string v8, "name"

    invoke-virtual {v6, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v8, "number"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 484
    const-string v11, "enable"

    if-eqz v1, :cond_0

    move v8, v9

    :goto_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 485
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 487
    .local v7, "where":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v11, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v6, v7, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :goto_1
    return v9

    .end local v7    # "where":Ljava/lang/String;
    :cond_0
    move v8, v10

    .line 484
    goto :goto_0

    .line 488
    .restart local v7    # "where":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    move v9, v10

    .line 489
    goto :goto_1
.end method

.method private updateChannelUIList()V
    .locals 11

    .prologue
    .line 181
    iget-object v9, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelListPreference:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 182
    iget-object v9, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 183
    .local v6, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 184
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 185
    .local v0, "channel":Landroid/preference/Preference;
    iget-object v9, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v5

    .line 186
    .local v5, "keyId":I
    iget-object v9, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "channelName":Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v1

    .line 188
    .local v1, "channelId":I
    iget-object v9, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v3

    .line 189
    .local v3, "channelState":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 190
    .local v8, "title":Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    new-instance v7, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-direct {v7, v5, v1, v2, v3}, Lcom/mediatek/settings/CellBroadcastChannel;-><init>(IILjava/lang/String;Z)V

    .line 192
    .local v7, "oldChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    if-eqz v3, :cond_0

    .line 193
    const v9, 0x7f08021d

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 198
    :goto_1
    new-instance v9, Lcom/mediatek/settings/CellBroadcastSettings$2;

    invoke-direct {v9, p0, v7}, Lcom/mediatek/settings/CellBroadcastSettings$2;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastChannel;)V

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 204
    iget-object v9, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelListPreference:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 183
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 195
    :cond_0
    const v9, 0x7f08021e

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 206
    .end local v0    # "channel":Landroid/preference/Preference;
    .end local v1    # "channelId":I
    .end local v2    # "channelName":Ljava/lang/String;
    .end local v3    # "channelState":Z
    .end local v5    # "keyId":I
    .end local v7    # "oldChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    .end local v8    # "title":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateChannelsWithSingleConfig(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .locals 11
    .param p1, "info"    # Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .prologue
    .line 505
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v1

    .line 506
    .local v1, "channelBeginIndex":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v2

    .line 507
    .local v2, "channelEndIndex":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v6

    .line 508
    .local v6, "state":Z
    const-string v8, "Settings/CellBroadcastSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateChannelsWithSingleConfig STATE = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v8, -0x1

    if-eq v1, v8, :cond_2

    .line 511
    move v3, v1

    .local v3, "j":I
    :goto_0
    if-gt v3, v2, :cond_2

    .line 512
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 513
    .local v4, "jStr":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/mediatek/settings/CellBroadcastSettings;->getChannelObjectFromKey(Ljava/lang/String;)Lcom/mediatek/settings/CellBroadcastChannel;

    move-result-object v0

    .line 514
    .local v0, "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {v0, v6}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelState(Z)V

    .line 511
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 518
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f08010e

    invoke-virtual {p0, v9}, Lcom/mediatek/settings/CellBroadcastSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 519
    .local v7, "tName":Ljava/lang/String;
    new-instance v5, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-direct {v5, v3, v7, v6}, Lcom/mediatek/settings/CellBroadcastChannel;-><init>(ILjava/lang/String;Z)V

    .line 520
    .local v5, "newChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    invoke-direct {p0, v5}, Lcom/mediatek/settings/CellBroadcastSettings;->insertChannelToDatabase(Lcom/mediatek/settings/CellBroadcastChannel;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 521
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V

    .line 523
    :cond_1
    iget-object v8, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v8, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 528
    .end local v0    # "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    .end local v3    # "j":I
    .end local v4    # "jStr":Ljava/lang/String;
    .end local v5    # "newChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    .end local v7    # "tName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private updateCurrentChannelAndLanguage(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 555
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 565
    :cond_0
    return-void

    .line 558
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 559
    .local v2, "number":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 560
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 561
    .local v1, "info":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-direct {p0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->updateLanguagesWithSingleConfig(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    .line 562
    invoke-direct {p0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->dumpConfigInfo(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    .line 563
    invoke-direct {p0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->updateChannelsWithSingleConfig(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    .line 559
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateLanguageSummary()V
    .locals 4

    .prologue
    .line 209
    const/16 v3, 0x16

    new-array v2, v3, [Z

    .line 210
    .local v2, "temp":[Z
    array-length v1, v2

    .line 211
    .local v1, "tLength":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 212
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-virtual {v3}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageState()Z

    move-result v3

    aput-boolean v3, v2, v0

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_0
    invoke-direct {p0, v2}, Lcom/mediatek/settings/CellBroadcastSettings;->setLanguageSummary([Z)V

    .line 215
    return-void
.end method

.method private updateLanguagesWithSingleConfig(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .locals 9
    .param p1, "info"    # Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .prologue
    const/4 v8, -0x2

    .line 531
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v4

    .line 532
    .local v4, "languageBeginIndex":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v5

    .line 533
    .local v5, "languageEndIndex":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    if-eq v4, v8, :cond_1

    .line 534
    move v1, v4

    .local v1, "j":I
    :goto_0
    if-gt v1, v5, :cond_3

    .line 535
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/settings/CellBroadcastSettings;->getLanguageObjectFromKey(Ljava/lang/String;)Lcom/mediatek/settings/CellBroadcastLanguage;

    move-result-object v3

    .line 536
    .local v3, "language":Lcom/mediatek/settings/CellBroadcastLanguage;
    if-eqz v3, :cond_0

    .line 537
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/mediatek/settings/CellBroadcastLanguage;->setLanguageState(Z)V

    .line 534
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 541
    .end local v1    # "j":I
    .end local v3    # "language":Lcom/mediatek/settings/CellBroadcastLanguage;
    :cond_1
    const-string v6, "Settings/CellBroadcastSettings"

    const-string v7, "Select all language!"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    if-ne v4, v8, :cond_3

    if-ne v5, v8, :cond_3

    .line 543
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v6, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 544
    iget-object v6, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/CellBroadcastLanguage;

    .line 545
    .restart local v3    # "language":Lcom/mediatek/settings/CellBroadcastLanguage;
    invoke-virtual {v3}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/settings/CellBroadcastSettings;->getLanguageObjectFromKey(Ljava/lang/String;)Lcom/mediatek/settings/CellBroadcastLanguage;

    move-result-object v2

    .line 546
    .local v2, "lang":Lcom/mediatek/settings/CellBroadcastLanguage;
    if-eqz v2, :cond_2

    .line 547
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/mediatek/settings/CellBroadcastLanguage;->setLanguageState(Z)V

    .line 543
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 552
    .end local v0    # "i":I
    .end local v2    # "lang":Lcom/mediatek/settings/CellBroadcastLanguage;
    .end local v3    # "language":Lcom/mediatek/settings/CellBroadcastLanguage;
    :cond_3
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v12, 0x0

    .line 846
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v7

    check-cast v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 847
    .local v7, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v6, v0, -0x3

    .line 848
    .local v6, "index":I
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/settings/CellBroadcastChannel;

    .line 849
    .local v11, "oldChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 879
    :goto_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 851
    :pswitch_0
    new-instance v8, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-direct {v8}, Lcom/mediatek/settings/CellBroadcastChannel;-><init>()V

    .line 852
    .local v8, "newChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    move-object v8, v11

    .line 853
    invoke-virtual {v11}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_1
    invoke-virtual {v8, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelState(Z)V

    .line 854
    invoke-virtual {v11}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v1

    .line 855
    .local v1, "tempOldChannelId":I
    new-array v9, v2, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 856
    .local v9, "objectList":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {v8}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v5

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    aput-object v0, v9, v12

    .line 858
    invoke-direct {p0, v11, v8}, Lcom/mediatek/settings/CellBroadcastSettings;->updateChannelToDatabase(Lcom/mediatek/settings/CellBroadcastChannel;Lcom/mediatek/settings/CellBroadcastChannel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    invoke-direct {p0, v9}, Lcom/mediatek/settings/CellBroadcastSettings;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    goto :goto_0

    .end local v1    # "tempOldChannelId":I
    .end local v9    # "objectList":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_0
    move v0, v12

    .line 853
    goto :goto_1

    .line 861
    .restart local v1    # "tempOldChannelId":I
    .restart local v9    # "objectList":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V

    goto :goto_0

    .line 865
    .end local v1    # "tempOldChannelId":I
    .end local v8    # "newChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    .end local v9    # "objectList":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :pswitch_1
    invoke-direct {p0, v11}, Lcom/mediatek/settings/CellBroadcastSettings;->showEditChannelDialog(Lcom/mediatek/settings/CellBroadcastChannel;)V

    goto :goto_0

    .line 868
    :pswitch_2
    invoke-virtual {v11, v12}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelState(Z)V

    .line 869
    invoke-direct {p0, v11}, Lcom/mediatek/settings/CellBroadcastSettings;->makeChannelConfigArray(Lcom/mediatek/settings/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v10

    .line 870
    .local v10, "objectList1":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-direct {p0, v11}, Lcom/mediatek/settings/CellBroadcastSettings;->deleteChannelFromDatabase(Lcom/mediatek/settings/CellBroadcastChannel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 871
    invoke-direct {p0, v10}, Lcom/mediatek/settings/CellBroadcastSettings;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    goto :goto_0

    .line 873
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V

    goto :goto_0

    .line 849
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "simId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mSimId:I

    .line 145
    iget v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mSimId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 146
    sget-object v1, Lcom/mediatek/settings/CellBroadcastSettings;->CHANNEL_URI1:Landroid/net/Uri;

    iput-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    .line 149
    :cond_0
    const-string v1, "CellBroadcastSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sim Id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 152
    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->addPreferencesFromResource(I)V

    .line 153
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->initPreference()V

    .line 154
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->initLanguage()V

    .line 155
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/settings/CellBroadcastSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/16 v6, 0xa

    const/4 v8, 0x0

    .line 884
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v3, p3

    .line 885
    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 886
    .local v3, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-nez v3, :cond_1

    .line 887
    const-string v5, "Settings/CellBroadcastSettings"

    const-string v6, "onCreateContextMenu,menuInfo is null"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    iget v4, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 891
    .local v4, "position":I
    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    .line 892
    add-int/lit8 v2, v4, -0x3

    .line 893
    .local v2, "index":I
    iget-object v5, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/CellBroadcastChannel;

    .line 894
    .local v0, "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    invoke-virtual {v0}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v1

    .line 895
    .local v1, "channelName":Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 896
    invoke-virtual {v0}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 897
    const v5, 0x7f08021e

    invoke-interface {p1, v8, v6, v8, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 901
    :goto_1
    const/4 v5, 0x1

    const/16 v6, 0xb

    const v7, 0x7f080107

    invoke-interface {p1, v5, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 902
    const/4 v5, 0x2

    const/16 v6, 0xc

    const v7, 0x7f080108

    invoke-interface {p1, v5, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 899
    :cond_2
    const v5, 0x7f08021d

    invoke-interface {p1, v8, v6, v8, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onDestroy()V

    .line 168
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CellBroadcastSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 290
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->showLanguageSelectDialog()V

    .line 297
    :goto_0
    return v0

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->showAddChannelDialog()V

    goto :goto_0

    .line 297
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/settings/CellBroadcastSettings;->getCellBroadcastConfig(Z)V

    .line 164
    return-void
.end method
