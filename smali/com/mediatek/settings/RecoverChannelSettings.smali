.class Lcom/mediatek/settings/RecoverChannelSettings;
.super Landroid/os/Handler;
.source "CellBroadcastCheckBox.java"


# static fields
.field private static final CHANNEL_URI:Landroid/net/Uri;

.field private static final CHANNEL_URI1:Landroid/net/Uri;

.field private static final ENABLE:Ljava/lang/String; = "enable"

.field private static final KEYID:Ljava/lang/String; = "_id"

.field private static final LOG_TAG:Ljava/lang/String; = "RecoverChannelSettings"

.field private static final MESSAGE_SET_CONFIG:I = 0x65

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NUMBER:Ljava/lang/String; = "number"


# instance fields
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

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSimId:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 271
    const-string v0, "content://cb/channel"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/RecoverChannelSettings;->CHANNEL_URI:Landroid/net/Uri;

    .line 272
    const-string v0, "content://cb/channel1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/RecoverChannelSettings;->CHANNEL_URI1:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(ILandroid/content/ContentResolver;)V
    .locals 2
    .param p1, "simId"    # I
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, 0x0

    .line 279
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 274
    sget-object v0, Lcom/mediatek/settings/RecoverChannelSettings;->CHANNEL_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mUri:Landroid/net/Uri;

    .line 276
    iput-object v1, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 277
    iput-object v1, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mResolver:Landroid/content/ContentResolver;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    .line 280
    iput p1, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mSimId:I

    .line 281
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 282
    iput-object p2, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mResolver:Landroid/content/ContentResolver;

    .line 284
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 286
    sget-object v0, Lcom/mediatek/settings/RecoverChannelSettings;->CHANNEL_URI1:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mUri:Landroid/net/Uri;

    .line 289
    :cond_0
    return-void
.end method

.method private handleSetCellBroadcastConfigResponse(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 377
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 378
    .local v0, "ar":Landroid/os/AsyncResult;
    if-nez v0, :cond_0

    .line 379
    const-string v1, "RecoverChannelSettings"

    const-string v2, "handleSetCellBroadcastConfigResponse,ar is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 384
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v1}, Lcom/mediatek/settings/RecoverChannelSettings;->updateChannelToDatabase(I)Z

    .line 385
    const-string v1, "RecoverChannelSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCellBroadcastConfigResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_1
    return-void
.end method

.method private makeChannelConfigArray(Lcom/mediatek/settings/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 8
    .param p1, "channel"    # Lcom/mediatek/settings/CellBroadcastChannel;

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 358
    const/4 v0, 0x2

    new-array v6, v0, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 359
    .local v6, "objectList":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v1

    .line 360
    .local v1, "tChannelId":I
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    aput-object v0, v6, v5

    .line 361
    const/4 v7, 0x1

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

.method private setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;I)V
    .locals 4
    .param p1, "objectList"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "index"    # I

    .prologue
    .line 349
    const/16 v1, 0x65

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, p2, v3}, Lcom/mediatek/settings/RecoverChannelSettings;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 350
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mSimId:I

    invoke-virtual {v1, p1, p1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCellBroadcastSmsConfigGemini([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;I)V

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p1, v0}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private updateChannelToDatabase(I)Z
    .locals 11
    .param p1, "index"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 294
    const/4 v7, 0x4

    new-array v4, v7, [Ljava/lang/String;

    const-string v7, "_id"

    aput-object v7, v4, v9

    const-string v7, "name"

    aput-object v7, v4, v10

    const/4 v7, 0x2

    const-string v8, "number"

    aput-object v8, v4, v7

    const/4 v7, 0x3

    const-string v8, "enable"

    aput-object v8, v4, v7

    .line 295
    .local v4, "projection":[Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 296
    iget-object v7, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v7}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v1

    .line 297
    .local v1, "id":I
    iget-object v7, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v7}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 299
    .local v0, "enable":Z
    iget-object v7, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v7}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v3

    .line 300
    .local v3, "number":I
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 301
    .local v5, "values":Landroid/content/ContentValues;
    const-string v7, "_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    const-string v7, "name"

    invoke-virtual {v5, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v7, "number"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    const-string v7, "enable"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v7}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 306
    .local v6, "where":Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v8, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mUri:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 307
    return v10
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 366
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 373
    :goto_0
    return-void

    .line 368
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/settings/RecoverChannelSettings;->handleSetCellBroadcastConfigResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 366
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method queryChannelFromDatabase()Z
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 311
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "name"

    aput-object v0, v2, v8

    const-string v0, "number"

    aput-object v0, v2, v10

    const-string v0, "enable"

    aput-object v0, v2, v11

    .line 312
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mUri:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 313
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 314
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    new-instance v6, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-direct {v6}, Lcom/mediatek/settings/CellBroadcastChannel;-><init>()V

    .line 316
    .local v6, "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelId(I)V

    .line 317
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setKeyId(I)V

    .line 318
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelName(Ljava/lang/String;)V

    .line 319
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v8, :cond_0

    move v0, v8

    :goto_1
    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelState(Z)V

    .line 320
    iget-object v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v0, v9

    .line 319
    goto :goto_1

    .line 322
    .end local v6    # "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 324
    :cond_2
    return v8
.end method

.method public updateChannelStatus()V
    .locals 11

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/mediatek/settings/RecoverChannelSettings;->queryChannelFromDatabase()Z

    move-result v9

    if-nez v9, :cond_1

    .line 346
    :cond_0
    return-void

    .line 333
    :cond_1
    iget-object v9, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 334
    .local v5, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 335
    iget-object v9, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v4

    .line 336
    .local v4, "keyId":I
    iget-object v9, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "channelName":Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v0

    .line 338
    .local v0, "channelId":I
    iget-object v9, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v2

    .line 339
    .local v2, "channelState":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 340
    .local v8, "title":Ljava/lang/String;
    new-instance v7, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-direct {v7, v4, v0, v1, v2}, Lcom/mediatek/settings/CellBroadcastChannel;-><init>(IILjava/lang/String;Z)V

    .line 341
    .local v7, "oldChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    if-eqz v2, :cond_2

    .line 342
    invoke-direct {p0, v7}, Lcom/mediatek/settings/RecoverChannelSettings;->makeChannelConfigArray(Lcom/mediatek/settings/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v6

    .line 343
    .local v6, "objectList":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-direct {p0, v6, v3}, Lcom/mediatek/settings/RecoverChannelSettings;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;I)V

    .line 334
    .end local v6    # "objectList":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
