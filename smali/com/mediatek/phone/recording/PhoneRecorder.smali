.class public Lcom/mediatek/phone/recording/PhoneRecorder;
.super Lcom/mediatek/phone/recording/Recorder;
.source "PhoneRecorder.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# static fields
.field private static final AUDIO_3GPP:Ljava/lang/String; = "audio/3gpp"

.field private static final AUDIO_AMR:Ljava/lang/String; = "audio/amr"

.field private static final AUDIO_ANY:Ljava/lang/String; = "audio/*"

.field private static final AUDIO_DB_TITLE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static final LOW_STORAGE_THRESHOLD:J = 0x80000L

.field private static final TAG:Ljava/lang/String; = "PhoneRecorder"

.field private static sFlagRecord:Z

.field private static sLock:[B

.field private static sPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;

.field private static sSDcardFullFlag:Z


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAudioDBPlaylistName:Ljava/lang/String;

.field private mConnection:Landroid/media/MediaScannerConnection;

.field private mContext:Landroid/content/Context;

.field mMaxFileSize:J

.field mRequestedType:Ljava/lang/String;

.field mSampleInterrupted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sLock:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/mediatek/phone/recording/Recorder;-><init>()V

    .line 78
    const-string v0, "audio/3gpp"

    iput-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    .line 79
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mMaxFileSize:J

    .line 93
    iput-object p1, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    .line 94
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mAudioDBPlaylistName:Ljava/lang/String;

    .line 95
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    .line 96
    return-void
.end method

.method private addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    .locals 17
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 255
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 256
    .local v5, "cv":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 257
    .local v3, "current":J
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    .line 258
    .local v7, "modDate":J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 260
    .local v6, "date":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 261
    .local v12, "sTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 262
    .local v11, "sDate":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 271
    .local v13, "title":Ljava/lang/String;
    const-string v14, "is_music"

    const-string v15, "1"

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v14, "_data"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v14, "mime_type"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/phone/recording/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 284
    .local v9, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 286
    .local v2, "base":Landroid/net/Uri;
    invoke-virtual {v9, v2, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 288
    .local v10, "result":Landroid/net/Uri;
    if-nez v10, :cond_1

    .line 289
    const-string v14, "PhoneRecorder"

    const-string v15, "----- Unable to save recorded audio !!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v10, 0x0

    .line 305
    .end local v10    # "result":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v10

    .line 293
    .restart local v10    # "result":Landroid/net/Uri;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/phone/recording/PhoneRecorder;->getPlaylistId()I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_2

    .line 294
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/mediatek/phone/recording/PhoneRecorder;->createPlaylist(Landroid/content/ContentResolver;)Landroid/net/Uri;

    .line 296
    :cond_2
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 297
    .local v1, "audioId":I
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/phone/recording/PhoneRecorder;->getPlaylistId()I

    move-result v14

    int-to-long v14, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v1, v14, v15}, Lcom/mediatek/phone/recording/PhoneRecorder;->addToPlaylist(Landroid/content/ContentResolver;IJ)V

    .line 301
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v14, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/phone/recording/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    if-eqz v14, :cond_0

    .line 303
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/phone/recording/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v14}, Landroid/media/MediaScannerConnection;->connect()V

    goto :goto_0
.end method

.method private addToPlaylist(Landroid/content/ContentResolver;IJ)V
    .locals 10
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "audioId"    # I
    .param p3, "playlistId"    # J

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 362
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v9

    .line 363
    .local v2, "cols":[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p3, p4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 364
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 365
    .local v7, "cur":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 366
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 367
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 368
    .local v6, "base":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 369
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 370
    .local v8, "values":Landroid/content/ContentValues;
    const-string v0, "play_order"

    add-int v3, v6, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 371
    const-string v0, "audio_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 372
    invoke-virtual {p1, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 374
    .end local v6    # "base":I
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private createPlaylist(Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 344
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 345
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    const v3, 0x7f08000d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mAudioDBPlaylistName:Ljava/lang/String;

    .line 346
    const-string v2, "name"

    iget-object v3, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mAudioDBPlaylistName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 348
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 349
    const-string v2, "PhoneRecorder"

    const-string v3, "---- Unable to save recorded audio -----"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/phone/recording/PhoneRecorder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    sget-object v1, Lcom/mediatek/phone/recording/PhoneRecorder;->sLock:[B

    monitor-enter v1

    .line 113
    :try_start_0
    sget-object v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/mediatek/phone/recording/PhoneRecorder;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/recording/PhoneRecorder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;

    .line 116
    :cond_0
    sget-object v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;

    monitor-exit v1

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPlaylistId()I
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 313
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 314
    .local v1, "uri":Landroid/net/Uri;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 317
    .local v2, "ids":[Ljava/lang/String;
    const-string v8, "name=?"

    .line 318
    .local v8, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    const v3, 0x7f08000d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mAudioDBPlaylistName:Ljava/lang/String;

    .line 319
    new-array v4, v5, [Ljava/lang/String;

    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mAudioDBPlaylistName:Ljava/lang/String;

    aput-object v0, v4, v9

    .line 322
    .local v4, "args":[Ljava/lang/String;
    const-string v3, "name=?"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/phone/recording/PhoneRecorder;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 323
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 324
    const-string v0, "PhoneRecorder"

    const-string v3, "query returns null"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    const/4 v7, -0x1

    .line 327
    .local v7, "id":I
    if-eqz v6, :cond_2

    .line 328
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 329
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 332
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_2
    return v7
.end method

.method public static isRecording()Z
    .locals 1

    .prologue
    .line 141
    sget-boolean v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sFlagRecord:Z

    return v0
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 389
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 394
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 392
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 393
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 394
    goto :goto_0
.end method

.method public static sdcardFullFlag()Z
    .locals 2

    .prologue
    .line 221
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->diskSpaceAvailable(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sSDcardFullFlag:Z

    .line 222
    sget-boolean v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sSDcardFullFlag:Z

    return v0

    .line 221
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ismFlagRecord()Z
    .locals 1

    .prologue
    .line 125
    sget-boolean v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sFlagRecord:Z

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 423
    const-string v0, "PhoneRecorder"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 399
    const-string v0, "PhoneRecorder"

    const-string v1, "MediaRecorder error..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void
.end method

.method public onMediaScannerConnected()V
    .locals 4

    .prologue
    .line 408
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/PhoneRecorder;->sampleFile()Ljava/io/File;

    move-result-object v0

    .line 410
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 411
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 420
    :cond_0
    return-void
.end method

.method public saveSample()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/PhoneRecorder;->sampleLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v2

    .line 235
    :cond_1
    const/4 v1, 0x0

    .line 237
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/PhoneRecorder;->sampleFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/phone/recording/PhoneRecorder;->addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 242
    if-eqz v1, :cond_0

    .line 246
    const/4 v2, 0x1

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 240
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method

.method public setMContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    .line 104
    return-void
.end method

.method public setmFlagRecord(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 133
    sput-boolean p1, Lcom/mediatek/phone/recording/PhoneRecorder;->sFlagRecord:Z

    .line 134
    return-void
.end method

.method public startRecord()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecord, mRequestedType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/phone/recording/PhoneRecorder;->log(Ljava/lang/String;)V

    .line 146
    sget-boolean v1, Lcom/mediatek/phone/recording/PhoneRecorder;->sFlagRecord:Z

    if-eqz v1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    iput-boolean v3, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mSampleInterrupted:Z

    .line 151
    const-string v1, "PhoneRecorder"

    const-string v2, "-----Please insert an SD card----"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_1
    const-wide/32 v1, 0x200000

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->diskSpaceAvailable(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 153
    iput-boolean v3, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mSampleInterrupted:Z

    .line 154
    const-string v1, "PhoneRecorder"

    const-string v2, "--------Storage is full-------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_2
    :try_start_0
    const-string v1, "audio/amr"

    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    const/4 v1, 0x3

    const-string v2, ".amr"

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/phone/recording/PhoneRecorder;->startRecording(ILjava/lang/String;)V

    .line 168
    :goto_1
    sget-object v1, Lcom/mediatek/phone/recording/PhoneRecorder;->sPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/recording/PhoneRecorder;->setmFlagRecord(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "oe":Ljava/io/IOException;
    sget-object v1, Lcom/mediatek/phone/recording/PhoneRecorder;->sPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/recording/PhoneRecorder;->setmFlagRecord(Z)V

    goto :goto_0

    .line 159
    .end local v0    # "oe":Ljava/io/IOException;
    :cond_3
    :try_start_1
    const-string v1, "audio/3gpp"

    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 160
    const/4 v1, 0x1

    const-string v2, ".3gpp"

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/phone/recording/PhoneRecorder;->startRecording(ILjava/lang/String;)V

    goto :goto_1

    .line 162
    :cond_4
    const-string v1, "audio/*"

    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 164
    const/4 v1, 0x1

    const-string v2, ".3gpp"

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/phone/recording/PhoneRecorder;->startRecording(ILjava/lang/String;)V

    goto :goto_1

    .line 166
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid output file type requested"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 176
    sget-boolean v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sFlagRecord:Z

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-super {p0}, Lcom/mediatek/phone/recording/Recorder;->stop()V

    .line 180
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sFlagRecord:Z

    goto :goto_0
.end method

.method public stopRecord(Z)V
    .locals 5
    .param p1, "mount"    # Z

    .prologue
    const/4 v4, 0x1

    .line 188
    sget-boolean v1, Lcom/mediatek/phone/recording/PhoneRecorder;->sFlagRecord:Z

    if-nez v1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 191
    :cond_0
    const-string v1, "stopRecord"

    invoke-virtual {p0, v1}, Lcom/mediatek/phone/recording/PhoneRecorder;->log(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/PhoneRecorder;->stop()V

    .line 194
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 195
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    if-eqz p1, :cond_2

    .line 196
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/PhoneRecorder;->saveSample()Z

    .line 197
    sget-boolean v1, Lcom/mediatek/phone/recording/PhoneRecorder;->sSDcardFullFlag:Z

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/PhoneRecorder;->delete()V

    .line 208
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
