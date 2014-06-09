.class public Lcom/mediatek/settings/CallRejectListSetting;
.super Landroid/preference/PreferenceActivity;
.source "CallRejectListSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/CallRejectListSetting$UpdateUIContactsTask;,
        Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;
    }
.end annotation


# static fields
.field public static final CACHED_FORMATTED_NUMBER:I = 0xf

.field public static final CACHED_LOOKUP_URI:I = 0xb

.field public static final CACHED_MATCHED_NUMBER:I = 0xc

.field public static final CACHED_NAME:I = 0x8

.field public static final CACHED_NORMALIZED_NUMBER:I = 0xd

.field public static final CACHED_NUMBER_LABEL:I = 0xa

.field public static final CACHED_NUMBER_TYPE:I = 0x9

.field public static final CACHED_PHOTO_ID:I = 0xe

.field private static final CALLER_DATA_ID_PROJECTION:[Ljava/lang/String;

.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final CALLLOG_URI:Landroid/net/Uri;

.field private static final CALLSVIEW_DATA_ID_COLUMN:I = 0x2

.field private static final CALLSVIEW_ID_COLUMN:I = 0x0

.field private static final CALLSVIEW_NUMBER_COLUMN:I = 0x1

.field private static final CALL_LIST_DIALOG_EDIT:I = 0x0

.field private static final CALL_LIST_DIALOG_SELECT:I = 0x1

.field private static final CALL_LIST_DIALOG_WAIT:I = 0x2

.field public static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field private static final CALL_LOG_SEARCH:Ljava/lang/String; = "android.intent.action.SEARCH"

.field public static final CALL_PROJECTION_CALLS_JOIN_DATAVIEW:[Ljava/lang/String;

.field private static final CALL_REJECT_CONTACTS_REQUEST:I = 0x7d

.field private static final CALL_REJECT_LOG_REQUEST:I = 0x7e

.field public static final CALL_TYPE:I = 0x4

.field private static final CONTACTS_ADD_ACTION:Ljava/lang/String; = "android.intent.action.contacts.list.PICKMULTIPHONES"

.field private static final CONTACTS_ADD_ACTION_RESULT:Ljava/lang/String; = "com.mediatek.contacts.list.pickdataresult"

.field private static final CONTACT_NAME_COLUMN:I = 0x3

.field private static final CONTACT_URI:Landroid/net/Uri;

.field public static final COUNTRY_ISO:I = 0x5

.field private static final DATA_DATA1_COLUMN:I = 0x1

.field private static final DATA_DATA2_COLUMN:I = 0x2

.field private static final DATA_ID_COLUMN:I = 0x0

.field private static final DATA_RAW_CONTACT_ID_COLUMN:I = 0x3

.field public static final DATE:I = 0x2

.field public static final DURATION:I = 0x3

.field private static final EVENT_HANDLER_MESSAGE_WAIT:I = 0x0

.field public static final GEOCODED_LOCATION:I = 0x7

.field public static final ID:I = 0x0

.field private static final ID_INDEX:I = 0x0

.field public static final IS_READ:I = 0x10

.field private static final MENU_ID_ADD:I = 0x3

.field private static final MENU_ID_DELETE:I = 0x1

.field private static final NAME_INDEX:I = 0x3

.field public static final NUMBER:I = 0x1

.field private static final NUMBER_INDEX:I = 0x1

.field private static final PHONE_ID_COLUMN:I = 0x0

.field private static final PHONE_LABEL_COLUMN:I = 0x2

.field private static final PHONE_NUMBER_COLUMN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CallRejectListSetting"

.field private static final TYPE_INDEX:I = 0x2

.field private static final URI:Landroid/net/Uri;

.field public static final VOICEMAIL_URI:I = 0x6

.field private static final mCallRejectViewCallLogUri:Landroid/net/Uri;


# instance fields
.field private mAddBtn:Landroid/widget/Button;

.field private mAddContactsBtn:Landroid/widget/ImageButton;

.field private mAddContactsTask:Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;

.field private mDeleteBtn:Landroid/widget/Button;

.field private mDialogCancelBtn:Landroid/widget/Button;

.field private mDialogSaveBtn:Landroid/widget/Button;

.field private mListView:Landroid/widget/ListView;

.field private mNumberEditText:Landroid/widget/EditText;

.field private mPhoneNumberFromContacts:Ljava/lang/String;

.field private mResultIntent:Landroid/content/Intent;

.field private mType:Ljava/lang/String;

.field private mUpdatUIContactsTask:Lcom/mediatek/settings/CallRejectListSetting$UpdateUIContactsTask;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const-string v0, "content://reject/list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/CallRejectListSetting;->URI:Landroid/net/Uri;

    .line 54
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/settings/CallRejectListSetting;->CONTACT_URI:Landroid/net/Uri;

    .line 55
    const-string v0, "content://call_log/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/CallRejectListSetting;->CALLLOG_URI:Landroid/net/Uri;

    .line 67
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/settings/CallRejectListSetting;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 79
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "voicemail_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lookup_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "matched_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "formatted_number"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "is_read"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/settings/CallRejectListSetting;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 117
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "data2"

    aput-object v1, v0, v5

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/settings/CallRejectListSetting;->CALLER_DATA_ID_PROJECTION:[Ljava/lang/String;

    .line 128
    const-string v0, "content://call_log/callsjoindataview"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/CallRejectListSetting;->mCallRejectViewCallLogUri:Landroid/net/Uri;

    .line 129
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "data_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/settings/CallRejectListSetting;->CALL_PROJECTION_CALLS_JOIN_DATAVIEW:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 151
    iput-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsTask:Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;

    .line 152
    iput-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mUpdatUIContactsTask:Lcom/mediatek/settings/CallRejectListSetting$UpdateUIContactsTask;

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/CallRejectListSetting;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CallRejectListSetting;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mResultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/CallRejectListSetting;IILandroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CallRejectListSetting;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/settings/CallRejectListSetting;->updataCallback(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/CallRejectListSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CallRejectListSetting;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/mediatek/settings/CallRejectListSetting;->showNumbers()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/settings/CallRejectListSetting;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CallRejectListSetting;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/CallRejectListSetting;->updateUICallback(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/settings/CallRejectListSetting;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CallRejectListSetting;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mNumberEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/CallRejectListSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CallRejectListSetting;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/CallRejectListSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CallRejectListSetting;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CallRejectListSetting;->allWhite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/settings/CallRejectListSetting;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CallRejectListSetting;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/CallRejectListSetting;->insertNumbers(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private allWhite(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 784
    if-eqz p1, :cond_0

    .line 785
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 787
    :cond_0
    return-object p1
.end method

.method private equalsNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "number1"    # Ljava/lang/String;
    .param p2, "number2"    # Ljava/lang/String;

    .prologue
    .line 724
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 725
    :cond_0
    const/4 v0, 0x0

    .line 734
    :goto_0
    return v0

    .line 727
    :cond_1
    const/4 v0, 0x0

    .line 729
    .local v0, "isEquals":Z
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 730
    const/4 v0, 0x1

    goto :goto_0

    .line 732
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private insert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 738
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 739
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "Number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v1, p0, Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 741
    const-string v1, "Type"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    :goto_0
    const-string v1, "Name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/settings/CallRejectListSetting;->URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 747
    return-void

    .line 743
    :cond_0
    const-string v1, "Type"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private insertNumbers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 700
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/settings/CallRejectListSetting;->URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    const-string v4, "Number"

    aput-object v4, v2, v11

    const-string v4, "type"

    aput-object v4, v2, v12

    const/4 v4, 0x3

    const-string v5, "Name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 702
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 721
    :goto_0
    return-void

    .line 705
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 707
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 708
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 709
    .local v7, "id":Ljava/lang/String;
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 710
    .local v8, "numberDB":Ljava/lang/String;
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 712
    .local v9, "type":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/mediatek/settings/CallRejectListSetting;->equalsNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 714
    invoke-direct {p0, v7, p1, p2, v9}, Lcom/mediatek/settings/CallRejectListSetting;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 717
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 719
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "numberDB":Ljava/lang/String;
    .end local v9    # "type":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 720
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/CallRejectListSetting;->insert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showNumbers()V
    .locals 13

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    .line 386
    .local v11, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 388
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/settings/CallRejectListSetting;->URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Number"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 390
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 412
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 395
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 396
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 397
    .local v7, "id":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 398
    .local v9, "numberDB":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 399
    .local v12, "type":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 400
    .local v8, "name":Ljava/lang/String;
    const-string v0, "3"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "2"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "video"

    iget-object v1, p0, Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "voice"

    iget-object v1, p0, Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 403
    :cond_2
    new-instance v10, Landroid/preference/Preference;

    invoke-direct {v10, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 404
    .local v10, "preference":Landroid/preference/Preference;
    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 405
    invoke-virtual {v10, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 406
    invoke-virtual {v11, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 408
    .end local v10    # "preference":Landroid/preference/Preference;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 410
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "numberDB":Ljava/lang/String;
    .end local v12    # "type":Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 411
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private updataCallback(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 553
    packed-switch p2, :pswitch_data_0

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 555
    :pswitch_0
    const/16 v3, 0x7d

    if-ne p1, v3, :cond_1

    .line 556
    const-string v3, "com.mediatek.contacts.list.pickdataresult"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 557
    .local v1, "contactId":[J
    if-eqz v1, :cond_0

    array-length v3, v1

    if-ltz v3, :cond_0

    .line 560
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsTask:Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;

    invoke-virtual {v3}, Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 561
    aget-wide v3, v1, v2

    long-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/mediatek/settings/CallRejectListSetting;->updateContactsNumbers(I)V

    .line 560
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 563
    .end local v1    # "contactId":[J
    .end local v2    # "i":I
    :cond_1
    const/16 v3, 0x7e

    if-ne p1, v3, :cond_0

    .line 564
    const-string v3, "calllogids"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "callLogId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/settings/CallRejectListSetting;->updateCallLogNumbers(Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 750
    if-nez p1, :cond_0

    .line 781
    :goto_0
    return-void

    .line 753
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 754
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v5, "Number"

    invoke-virtual {v0, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const/4 v4, 0x0

    .line 759
    .local v4, "typeInt":I
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 764
    :goto_1
    iget-object v5, p0, Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 765
    const-string v5, "Type"

    or-int/lit8 v6, v4, 0x2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :goto_2
    const-string v5, "Name"

    invoke-virtual {v0, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :try_start_1
    sget-object v5, Lcom/mediatek/settings/CallRejectListSetting;->URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 776
    .local v2, "existNumberURI":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 777
    .local v3, "result":I
    const-string v5, "CallRejectListSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 778
    .end local v2    # "existNumberURI":Landroid/net/Uri;
    .end local v3    # "result":I
    :catch_0
    move-exception v1

    .line 779
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "CallRejectListSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseInt failed, the index is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 760
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 761
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string v5, "CallRejectListSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseInt failed, the typeInt is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 767
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const-string v5, "Type"

    or-int/lit8 v6, v4, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateCallLogNumbers(I)V
    .locals 24
    .param p1, "id"    # I

    .prologue
    .line 596
    sget-object v3, Lcom/mediatek/settings/CallRejectListSetting;->CALLLOG_URI:Landroid/net/Uri;

    move/from16 v0, p1

    int-to-long v7, v0

    invoke-static {v3, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 597
    .local v4, "existNumberURI":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/mediatek/settings/CallRejectListSetting;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 598
    .local v13, "cursor":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 599
    const-string v3, "CallRejectListSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "----updateCallLogNumbers---[calllogid"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]-------"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const-string v18, ""

    .line 602
    .local v18, "data_id":Ljava/lang/String;
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_5

    .line 603
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/settings/CallRejectListSetting;->allWhite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 604
    .local v21, "number":Ljava/lang/String;
    const/16 v3, 0x8

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 605
    .local v20, "name":Ljava/lang/String;
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 606
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0800e0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 608
    :cond_1
    const-string v3, "CallRejectListSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCallLogNumbers----[number:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]---[name"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]-[calllogid"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]-----"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    sget-object v3, Lcom/mediatek/settings/CallRejectListSetting;->mCallRejectViewCallLogUri:Landroid/net/Uri;

    move/from16 v0, p1

    int-to-long v7, v0

    invoke-static {v3, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 611
    .local v6, "viewexistNumberURI":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcom/mediatek/settings/CallRejectListSetting;->CALL_PROJECTION_CALLS_JOIN_DATAVIEW:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 613
    .local v23, "viewcursor":Landroid/database/Cursor;
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 615
    :try_start_1
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    .line 616
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/settings/CallRejectListSetting;->allWhite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 617
    const/4 v3, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/settings/CallRejectListSetting;->allWhite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 618
    const-string v3, "CallRejectListSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCallLogNumbers1----[number:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]----[data_id"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]----"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 621
    :cond_2
    :try_start_2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 624
    const-string v22, ""

    .line 625
    .local v22, "raw_id":Ljava/lang/String;
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 626
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0800e0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 627
    const-string v3, "CallRejectListSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCallLogNumbers:-------[data_id"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]--------"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :goto_0
    if-eqz v22, :cond_4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 650
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0800e0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 651
    const-string v3, "CallRejectListSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCallLogNumbers::-------[raw_id"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]--------"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/mediatek/settings/CallRejectListSetting;->insertNumbers(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 678
    .end local v6    # "viewexistNumberURI":Landroid/net/Uri;
    .end local v20    # "name":Ljava/lang/String;
    .end local v21    # "number":Ljava/lang/String;
    .end local v22    # "raw_id":Ljava/lang/String;
    .end local v23    # "viewcursor":Landroid/database/Cursor;
    :cond_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 680
    return-void

    .line 621
    .restart local v6    # "viewexistNumberURI":Landroid/net/Uri;
    .restart local v20    # "name":Ljava/lang/String;
    .restart local v21    # "number":Ljava/lang/String;
    .restart local v23    # "viewcursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 678
    .end local v6    # "viewexistNumberURI":Landroid/net/Uri;
    .end local v20    # "name":Ljava/lang/String;
    .end local v21    # "number":Ljava/lang/String;
    .end local v23    # "viewcursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 630
    .restart local v6    # "viewexistNumberURI":Landroid/net/Uri;
    .restart local v20    # "name":Ljava/lang/String;
    .restart local v21    # "number":Ljava/lang/String;
    .restart local v22    # "raw_id":Ljava/lang/String;
    .restart local v23    # "viewcursor":Landroid/database/Cursor;
    :cond_6
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/mediatek/settings/CallRejectListSetting;->CONTACT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/mediatek/settings/CallRejectListSetting;->CALLER_DATA_ID_PROJECTION:[Ljava/lang/String;

    const-string v10, "_id=?"

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v18, v11, v3

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 636
    .local v14, "cursorData_id":Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 638
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_7

    .line 639
    const/4 v3, 0x3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/settings/CallRejectListSetting;->allWhite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 640
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 641
    .local v16, "data1":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 642
    .local v17, "data2":Ljava/lang/String;
    const-string v3, "CallRejectListSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCallLogNumbers2:data_id:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "raw_id:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "data1:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "data2:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 645
    .end local v16    # "data1":Ljava/lang/String;
    .end local v17    # "data2":Ljava/lang/String;
    :cond_7
    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v3

    .line 654
    .end local v14    # "cursorData_id":Landroid/database/Cursor;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v9, v3

    const/4 v3, 0x1

    const-string v5, "data1"

    aput-object v5, v9, v3

    const/4 v3, 0x2

    const-string v5, "raw_contact_id"

    aput-object v5, v9, v3

    const-string v10, "raw_contact_id=? AND mimetype=\'vnd.android.cursor.item/name\'"

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v22, v11, v3

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 660
    .local v15, "cursorName":Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 661
    const-string v3, "CallRejectListSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCallLogNumbers3..raw_id:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "--MIMETYPE:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "vnd.android.cursor.item/name"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 663
    :goto_2
    :try_start_7
    invoke-interface {v15}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_9

    .line 664
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 665
    .local v19, "data_idt":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/settings/CallRejectListSetting;->allWhite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 666
    const-string v3, "CallRejectListSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TestModify3..name:name:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "data_idt:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    .line 670
    .end local v19    # "data_idt":Ljava/lang/String;
    :catchall_3
    move-exception v3

    :try_start_8
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_9
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1
.end method

.method private updateCallLogNumbers(Ljava/lang/String;)V
    .locals 8
    .param p1, "callLogId"    # Ljava/lang/String;

    .prologue
    .line 575
    const-string v5, "CallRejectListSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---------["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]----------"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 593
    :cond_0
    return-void

    .line 579
    :cond_1
    const-string v5, "_id"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 582
    const/16 v5, 0x8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 583
    .local v3, "ids":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 584
    .local v4, "idsArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsTask:Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;

    invoke-virtual {v5}, Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 586
    :try_start_0
    aget-object v5, v4, v1

    const/4 v6, 0x1

    aget-object v7, v4, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 587
    .local v2, "id":I
    invoke-direct {p0, v2}, Lcom/mediatek/settings/CallRejectListSetting;->updateCallLogNumbers(I)V

    .line 588
    const-string v5, "CallRejectListSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    .end local v2    # "id":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "CallRejectListSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseInt failed, the id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateContactsNumbers(I)V
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 683
    sget-object v0, Lcom/mediatek/settings/CallRejectListSetting;->CONTACT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 684
    .local v1, "existNumberURI":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/settings/CallRejectListSetting;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 686
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 688
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/CallRejectListSetting;->allWhite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 690
    .local v8, "number":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 691
    .local v7, "name":Ljava/lang/String;
    invoke-direct {p0, v8, v7}, Lcom/mediatek/settings/CallRejectListSetting;->insertNumbers(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 695
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "number":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 697
    return-void
.end method

.method private updateShowNumbers()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 295
    new-instance v0, Lcom/mediatek/settings/CallRejectListSetting$UpdateUIContactsTask;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/CallRejectListSetting$UpdateUIContactsTask;-><init>(Lcom/mediatek/settings/CallRejectListSetting;)V

    iput-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mUpdatUIContactsTask:Lcom/mediatek/settings/CallRejectListSetting$UpdateUIContactsTask;

    .line 296
    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mUpdatUIContactsTask:Lcom/mediatek/settings/CallRejectListSetting$UpdateUIContactsTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallRejectListSetting$UpdateUIContactsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 297
    return-void
.end method

.method private updateUICallback(II)V
    .locals 17
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I

    .prologue
    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/settings/CallRejectListSetting;->URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Number"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "Name"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 227
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 292
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 232
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_a

    .line 233
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 234
    .local v13, "number":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 235
    .local v11, "name":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 236
    .local v16, "type":Ljava/lang/String;
    const-string v1, "3"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "2"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "video"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "1"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "voice"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 239
    :cond_2
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 240
    :cond_3
    const-string v1, "CallRejectListSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUICallback0-------[number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]--------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_4
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 290
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "number":Ljava/lang/String;
    .end local v16    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 243
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v13    # "number":Ljava/lang/String;
    .restart local v16    # "type":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "data1"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 249
    .local v8, "cursorName":Landroid/database/Cursor;
    const-string v15, ""

    .line 250
    .local v15, "tempNumber":Ljava/lang/String;
    const-string v14, ""

    .line 251
    .local v14, "tempName":Ljava/lang/String;
    move-object v12, v11

    .line 252
    .local v12, "newName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 253
    .local v9, "isNeedUpdateName":Z
    const/4 v10, 0x0

    .line 254
    .local v10, "isNoEsit":Z
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    :goto_3
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_8

    .line 258
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mediatek/settings/CallRejectListSetting;->allWhite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 259
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mediatek/settings/CallRejectListSetting;->allWhite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 260
    const-string v1, "CallRejectListSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUICallback1..tempName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tempNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 262
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 267
    :goto_4
    const/4 v10, 0x1

    .line 269
    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 272
    :catchall_1
    move-exception v1

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 264
    :cond_7
    move-object v12, v14

    .line 265
    const/4 v9, 0x1

    goto :goto_4

    .line 272
    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 275
    if-eqz v10, :cond_9

    if-eqz v9, :cond_9

    .line 276
    const-string v1, "CallRejectListSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUICallback2..newName1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/mediatek/settings/CallRejectListSetting;->insertNumbers(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_9
    if-nez v10, :cond_4

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 282
    const-string v1, "CallRejectListSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUICallback2..newName2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/mediatek/settings/CallRejectListSetting;->insertNumbers(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 290
    .end local v8    # "cursorName":Landroid/database/Cursor;
    .end local v9    # "isNeedUpdateName":Z
    .end local v10    # "isNoEsit":Z
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "newName":Ljava/lang/String;
    .end local v13    # "number":Ljava/lang/String;
    .end local v14    # "tempName":Ljava/lang/String;
    .end local v15    # "tempNumber":Ljava/lang/String;
    .end local v16    # "type":Ljava/lang/String;
    :cond_a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 544
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 550
    :goto_0
    return-void

    .line 547
    :cond_0
    new-instance v0, Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;-><init>(Lcom/mediatek/settings/CallRejectListSetting;)V

    iput-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsTask:Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;

    .line 548
    iput-object p3, p0, Lcom/mediatek/settings/CallRejectListSetting;->mResultIntent:Landroid/content/Intent;

    .line 549
    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsTask:Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 505
    iget-object v1, p0, Lcom/mediatek/settings/CallRejectListSetting;->mDeleteBtn:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 506
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 507
    .local v0, "it":Landroid/content/Intent;
    const-class v1, Lcom/mediatek/settings/CallRejectListModify;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 508
    const-string v1, "type"

    iget-object v2, p0, Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CallRejectListSetting;->startActivity(Landroid/content/Intent;)V

    .line 516
    .end local v0    # "it":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddBtn:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 511
    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CallRejectListSetting;->showDialog(I)V

    goto :goto_0

    .line 512
    :cond_2
    iget-object v1, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsBtn:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_0

    .line 513
    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CallRejectListSetting;->dismissDialog(I)V

    .line 514
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/CallRejectListSetting;->showDialog(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 302
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 303
    const v2, 0x7f040008

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CallRejectListSetting;->setContentView(I)V

    .line 305
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 306
    .local v1, "preference":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v1}, Lcom/mediatek/settings/CallRejectListSetting;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 308
    const v2, 0x7f0b004c

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CallRejectListSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/mediatek/settings/CallRejectListSetting;->mListView:Landroid/widget/ListView;

    .line 309
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;

    .line 311
    const-string v2, "voice"

    iget-object v3, p0, Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CallRejectListSetting;->setTitle(Ljava/lang/CharSequence;)V

    .line 316
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 317
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 319
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 321
    :cond_0
    return-void

    .line 314
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CallRejectListSetting;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 416
    if-nez p1, :cond_2

    .line 418
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/CallRejectListSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 419
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0802b3

    new-instance v5, Lcom/mediatek/settings/CallRejectListSetting$1;

    invoke-direct {v5, p0}, Lcom/mediatek/settings/CallRejectListSetting$1;-><init>(Lcom/mediatek/settings/CallRejectListSetting;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0801cc

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0800d9

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f040006

    invoke-virtual {v1, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 467
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 468
    const v3, 0x7f0b004a

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsBtn:Landroid/widget/ImageButton;

    .line 469
    iget-object v3, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsBtn:Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    .line 470
    iget-object v3, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    :cond_0
    const v3, 0x7f0b0049

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/settings/CallRejectListSetting;->mNumberEditText:Landroid/widget/EditText;

    .line 488
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    :goto_0
    return-object v0

    .line 474
    :cond_2
    if-ne p1, v5, :cond_3

    .line 475
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 476
    .restart local v0    # "dialog":Landroid/app/Dialog;
    const v3, 0x7f040007

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 477
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 478
    const v3, 0x7f0b004c

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 479
    .local v2, "listview":Landroid/widget/ListView;
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 481
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v2    # "listview":Landroid/widget/ListView;
    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 482
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 483
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 484
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 485
    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 349
    const v0, 0x7f0800d7

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 351
    const/4 v0, 0x3

    const v1, 0x7f0800d8

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 353
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 338
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 339
    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsTask:Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsTask:Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;->cancel(Z)Z

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mUpdatUIContactsTask:Lcom/mediatek/settings/CallRejectListSetting$UpdateUIContactsTask;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mUpdatUIContactsTask:Lcom/mediatek/settings/CallRejectListSetting$UpdateUIContactsTask;

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallRejectListSetting$UpdateUIContactsTask;->cancel(Z)Z

    .line 345
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 520
    if-nez p3, :cond_1

    .line 521
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.contacts.list.PICKMULTIPHONES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    const/16 v2, 0x7d

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/settings/CallRejectListSetting;->startActivityForResult(Landroid/content/Intent;I)V

    .line 525
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CallRejectListSetting;->dismissDialog(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 526
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "CallRejectListSetting"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 529
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    if-ne p3, v2, :cond_0

    .line 530
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.contacts"

    const-string v3, "com.mediatek.contacts.activities.CallLogMultipleChoiceActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    const/16 v2, 0x7e

    :try_start_1
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/settings/CallRejectListSetting;->startActivityForResult(Landroid/content/Intent;I)V

    .line 535
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CallRejectListSetting;->dismissDialog(I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 536
    :catch_1
    move-exception v0

    .line 537
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "CallRejectListSetting"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 366
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 381
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_1
    return v1

    .line 368
    :sswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/CallRejectListSetting;->showDialog(I)V

    goto :goto_0

    .line 371
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/settings/CallRejectListModify;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 372
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "type"

    iget-object v2, p0, Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CallRejectListSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 376
    .end local v0    # "it":Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->finish()V

    .line 377
    const/4 v1, 0x1

    goto :goto_1

    .line 366
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_0
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 493
    packed-switch p1, :pswitch_data_0

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 495
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mNumberEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mNumberEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 358
    const-string v2, "CallRejectListSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[preference count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 360
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 361
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 325
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 327
    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsTask:Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsTask:Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;

    invoke-virtual {v0}, Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 328
    const-string v0, "CallRejectListSetting"

    const-string v1, "onResume-------no update again--------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/CallRejectListSetting;->updateShowNumbers()V

    .line 332
    const-string v0, "CallRejectListSetting"

    const-string v1, "onResume---------------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
