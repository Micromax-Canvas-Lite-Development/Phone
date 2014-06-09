.class public Lcom/mediatek/settings/ServiceSelectList;
.super Landroid/preference/DialogPreference;
.source "ServiceSelectList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/ServiceSelectList$SimItem;,
        Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;
    }
.end annotation


# static fields
.field private static final DISPLAY_FIRST_FOUR:I = 0x1

.field private static final DISPLAY_LAST_FOUR:I = 0x2

.field private static final DISPLAY_NONE:I = 0x0

.field private static final PIN1_REQUEST_CODE:I = 0x12e

.field private static final TAG:Ljava/lang/String; = "Settings/ServiceSelectList"


# instance fields
.field private mAdapter:Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mFlater:Landroid/view/LayoutInflater;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mInitValue:I

.field private mListView:Landroid/widget/ListView;

.field private mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

.field private mSelected:I

.field private mSimItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/settings/ServiceSelectList$SimItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchID:I

.field private mSwitchTo:I

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/settings/ServiceSelectList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    .line 51
    iput v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mSwitchTo:I

    .line 52
    iput v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mInitValue:I

    .line 55
    iput-object v3, p0, Lcom/mediatek/settings/ServiceSelectList;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 66
    iput-object v3, p0, Lcom/mediatek/settings/ServiceSelectList;->mAlertDialog:Landroid/app/AlertDialog;

    .line 75
    iput-object p1, p0, Lcom/mediatek/settings/ServiceSelectList;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mFlater:Landroid/view/LayoutInflater;

    .line 78
    sget-object v1, Lcom/android/internal/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mEntries:[Ljava/lang/CharSequence;

    .line 81
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mEntryValues:[Ljava/lang/CharSequence;

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    iput-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 85
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/ServiceSelectList;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/ServiceSelectList;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mSimItemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/settings/ServiceSelectList;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/ServiceSelectList;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mediatek/settings/ServiceSelectList;->mSimItemList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/settings/ServiceSelectList;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/ServiceSelectList;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mFlater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/ServiceSelectList;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/ServiceSelectList;

    .prologue
    .line 39
    iget v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/ServiceSelectList;I)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/ServiceSelectList;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/mediatek/settings/ServiceSelectList;->getSimStatusImge(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/ServiceSelectList;)Lcom/android/phone/PhoneInterfaceManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/ServiceSelectList;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    return-object v0
.end method

.method private getSimStatusImge(I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 471
    packed-switch p1, :pswitch_data_0

    .line 487
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 473
    :pswitch_1
    const v0, 0x2020118

    goto :goto_0

    .line 475
    :pswitch_2
    const v0, 0x2020105

    goto :goto_0

    .line 477
    :pswitch_3
    const v0, 0x20200fe

    goto :goto_0

    .line 479
    :pswitch_4
    const v0, 0x202011f

    goto :goto_0

    .line 481
    :pswitch_5
    const v0, 0x202011d

    goto :goto_0

    .line 483
    :pswitch_6
    const v0, 0x20200f5

    goto :goto_0

    .line 485
    :pswitch_7
    const v0, 0x202011e

    goto :goto_0

    .line 471
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method dismissDialogs()V
    .locals 3

    .prologue
    .line 188
    const-string v1, "Settings/ServiceSelectList"

    const-string v2, "disable the 3G switch."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Lcom/mediatek/settings/ServiceSelectList;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 191
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 197
    :cond_1
    return-void
.end method

.method dismissSelf()V
    .locals 3

    .prologue
    .line 463
    const-string v1, "Settings/ServiceSelectList"

    const-string v2, "Dismiss the select list."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {p0}, Lcom/mediatek/settings/ServiceSelectList;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 465
    .local v0, "dialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 468
    :cond_0
    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 91
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 140
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/ServiceSelectList;->onDialogClosed(Z)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/ServiceSelectList;->onDialogClosed(Z)V

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 119
    const-string v0, "Settings/ServiceSelectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : mSelected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v0, "Settings/ServiceSelectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : mInitValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/ServiceSelectList;->mInitValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v0, "Settings/ServiceSelectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : mSwitchID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/ServiceSelectList;->mSwitchID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-eqz p1, :cond_0

    .line 123
    const-string v0, "Settings/ServiceSelectList"

    const-string v1, "callChangeListener"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mSwitchID:I

    iget v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mSimItemList:Ljava/util/List;

    iget v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mSwitchID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mSimItemList:Ljava/util/List;

    iget v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mSwitchID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ServiceSelectList$SimItem;

    iget-wide v0, v0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mSimID:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/ServiceSelectList;->callChangeListener(Ljava/lang/Object;)Z

    .line 126
    iget v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mSwitchID:I

    iput v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    .line 127
    iget v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    iput v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mInitValue:I

    .line 128
    const-string v0, "Settings/ServiceSelectList"

    const-string v1, "mSelected is changed after popup dialog so use mSwitchID"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/settings/ServiceSelectList;->dismissSelf()V

    .line 137
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mSimItemList:Ljava/util/List;

    iget v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ServiceSelectList$SimItem;

    iget-wide v0, v0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mSimID:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/ServiceSelectList;->callChangeListener(Ljava/lang/Object;)Z

    .line 131
    iget v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    iput v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mInitValue:I

    .line 132
    const-string v0, "Settings/ServiceSelectList"

    const-string v1, "Nothing modify after popup confirm dialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 148
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v1, "Settings/ServiceSelectList"

    const-string v2, "onclick"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v1, "Settings/ServiceSelectList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "positon is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v1, "Settings/ServiceSelectList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current select is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    if-ne p3, v1, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/mediatek/settings/ServiceSelectList;->dismissSelf()V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mSimItemList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ServiceSelectList$SimItem;

    .line 159
    .local v0, "simItem":Lcom/mediatek/settings/ServiceSelectList$SimItem;
    iget-wide v1, v0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mSimID:J

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 162
    iput p3, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    .line 163
    iput p3, p0, Lcom/mediatek/settings/ServiceSelectList;->mSwitchID:I

    .line 164
    const-string v1, "Settings/ServiceSelectList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder mSelected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v1, "Settings/ServiceSelectList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switch to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/ServiceSelectList;->onDialogClosed(Z)V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 7
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 97
    invoke-virtual {p0}, Lcom/mediatek/settings/ServiceSelectList;->refreshList()V

    .line 98
    new-instance v0, Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;

    invoke-virtual {p0}, Lcom/mediatek/settings/ServiceSelectList;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;-><init>(Lcom/mediatek/settings/ServiceSelectList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mAdapter:Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;

    .line 99
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mListView:Landroid/widget/ListView;

    .line 100
    iget-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mAdapter:Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    iget-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mAdapter:Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;->getHas3GService()I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    .line 103
    const-string v0, "Settings/ServiceSelectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder mSelected = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 106
    iget-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 109
    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mListView:Landroid/widget/ListView;

    move-object v0, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 111
    const v0, 0x7f0801cc

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {p1, v6, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    return-void
.end method

.method public refreshList()V
    .locals 15

    .prologue
    const/4 v3, 0x0

    const/4 v14, 0x1

    .line 200
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v11, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/settings/ServiceSelectList$SimItem;>;"
    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    .line 202
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    new-instance v1, Lcom/mediatek/settings/CallSettings$SIMInfoComparable;

    invoke-direct {v1}, Lcom/mediatek/settings/CallSettings$SIMInfoComparable;-><init>()V

    invoke-static {v12, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 204
    const/4 v13, 0x0

    .line 205
    .local v13, "state":I
    const/4 v10, 0x1

    .line 206
    .local v10, "isAllRadioOff":Z
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/provider/Telephony$SIMInfo;

    .line 207
    .local v9, "info":Landroid/provider/Telephony$SIMInfo;
    if-eqz v9, :cond_0

    .line 208
    new-instance v0, Lcom/mediatek/settings/ServiceSelectList$SimItem;

    invoke-direct {v0, p0, v9}, Lcom/mediatek/settings/ServiceSelectList$SimItem;-><init>(Lcom/mediatek/settings/ServiceSelectList;Landroid/provider/Telephony$SIMInfo;)V

    .line 210
    .local v0, "simitem":Lcom/mediatek/settings/ServiceSelectList$SimItem;
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .line 212
    .local v8, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v8, :cond_1

    .line 214
    iget v1, v9, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-interface {v8, v1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 222
    .end local v8    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_1
    iput v13, v0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mState:I

    .line 223
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    if-eqz v10, :cond_0

    .line 225
    if-ne v13, v14, :cond_2

    move v10, v14

    :goto_2
    goto :goto_0

    .line 219
    :catch_0
    move-exception v6

    .line 220
    .local v6, "e":Landroid/os/RemoteException;
    const-string v1, "Settings/ServiceSelectList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_2
    move v10, v3

    .line 225
    goto :goto_2

    .line 230
    .end local v0    # "simitem":Lcom/mediatek/settings/ServiceSelectList$SimItem;
    .end local v9    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_3
    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0800c7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "offText":Ljava/lang/String;
    new-instance v0, Lcom/mediatek/settings/ServiceSelectList$SimItem;

    const-wide/16 v4, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/settings/ServiceSelectList$SimItem;-><init>(Lcom/mediatek/settings/ServiceSelectList;Ljava/lang/String;IJ)V

    .line 232
    .restart local v0    # "simitem":Lcom/mediatek/settings/ServiceSelectList$SimItem;
    if-eqz v10, :cond_4

    .line 233
    iput v14, v0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mState:I

    .line 235
    :cond_4
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iput-object v11, p0, Lcom/mediatek/settings/ServiceSelectList;->mSimItemList:Ljava/util/List;

    .line 238
    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mAdapter:Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;

    if-eqz v1, :cond_5

    .line 239
    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mAdapter:Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;

    invoke-virtual {v1}, Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;->getHas3GService()I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    .line 240
    const-string v1, "Settings/ServiceSelectList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshList mSelected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mAdapter:Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;

    invoke-virtual {v1}, Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;->notifyDataSetChanged()V

    .line 243
    :cond_5
    return-void
.end method

.method setInitValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 419
    iput p1, p0, Lcom/mediatek/settings/ServiceSelectList;->mInitValue:I

    .line 420
    iput p1, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    .line 421
    return-void
.end method

.method setRadioCheched(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 406
    iget-object v4, p0, Lcom/mediatek/settings/ServiceSelectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v3

    .line 408
    .local v3, "listSize":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 410
    iget-object v4, p0, Lcom/mediatek/settings/ServiceSelectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 411
    .local v1, "itemView":Landroid/view/View;
    const v4, 0x7f0b0108

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 412
    .local v0, "btn":Landroid/widget/RadioButton;
    if-eqz v0, :cond_0

    .line 413
    if-ne v2, p1, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 408
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 416
    .end local v0    # "btn":Landroid/widget/RadioButton;
    .end local v1    # "itemView":Landroid/view/View;
    :cond_2
    return-void
.end method
