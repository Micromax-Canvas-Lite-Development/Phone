.class public Lcom/android/phone/sip/SipSettings;
.super Landroid/preference/PreferenceActivity;
.source "SipSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/sip/SipSettings$SipPreference;
    }
.end annotation


# static fields
.field private static final BUTTON_SIP_RECEIVE_CALLS:Ljava/lang/String; = "sip_receive_calls_key"

.field static final KEY_SIP_PROFILE:Ljava/lang/String; = "sip_profile"

.field private static final MENU_ADD_ACCOUNT:I = 0x1

.field private static final PREF_SIP_LIST:Ljava/lang/String; = "sip_account_list"

.field private static final REQUEST_ADD_OR_EDIT_SIP_PROFILE:I = 0x1

.field public static final SIP_SHARED_PREFERENCES:Ljava/lang/String; = "SIP_PREFERENCES"

.field private static final TAG:Ljava/lang/String; = "SipSettings"


# instance fields
.field private mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

.field private mCallManager:Lcom/android/internal/telephony/CallManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProfile:Landroid/net/sip/SipProfile;

.field private mProfileDb:Lcom/android/phone/sip/SipProfileDb;

.field private mSipListContainer:Landroid/preference/PreferenceCategory;

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mSipPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/sip/SipSettings$SipPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSipProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 118
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Lcom/android/phone/sip/SipSettings;->mUid:I

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/sip/SipSettings;
    .param p1, "x1"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->getProfileName(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/sip/SipSettings;)Lcom/android/phone/sip/SipSharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/sip/SipSettings;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/sip/SipSettings;
    .param p1, "x1"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->unregisterProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/sip/SipSettings;)Landroid/net/sip/SipManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/sip/SipSettings;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/sip/SipSettings;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/sip/SipSettings;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mSipPreferenceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/sip/SipSettings;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/sip/SipSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/sip/SipSettings;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/phone/sip/SipSettings;->mUid:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/sip/SipSettings;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/sip/SipSettings;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/sip/SipSettings;)Landroid/net/sip/SipProfile;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/sip/SipSettings;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/sip/SipSettings;
    .param p1, "x1"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->addProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/sip/SipSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/sip/SipSettings;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->updateProfilesStatus()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/sip/SipSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/sip/SipSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->handleSipReceiveCallsOption(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/sip/SipSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/sip/SipSettings;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->retrieveSipLists()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/sip/SipSettings;
    .param p1, "x1"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->handleProfileClick(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method private addPreferenceFor(Landroid/net/sip/SipProfile;)V
    .locals 4
    .param p1, "p"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 378
    const-string v1, "SipSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPreferenceFor profile uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUri()Ljavax/sip/address/SipURI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance v0, Lcom/android/phone/sip/SipSettings$SipPreference;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/phone/sip/SipSettings$SipPreference;-><init>(Lcom/android/phone/sip/SipSettings;Landroid/content/Context;Landroid/net/sip/SipProfile;)V

    .line 380
    .local v0, "pref":Lcom/android/phone/sip/SipSettings$SipPreference;
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 383
    new-instance v1, Lcom/android/phone/sip/SipSettings$5;

    invoke-direct {v1, p0}, Lcom/android/phone/sip/SipSettings$5;-><init>(Lcom/android/phone/sip/SipSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/sip/SipSettings$SipPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 391
    return-void
.end method

.method private addProfile(Landroid/net/sip/SipProfile;)V
    .locals 4
    .param p1, "p"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->createRegistrationListener()Landroid/net/sip/SipRegistrationListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/sip/SipManager;->setRegistrationListener(Ljava/lang/String;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->addPreferenceFor(Landroid/net/sip/SipProfile;)V

    .line 445
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SipSettings"

    const-string v2, "cannot set registration listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createRegistrationListener()Landroid/net/sip/SipRegistrationListener;
    .locals 1

    .prologue
    .line 468
    new-instance v0, Lcom/android/phone/sip/SipSettings$9;

    invoke-direct {v0, p0}, Lcom/android/phone/sip/SipSettings$9;-><init>(Lcom/android/phone/sip/SipSettings;)V

    return-object v0
.end method

.method private getPackageNameFromUid(I)Ljava/lang/String;
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 160
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "pkgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 163
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 167
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pkgs":[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SipSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot find name of uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getProfileFromList(Landroid/net/sip/SipProfile;)Landroid/net/sip/SipProfile;
    .locals 4
    .param p1, "activeProfile"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 368
    iget-object v2, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/sip/SipProfile;

    .line 369
    .local v1, "p":Landroid/net/sip/SipProfile;
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    .end local v1    # "p":Landroid/net/sip/SipProfile;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getProfileName(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 3
    .param p1, "profile"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 313
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "profileName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    :cond_0
    return-object v0
.end method

.method private handleProfileClick(Landroid/net/sip/SipProfile;)V
    .locals 4
    .param p1, "profile"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 394
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v0

    .line 395
    .local v0, "uid":I
    iget v1, p0, Lcom/android/phone/sip/SipSettings;->mUid:I

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 396
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->startSipEditor(Landroid/net/sip/SipProfile;)V

    .line 412
    :goto_0
    return-void

    .line 399
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080366

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080368

    new-instance v3, Lcom/android/phone/sip/SipSettings$6;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/sip/SipSettings$6;-><init>(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private declared-synchronized handleSipReceiveCallsOption(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/phone/sip/SipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v5, p1}, Lcom/android/phone/sip/SipSharedPreferences;->setReceivingCallsEnabled(Z)V

    .line 261
    iget-object v5, p0, Lcom/android/phone/sip/SipSettings;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v5}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v3

    .line 262
    .local v3, "sipProfileList":Ljava/util/List;, "Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    .line 263
    .local v2, "p":Landroid/net/sip/SipProfile;
    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "sipUri":Ljava/lang/String;
    invoke-direct {p0, v2, p1}, Lcom/android/phone/sip/SipSettings;->updateAutoRegistrationFlag(Landroid/net/sip/SipProfile;Z)Landroid/net/sip/SipProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 266
    if-eqz p1, :cond_1

    .line 267
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-static {}, Lcom/android/phone/SipUtil;->createIncomingCallPendingIntent()Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v6, v7}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "SipSettings"

    const-string v6, "register failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "p":Landroid/net/sip/SipProfile;
    .end local v3    # "sipProfileList":Ljava/util/List;, "Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    .end local v4    # "sipUri":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 270
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "p":Landroid/net/sip/SipProfile;
    .restart local v3    # "sipProfileList":Ljava/util/List;, "Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    .restart local v4    # "sipUri":Ljava/lang/String;
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v5, v4}, Landroid/net/sip/SipManager;->close(Ljava/lang/String;)V

    .line 271
    iget-object v5, p0, Lcom/android/phone/sip/SipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v5, v4}, Lcom/android/phone/sip/SipSharedPreferences;->isPrimaryAccount(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 273
    iget-object v5, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v5, v2}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 280
    .end local v2    # "p":Landroid/net/sip/SipProfile;
    .end local v4    # "sipUri":Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->updateProfilesStatus()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 281
    monitor-exit p0

    return-void
.end method

.method private processActiveProfilesFromSipService()V
    .locals 7

    .prologue
    .line 356
    iget-object v6, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v6}, Landroid/net/sip/SipManager;->getListOfProfiles()[Landroid/net/sip/SipProfile;

    move-result-object v0

    .line 357
    .local v0, "activeList":[Landroid/net/sip/SipProfile;
    move-object v2, v0

    .local v2, "arr$":[Landroid/net/sip/SipProfile;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 358
    .local v1, "activeProfile":Landroid/net/sip/SipProfile;
    invoke-direct {p0, v1}, Lcom/android/phone/sip/SipSettings;->getProfileFromList(Landroid/net/sip/SipProfile;)Landroid/net/sip/SipProfile;

    move-result-object v5

    .line 359
    .local v5, "profile":Landroid/net/sip/SipProfile;
    if-nez v5, :cond_0

    .line 360
    iget-object v6, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/net/sip/SipProfile;->setCallingUid(I)V

    goto :goto_1

    .line 365
    .end local v1    # "activeProfile":Landroid/net/sip/SipProfile;
    .end local v5    # "profile":Landroid/net/sip/SipProfile;
    :cond_1
    return-void
.end method

.method private registerForReceiveCallsCheckBox()V
    .locals 2

    .prologue
    .line 240
    const-string v0, "sip_receive_calls_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/SipSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

    .line 242
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 244
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/phone/sip/SipSettings$2;

    invoke-direct {v1, p0}, Lcom/android/phone/sip/SipSettings$2;-><init>(Lcom/android/phone/sip/SipSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 257
    return-void
.end method

.method private retrieveSipLists()V
    .locals 6

    .prologue
    .line 321
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipPreferenceMap:Ljava/util/Map;

    .line 322
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v3}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    .line 323
    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->processActiveProfilesFromSipService()V

    .line 324
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    new-instance v4, Lcom/android/phone/sip/SipSettings$4;

    invoke-direct {v4, p0}, Lcom/android/phone/sip/SipSettings$4;-><init>(Lcom/android/phone/sip/SipSettings;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 335
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 336
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    .line 337
    .local v2, "p":Landroid/net/sip/SipProfile;
    invoke-direct {p0, v2}, Lcom/android/phone/sip/SipSettings;->addPreferenceFor(Landroid/net/sip/SipProfile;)V

    goto :goto_0

    .line 340
    .end local v2    # "p":Landroid/net/sip/SipProfile;
    :cond_0
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v3}, Lcom/android/phone/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 353
    :cond_1
    return-void

    .line 343
    :cond_2
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    .line 344
    .restart local v2    # "p":Landroid/net/sip/SipProfile;
    iget v3, p0, Lcom/android/phone/sip/SipSettings;->mUid:I

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 346
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->createRegistrationListener()Landroid/net/sip/SipRegistrationListener;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/sip/SipManager;->setRegistrationListener(Ljava/lang/String;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Landroid/net/sip/SipException;
    const-string v3, "SipSettings"

    const-string v4, "cannot set registration listener"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "profileUri"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 456
    new-instance v0, Lcom/android/phone/sip/SipSettings$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/phone/sip/SipSettings$8;-><init>(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/SipSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 465
    return-void
.end method

.method private startSipEditor(Landroid/net/sip/SipProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/phone/sip/SipSettings;->mProfile:Landroid/net/sip/SipProfile;

    .line 449
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/sip/SipEditor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 450
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "sip_profile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 451
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/sip/SipSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 452
    return-void
.end method

.method private unregisterProfile(Landroid/net/sip/SipProfile;)V
    .locals 3
    .param p1, "p"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 416
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/sip/SipSettings$7;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/sip/SipSettings$7;-><init>(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V

    const-string v2, "unregisterProfile"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 426
    return-void
.end method

.method private updateAutoRegistrationFlag(Landroid/net/sip/SipProfile;Z)Landroid/net/sip/SipProfile;
    .locals 4
    .param p1, "p"    # Landroid/net/sip/SipProfile;
    .param p2, "enabled"    # Z

    .prologue
    .line 285
    new-instance v2, Landroid/net/sip/SipProfile$Builder;

    invoke-direct {v2, p1}, Landroid/net/sip/SipProfile$Builder;-><init>(Landroid/net/sip/SipProfile;)V

    invoke-virtual {v2, p2}, Landroid/net/sip/SipProfile$Builder;->setAutoRegistration(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v1

    .line 289
    .local v1, "newProfile":Landroid/net/sip/SipProfile;
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/sip/SipSettings;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v2, p1}, Lcom/android/phone/sip/SipProfileDb;->deleteProfile(Landroid/net/sip/SipProfile;)V

    .line 290
    iget-object v2, p0, Lcom/android/phone/sip/SipSettings;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v2, v1}, Lcom/android/phone/sip/SipProfileDb;->saveProfile(Landroid/net/sip/SipProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-object v1

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SipSettings"

    const-string v3, "updateAutoRegistrationFlag error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateProfilesStatus()V
    .locals 2

    .prologue
    .line 298
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/sip/SipSettings$3;

    invoke-direct {v1, p0}, Lcom/android/phone/sip/SipSettings$3;-><init>(Lcom/android/phone/sip/SipSettings;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 310
    return-void
.end method


# virtual methods
.method deleteProfile(Landroid/net/sip/SipProfile;)V
    .locals 3
    .param p1, "p"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 429
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 430
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/sip/SipSettings$SipPreference;

    .line 431
    .local v0, "pref":Lcom/android/phone/sip/SipSettings$SipPreference;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 434
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 214
    const-string v0, "SipSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivity Result:[requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[mProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/sip/SipSettings;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 218
    :cond_0
    new-instance v0, Lcom/android/phone/sip/SipSettings$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/phone/sip/SipSettings$1;-><init>(Lcom/android/phone/sip/SipSettings;Landroid/content/Intent;I)V

    invoke-virtual {v0}, Lcom/android/phone/sip/SipSettings$1;->start()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    .line 175
    new-instance v1, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v1, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 176
    new-instance v1, Lcom/android/phone/sip/SipProfileDb;

    invoke-direct {v1, p0}, Lcom/android/phone/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/sip/SipSettings;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    .line 178
    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/sip/SipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 179
    const v1, 0x7f040044

    invoke-virtual {p0, v1}, Lcom/android/phone/sip/SipSettings;->setContentView(I)V

    .line 180
    const v1, 0x7f06001d

    invoke-virtual {p0, v1}, Lcom/android/phone/sip/SipSettings;->addPreferencesFromResource(I)V

    .line 181
    const-string v1, "sip_account_list"

    invoke-virtual {p0, v1}, Lcom/android/phone/sip/SipSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    .line 182
    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->registerForReceiveCallsCheckBox()V

    .line 183
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/sip/SipSettings;->mCallManager:Lcom/android/internal/telephony/CallManager;

    .line 185
    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 186
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 188
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 190
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 521
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 522
    const v0, 0x7f08035f

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 524
    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 208
    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/SipSettings;->unregisterForContextMenu(Landroid/view/View;)V

    .line 209
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 535
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 536
    .local v0, "itemId":I
    sparse-switch v0, :sswitch_data_0

    .line 546
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 538
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->finish()V

    goto :goto_0

    .line 541
    :sswitch_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/phone/sip/SipSettings;->startSipEditor(Landroid/net/sip/SipProfile;)V

    goto :goto_0

    .line 536
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x1

    .line 529
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/sip/SipSettings;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 530
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 529
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 195
    const-string v0, "SipSettings"

    const-string v1, "onResume: start update the list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->updateProfilesStatus()V

    .line 197
    const-string v0, "SipSettings"

    const-string v1, "onResume: finish update the list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method
