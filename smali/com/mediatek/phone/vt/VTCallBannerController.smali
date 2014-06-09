.class public Lcom/mediatek/phone/vt/VTCallBannerController;
.super Ljava/lang/Object;
.source "VTCallBannerController.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/vt/VTCallBannerController$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "VTCallBannerController"

.field private static final SECOND_TO_MILLISECOND:I = 0x3e8

.field private static final TOKEN_LOAD_PHOTO:I


# instance fields
.field protected mApplication:Lcom/android/phone/PhoneGlobals;

.field protected mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

.field private mCallBannerSidePadding:I

.field private mCallBannerTopBottomPadding:I

.field protected mContext:Landroid/content/Context;

.field protected mDensity:F

.field private mNeedClearUserData:Z

.field protected mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

.field private mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

.field private mSimBorderMap:[I

.field private mSimColorMap:[I

.field private mSimIndicatorLeftPadding:I

.field private mSimIndicatorRightPadding:I

.field protected mSimInfo:Landroid/provider/Telephony$SIMInfo;

.field private mTextColorCallTypeSip:I


# direct methods
.method public constructor <init>(Lcom/mediatek/phone/vt/VTCallBanner;Landroid/content/Context;)V
    .locals 3
    .param p1, "callBanner"    # Lcom/mediatek/phone/vt/VTCallBanner;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x4

    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mSimColorMap:[I

    .line 101
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mSimBorderMap:[I

    .line 118
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    .line 119
    iput-object p2, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mContext:Landroid/content/Context;

    .line 120
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mApplication:Lcom/android/phone/PhoneGlobals;

    .line 121
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mDensity:F

    .line 122
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBannerSidePadding:I

    .line 123
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBannerTopBottomPadding:I

    .line 124
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mSimIndicatorLeftPadding:I

    .line 126
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mSimIndicatorRightPadding:I

    .line 129
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mTextColorCallTypeSip:I

    .line 131
    new-instance v0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    .line 133
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->getVTCallBannerControllerExtension()Lcom/mediatek/phone/ext/VTCallBannerControllerExtension;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/mediatek/phone/ext/VTCallBannerControllerExtension;->initialize(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 136
    const-class v0, Lcom/mediatek/common/telephony/IServiceStateExt;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/IServiceStateExt;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    .line 138
    return-void

    .line 95
    nop

    :array_0
    .array-data 4
        0x7f0200d4
        0x7f0200d5
        0x7f0200d6
        0x7f0200d7
    .end array-data

    .line 101
    :array_1
    .array-data 4
        0x7f0200f4
        0x7f0200f7
        0x7f0200f5
        0x7f0200f8
    .end array-data
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 627
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 630
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    .line 632
    const-string v3, "getCallFailedString: connection is null, using default values."

    invoke-static {v3}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 636
    const v2, 0x7f0802eb

    .line 713
    .local v2, "resID":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 639
    .end local v2    # "resID":I
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 645
    .local v1, "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v3, Lcom/mediatek/phone/vt/VTCallBannerController$1;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 709
    const v2, 0x7f0802eb

    .restart local v2    # "resID":I
    goto :goto_0

    .line 647
    .end local v2    # "resID":I
    :pswitch_0
    const v2, 0x7f0801b1

    .line 648
    .restart local v2    # "resID":I
    goto :goto_0

    .line 651
    .end local v2    # "resID":I
    :pswitch_1
    const v2, 0x7f0801b2

    .line 652
    .restart local v2    # "resID":I
    goto :goto_0

    .line 655
    .end local v2    # "resID":I
    :pswitch_2
    const v2, 0x7f0801b3

    .line 656
    .restart local v2    # "resID":I
    goto :goto_0

    .line 659
    .end local v2    # "resID":I
    :pswitch_3
    const v2, 0x7f0801b4

    .line 660
    .restart local v2    # "resID":I
    goto :goto_0

    .line 663
    .end local v2    # "resID":I
    :pswitch_4
    const v2, 0x7f0801b5

    .line 664
    .restart local v2    # "resID":I
    goto :goto_0

    .line 667
    .end local v2    # "resID":I
    :pswitch_5
    const v2, 0x7f0801b6

    .line 668
    .restart local v2    # "resID":I
    goto :goto_0

    .line 671
    .end local v2    # "resID":I
    :pswitch_6
    const v2, 0x7f0801b8

    .line 672
    .restart local v2    # "resID":I
    goto :goto_0

    .line 675
    .end local v2    # "resID":I
    :pswitch_7
    const v2, 0x7f0801b7

    .line 676
    .restart local v2    # "resID":I
    goto :goto_0

    .line 680
    .end local v2    # "resID":I
    :pswitch_8
    const v2, 0x7f0801b9

    .line 681
    .restart local v2    # "resID":I
    goto :goto_0

    .line 684
    .end local v2    # "resID":I
    :pswitch_9
    const v2, 0x7f0801ba

    .line 685
    .restart local v2    # "resID":I
    goto :goto_0

    .line 688
    .end local v2    # "resID":I
    :pswitch_a
    const v2, 0x7f0801bb

    .line 689
    .restart local v2    # "resID":I
    goto :goto_0

    .line 693
    .end local v2    # "resID":I
    :pswitch_b
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v3}, Lcom/mediatek/common/telephony/IServiceStateExt;->isImeiLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    const v2, 0x7f0801c4

    .line 697
    .restart local v2    # "resID":I
    :goto_1
    goto :goto_0

    .line 693
    .end local v2    # "resID":I
    :cond_1
    const v2, 0x7f0801bc

    goto :goto_1

    .line 700
    :pswitch_c
    const v2, 0x7f0801bd

    .line 701
    .restart local v2    # "resID":I
    goto :goto_0

    .line 705
    .end local v2    # "resID":I
    :pswitch_d
    const v2, 0x7f0801c5

    .line 706
    .restart local v2    # "resID":I
    goto :goto_0

    .line 645
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private getPresentationString(I)Ljava/lang/String;
    .locals 3
    .param p1, "presentation"    # I

    .prologue
    .line 617
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mContext:Landroid/content/Context;

    const v2, 0x7f0801ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, "name":Ljava/lang/String;
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1

    .line 619
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mContext:Landroid/content/Context;

    const v2, 0x7f0801ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 623
    :cond_0
    :goto_0
    return-object v0

    .line 620
    :cond_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mContext:Landroid/content/Context;

    const v2, 0x7f0801ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 840
    const-string v0, "VTCallBannerController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return-void
.end method

.method private updateCallBanner()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 284
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mSimColorMap:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v0, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v0, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mSimColorMap:[I

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 287
    :cond_0
    const-string v0, "mSimInfo is null or mSimInfo.mColor invalid."

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v0, v0, Lcom/mediatek/phone/vt/VTCallBanner;->mVtCallStateAndSimIndicate:Landroid/view/ViewGroup;

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 290
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v0, v0, Lcom/mediatek/phone/vt/VTCallBanner;->mSimIndicator:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v0, v0, Lcom/mediatek/phone/vt/VTCallBanner;->mSimIndicator:Landroid/widget/TextView;

    const v1, 0x7f0200f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 299
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v0, v0, Lcom/mediatek/phone/vt/VTCallBanner;->mMainCallBanner:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBannerSidePadding:I

    iget v2, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBannerTopBottomPadding:I

    iget v3, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBannerSidePadding:I

    iget v4, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBannerTopBottomPadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 301
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v0, v0, Lcom/mediatek/phone/vt/VTCallBanner;->mSimIndicator:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v0, v0, Lcom/mediatek/phone/vt/VTCallBanner;->mSimIndicator:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mSimIndicatorLeftPadding:I

    iget v2, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mSimIndicatorRightPadding:I

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 304
    :cond_2
    return-void

    .line 294
    :cond_3
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v0, v0, Lcom/mediatek/phone/vt/VTCallBanner;->mVtCallStateAndSimIndicate:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mSimColorMap:[I

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v2, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 295
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v0, v0, Lcom/mediatek/phone/vt/VTCallBanner;->mSimIndicator:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v0, v0, Lcom/mediatek/phone/vt/VTCallBanner;->mSimIndicator:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mSimBorderMap:[I

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v2, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V
    .locals 10
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const v9, 0x7f0802e7

    .line 308
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCallStateWidgets(call "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 311
    .local v5, "state":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 312
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 314
    .local v4, "phoneType":I
    const/4 v0, 0x0

    .line 319
    .local v0, "callStateLabel":Ljava/lang/String;
    sget-object v6, Lcom/mediatek/phone/vt/VTCallBannerController$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 372
    const-string v6, "VTCallBannerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCallStateWidgets: unexpected call state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 379
    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_3

    iget-object v6, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 383
    iget-object v6, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    :cond_1
    :goto_1
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 391
    iget-object v6, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/phone/PhoneUtils;->getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v0

    .line 395
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==> callStateLabel: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 397
    iget-object v6, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v6, v6, Lcom/mediatek/phone/vt/VTCallBanner;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    iget-object v6, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v6, v6, Lcom/mediatek/phone/vt/VTCallBanner;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/phone/ext/ExtensionManager;->getVTCallBannerControllerExtension()Lcom/mediatek/phone/ext/VTCallBannerControllerExtension;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/mediatek/phone/ext/VTCallBannerControllerExtension;->updateCallStateWidgets(Lcom/android/internal/telephony/Call;)Z

    .line 402
    return-void

    .line 326
    :pswitch_1
    const-string v6, "VTCallBannerController"

    const-string v7, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;->VT_TIMING_DEFAULT:Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/phone/vt/VTCallUtils;->checkVTTimingMode(Ljava/lang/String;)Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;

    move-result-object v7

    if-ne v6, v7, :cond_0

    .line 339
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v1

    .line 340
    .local v1, "duration":J
    const-wide/16 v6, 0x3e8

    div-long v6, v1, v6

    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    .line 341
    goto/16 :goto_0

    .line 345
    .end local v1    # "duration":J
    :pswitch_3
    iget-object v6, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mContext:Landroid/content/Context;

    const v7, 0x7f0802ec

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    goto/16 :goto_0

    .line 350
    :pswitch_4
    iget-object v6, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    goto/16 :goto_0

    .line 364
    :pswitch_5
    iget-object v6, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mContext:Landroid/content/Context;

    const v7, 0x7f0802ed

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    goto/16 :goto_0

    .line 368
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/mediatek/phone/vt/VTCallBannerController;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    .line 369
    goto/16 :goto_0

    .line 384
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 385
    iget-object v6, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mContext:Landroid/content/Context;

    const v7, 0x7f0802e8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v1, 0x0

    .line 604
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 606
    .local v0, "phoneType":I
    :goto_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 607
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v2, v2, Lcom/mediatek/phone/vt/VTCallBanner;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 608
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTCallBanner;->mCallTypeLabel:Landroid/widget/TextView;

    const v2, 0x7f08030f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 609
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTCallBanner;->mCallTypeLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mTextColorCallTypeSip:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 613
    :goto_1
    return-void

    .end local v0    # "phoneType":I
    :cond_0
    move v0, v1

    .line 604
    goto :goto_0

    .line 611
    .restart local v0    # "phoneType":I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTCallBanner;->mCallTypeLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 13
    .param p1, "info"    # Lcom/android/internal/telephony/CallerInfo;
    .param p2, "presentation"    # I
    .param p3, "isTemporary"    # Z
    .param p4, "call"    # Lcom/android/internal/telephony/Call;
    .param p5, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDisplayForPerson("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\npresentation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isTemporary:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1, p1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 423
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 427
    const/4 v8, 0x0

    .line 428
    .local v8, "displayNumber":Ljava/lang/String;
    const/4 v9, 0x0

    .line 429
    .local v9, "label":Ljava/lang/String;
    const/4 v12, 0x0

    .line 430
    .local v12, "personUri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 432
    .local v11, "numberGeoDescription":Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 455
    iget-object v10, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 456
    .local v10, "number":Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v1, "sip:"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    const-string v1, "sip:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 459
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/HyphonManager;->getInstance()Lcom/mediatek/phone/HyphonManager;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/mediatek/phone/HyphonManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 461
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 467
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    invoke-direct {p0, p2}, Lcom/mediatek/phone/vt/VTCallBannerController;->getPresentationString(I)Ljava/lang/String;

    move-result-object v7

    .line 472
    .local v7, "displayName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ==> no name *or* number! displayName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 546
    :goto_0
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- got personUri: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', based on info.person_id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 559
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTCallBanner;->mName:Landroid/widget/TextView;

    const v2, 0x7f0802ee

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 563
    :goto_1
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTCallBanner;->mName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    if-eqz v8, :cond_9

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v1

    if-nez v1, :cond_9

    .line 566
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTCallBanner;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTCallBanner;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    :goto_2
    if-eqz v9, :cond_a

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v1

    if-nez v1, :cond_a

    .line 573
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTCallBanner;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTCallBanner;->mLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 579
    :goto_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 580
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTCallBanner;->mPhoneNumberGeoDescription:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 587
    :goto_4
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 589
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/phone/ext/ExtensionManager;->getVTCallBannerControllerExtension()Lcom/mediatek/phone/ext/VTCallBannerControllerExtension;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/phone/ext/VTCallBannerControllerExtension;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 591
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v10    # "number":Ljava/lang/String;
    :goto_5
    return-void

    .line 474
    .restart local v10    # "number":Ljava/lang/String;
    :cond_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v1, :cond_2

    .line 478
    invoke-direct {p0, p2}, Lcom/mediatek/phone/vt/VTCallBannerController;->getPresentationString(I)Ljava/lang/String;

    move-result-object v7

    .line 480
    .restart local v7    # "displayName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ==> presentation not allowed! displayName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 483
    .end local v7    # "displayName":Ljava/lang/String;
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 485
    iget-object v7, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 486
    .restart local v7    # "displayName":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 487
    move-object v8, v10

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ==> cnapName available: displayName \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', displayNumber \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 499
    .end local v7    # "displayName":Ljava/lang/String;
    :cond_3
    move-object v7, v10

    .line 504
    .restart local v7    # "displayName":Ljava/lang/String;
    if-eqz p5, :cond_4

    .line 509
    iget-object v11, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 513
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ==>  no name; falling back to number: displayName \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', displayNumber \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 520
    .end local v7    # "displayName":Ljava/lang/String;
    :cond_5
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v1, :cond_6

    .line 524
    invoke-direct {p0, p2}, Lcom/mediatek/phone/vt/VTCallBannerController;->getPresentationString(I)Ljava/lang/String;

    move-result-object v7

    .line 526
    .restart local v7    # "displayName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ==> valid name, but presentation not allowed! displayName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 530
    .end local v7    # "displayName":Ljava/lang/String;
    :cond_6
    iget-object v7, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 531
    .restart local v7    # "displayName":Ljava/lang/String;
    move-object v8, v10

    .line 532
    iget-object v9, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ==>  name is present in CallerInfo: displayName \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', displayNumber \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 553
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v10    # "number":Ljava/lang/String;
    :cond_7
    const-string v1, "- info is null, just return "

    invoke-static {v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 561
    .restart local v7    # "displayName":Ljava/lang/String;
    .restart local v10    # "number":Ljava/lang/String;
    :cond_8
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTCallBanner;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 569
    :cond_9
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTCallBanner;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 576
    :cond_a
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTCallBanner;->mLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 582
    :cond_b
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTCallBanner;->mPhoneNumberGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTCallBanner;->mPhoneNumberGeoDescription:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method


# virtual methods
.method public clearCallBannerInfo()V
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v0, v0, Lcom/mediatek/phone/vt/VTCallBanner;->mName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v0, v0, Lcom/mediatek/phone/vt/VTCallBanner;->mPhoneNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 821
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v0, v0, Lcom/mediatek/phone/vt/VTCallBanner;->mLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v0, v0, Lcom/mediatek/phone/vt/VTCallBanner;->mCallTypeLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v0, v0, Lcom/mediatek/phone/vt/VTCallBanner;->mOperatorName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v0, v0, Lcom/mediatek/phone/vt/VTCallBanner;->mSimIndicator:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 825
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v0, v0, Lcom/mediatek/phone/vt/VTCallBanner;->mSimIndicator:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 826
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v0, v0, Lcom/mediatek/phone/vt/VTCallBanner;->mCallStateLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v0, v0, Lcom/mediatek/phone/vt/VTCallBanner;->mPhoneNumberGeoDescription:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    return-void
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p3, "photoIcon"    # Landroid/graphics/Bitmap;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 781
    const-string v4, "onImageLoadComplete enter!"

    invoke-static {v4}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 782
    if-nez p4, :cond_0

    .line 813
    :goto_0
    return-void

    .line 785
    :cond_0
    const/4 v1, 0x0

    .line 786
    .local v1, "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    instance-of v4, p4, Lcom/android/internal/telephony/Call;

    if-eqz v4, :cond_4

    .line 787
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onImageLoadComplete = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    move-object v0, p4

    .line 788
    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 789
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 790
    .local v2, "currentConn":Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_3

    .line 791
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v3

    .line 792
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 793
    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    .line 806
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    .end local v2    # "currentConn":Lcom/android/internal/telephony/Connection;
    .end local v3    # "o":Ljava/lang/Object;
    :goto_1
    if-eqz v1, :cond_5

    .line 807
    iput-object p2, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 808
    iput-object p3, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    .line 809
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    goto :goto_0

    .line 794
    .restart local v0    # "call":Lcom/android/internal/telephony/Call;
    .restart local v2    # "currentConn":Lcom/android/internal/telephony/Connection;
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v4, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v4, :cond_2

    .line 795
    check-cast v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v3    # "o":Ljava/lang/Object;
    iget-object v1, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1

    .line 797
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_2
    const-string v4, "VTCallBannerController"

    const-string v5, "CallerInfo isn\'t available while Call object is available."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 800
    .end local v3    # "o":Ljava/lang/Object;
    :cond_3
    const-string v4, "onImageLoadComplete no connection found!"

    invoke-static {v4}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 803
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    .end local v2    # "currentConn":Lcom/android/internal/telephony/Connection;
    :cond_4
    const-string v4, "onImageLoadComplete: the cookie is unkown!"

    invoke-static {v4}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 811
    :cond_5
    const-string v4, "onImageLoadComplete callerInfo == null!"

    invoke-static {v4}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 11
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "ci"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    const/4 v3, 0x0

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete: token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cookie "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ci "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 728
    instance-of v0, p2, Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_6

    .line 733
    const-string v0, "callerinfo query complete, updating ui from displayMainCallStatus()"

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    move-object v4, p2

    .line 735
    check-cast v4, Lcom/android/internal/telephony/Call;

    .line 736
    .local v4, "call":Lcom/android/internal/telephony/Call;
    const/4 v5, 0x0

    .line 737
    .local v5, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    .line 738
    .local v8, "phoneType":I
    const/4 v0, 0x2

    if-ne v8, v0, :cond_2

    .line 739
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 746
    :goto_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v5, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v6

    .line 749
    .local v6, "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .line 750
    .local v2, "presentation":I
    if-eqz v5, :cond_0

    .line 751
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 754
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onQueryComplete: presentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contactExists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 757
    const/4 v7, 0x0

    .line 758
    .local v7, "personUri":Landroid/net/Uri;
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, p3, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v0, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 759
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v3, v0, v7, p0, v4}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 765
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_5

    .line 766
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .end local v2    # "presentation":I
    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 778
    .end local v4    # "call":Lcom/android/internal/telephony/Call;
    .end local v5    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v6    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v7    # "personUri":Landroid/net/Uri;
    .end local v8    # "phoneType":I
    .end local p2    # "cookie":Ljava/lang/Object;
    :cond_1
    :goto_1
    return-void

    .line 740
    .restart local v4    # "call":Lcom/android/internal/telephony/Call;
    .restart local v5    # "conn":Lcom/android/internal/telephony/Connection;
    .restart local v8    # "phoneType":I
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x1

    if-eq v8, v0, :cond_3

    const/4 v0, 0x3

    if-ne v8, v0, :cond_4

    .line 742
    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    goto :goto_0

    .line 744
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    .restart local v2    # "presentation":I
    .restart local v6    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v7    # "personUri":Landroid/net/Uri;
    :cond_5
    iget-object v1, v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto :goto_1

    .line 772
    .end local v2    # "presentation":I
    .end local v4    # "call":Lcom/android/internal/telephony/Call;
    .end local v5    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v6    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v7    # "personUri":Landroid/net/Uri;
    .end local v8    # "phoneType":I
    :cond_6
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 774
    const-string v0, "callerinfo query complete, updating ui from ongoing or onhold"

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 776
    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "cookie":Ljava/lang/Object;
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mContext:Landroid/content/Context;

    invoke-static {p3, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setNeedClearUserData(Z)V
    .locals 0
    .param p1, "isNeedClearUserData"    # Z

    .prologue
    .line 836
    iput-boolean p1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mNeedClearUserData:Z

    .line 837
    return-void
.end method

.method updateElapsedTimeWidget(J)V
    .locals 3
    .param p1, "timeElapsed"    # J

    .prologue
    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateElapsedTimeWidget: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 272
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTCallBanner;->mCallStateLabel:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "time":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateElapsedTimeWidget: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTCallBanner;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method updateState(Lcom/android/internal/telephony/Call;)V
    .locals 18
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateState("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/ext/ExtensionManager;->getVTCallBannerControllerExtension()Lcom/mediatek/phone/ext/VTCallBannerControllerExtension;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/mediatek/phone/ext/VTCallBannerControllerExtension;->updateState(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSlotId:I

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v4

    iget v4, v4, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSlotId:I

    if-ne v2, v4, :cond_4

    .line 153
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v4

    iget v4, v4, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSlotId:I

    invoke-virtual {v2, v4}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/phone/vt/VTCallBannerController;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    .line 157
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/phone/vt/VTCallBannerController;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v2, :cond_6

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/mediatek/phone/vt/VTCallBanner;->setVisibility(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/phone/vt/VTCallBannerController;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v2, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v2, v2, Lcom/mediatek/phone/vt/VTCallBanner;->mSimIndicator:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/vt/VTCallBannerController;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v4, v4, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v2, v2, Lcom/mediatek/phone/vt/VTCallBanner;->mSimIndicator:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateCallBanner()V

    .line 175
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->getVTNetworkOperatorName(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v15

    .line 176
    .local v15, "operatorName":Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v2, v2, Lcom/mediatek/phone/vt/VTCallBanner;->mOperatorName:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v2, v2, Lcom/mediatek/phone/vt/VTCallBanner;->mOperatorName:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    :cond_3
    if-eqz p1, :cond_0

    .line 184
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V

    .line 185
    const/4 v7, 0x0

    .line 186
    .local v7, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    .line 187
    .local v16, "phoneType":I
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_7

    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 196
    :goto_3
    if-nez v7, :cond_a

    .line 198
    const-string v2, "updateState: connection is null, using default values."

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/phone/vt/VTCallBannerController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 201
    .local v3, "info":Lcom/android/internal/telephony/CallerInfo;
    sget v4, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    .line 155
    .end local v3    # "info":Lcom/android/internal/telephony/CallerInfo;
    .end local v7    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v15    # "operatorName":Ljava/lang/String;
    .end local v16    # "phoneType":I
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/phone/vt/VTCallBannerController;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    goto/16 :goto_1

    .line 163
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v2, v2, Lcom/mediatek/phone/vt/VTCallBanner;->mSimIndicator:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 167
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/phone/vt/VTCallBannerController;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/mediatek/phone/vt/VTCallBanner;->setVisibility(I)V

    goto/16 :goto_0

    .line 189
    .restart local v7    # "conn":Lcom/android/internal/telephony/Connection;
    .restart local v15    # "operatorName":Ljava/lang/String;
    .restart local v16    # "phoneType":I
    :cond_7
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_8

    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_9

    .line 191
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    goto :goto_3

    .line 193
    :cond_9
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - CONN: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", state = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v10

    .line 210
    .local v10, "presentation":I
    const/16 v17, 0x1

    .line 211
    .local v17, "runQuery":Z
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v14

    .line 212
    .local v14, "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/phone/vt/VTCallBannerController;->mNeedClearUserData:Z

    if-eqz v2, :cond_b

    .line 214
    const-string v2, "language changed to clear userdata"

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->clearUserData()V

    .line 217
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTCallBannerController;->mNeedClearUserData:Z

    .line 218
    const/16 v17, 0x1

    .line 226
    :goto_4
    if-eqz v17, :cond_e

    .line 228
    const-string v2, "- updateState: starting CallerInfo query..."

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/phone/vt/VTCallBannerController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v2, v7, v0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v3

    .line 232
    .local v3, "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v9, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v2, :cond_d

    const/4 v11, 0x1

    :goto_5
    move-object/from16 v8, p0

    move-object/from16 v12, p1

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    .line 219
    .end local v3    # "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_b
    instance-of v2, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_c

    .line 220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/vt/VTCallBannerController;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object v2, v14

    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v2, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v4, v2}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v17

    goto :goto_4

    .line 223
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/phone/vt/VTCallBannerController;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v2, v7}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v17

    goto :goto_4

    .line 232
    .restart local v3    # "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_d
    const/4 v11, 0x0

    goto :goto_5

    .line 236
    .end local v3    # "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_e
    const-string v2, "- updateState: using data we already have..."

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 238
    instance-of v2, v14, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_f

    move-object v9, v14

    .line 239
    check-cast v9, Lcom/android/internal/telephony/CallerInfo;

    .line 241
    .local v9, "ci":Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 242
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 243
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- updateState: CNAP data from Connection: CNAP name="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Number/Name Presentation="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ==> Got CallerInfo; updating display: ci = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 250
    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object/from16 v12, p1

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    .line 251
    .end local v9    # "ci":Lcom/android/internal/telephony/CallerInfo;
    :cond_f
    instance-of v2, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_10

    .line 252
    check-cast v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v14    # "o":Ljava/lang/Object;
    iget-object v9, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 254
    .restart local v9    # "ci":Lcom/android/internal/telephony/CallerInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- updateState: CNAP data from Connection: CNAP name="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Number/Name Presentation="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ==> Got CallerInfoToken; updating display: ci = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallBannerController;->log(Ljava/lang/String;)V

    .line 259
    const/4 v11, 0x1

    move-object/from16 v8, p0

    move-object/from16 v12, p1

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    .line 261
    .end local v9    # "ci":Lcom/android/internal/telephony/CallerInfo;
    .restart local v14    # "o":Ljava/lang/Object;
    :cond_10
    const-string v2, "VTCallBannerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateState: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
