.class public Lcom/mediatek/phone/recording/Recorder;
.super Ljava/lang/Object;
.source "Recorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;
    }
.end annotation


# static fields
.field public static final IDLE_STATE:I = 0x0

.field public static final INTERNAL_ERROR:I = 0x2

.field public static final NO_ERROR:I = 0x0

.field private static final RECORDING_FILE_PREFIX:Ljava/lang/String; = "Audio_"

.field public static final RECORDING_STATE:I = 0x1

.field private static final SAMPLE_LENGTH_KEY:Ljava/lang/String; = "sample_length"

.field private static final SAMPLE_PATH_KEY:Ljava/lang/String; = "sample_path"

.field public static final SDCARD_ACCESS_ERROR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Recorder"


# instance fields
.field mOnStateChangedListener:Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;

.field mRecorder:Landroid/media/MediaRecorder;

.field mSampleFile:Ljava/io/File;

.field mSampleLength:J

.field mSampleStart:J

.field mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/phone/recording/Recorder;->mState:I

    .line 90
    return-void
.end method

.method private setError(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mOnStateChangedListener:Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mOnStateChangedListener:Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;->onError(I)V

    .line 323
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 298
    iget v0, p0, Lcom/mediatek/phone/recording/Recorder;->mState:I

    if-ne p1, v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    iput p1, p0, Lcom/mediatek/phone/recording/Recorder;->mState:I

    .line 302
    iget v0, p0, Lcom/mediatek/phone/recording/Recorder;->mState:I

    invoke-direct {p0, v0}, Lcom/mediatek/phone/recording/Recorder;->signalStateChanged(I)V

    goto :goto_0
.end method

.method private signalStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mOnStateChangedListener:Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mOnStateChangedListener:Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;->onStateChanged(I)V

    .line 313
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/Recorder;->stop()V

    .line 205
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleLength:J

    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/recording/Recorder;->signalStateChanged(I)V

    .line 208
    return-void
.end method

.method public delete()V
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/Recorder;->stop()V

    .line 189
    iget-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 192
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleFile:Ljava/io/File;

    .line 193
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleLength:J

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/recording/Recorder;->signalStateChanged(I)V

    .line 196
    return-void
.end method

.method public getMaxAmplitude()I
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/mediatek/phone/recording/Recorder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 338
    const-string v0, "Recorder"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 329
    const-string v0, "onError"

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/recording/Recorder;->log(Ljava/lang/String;)V

    .line 330
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/Recorder;->stop()V

    .line 334
    :cond_0
    return-void
.end method

.method public progress()I
    .locals 4

    .prologue
    .line 161
    iget v0, p0, Lcom/mediatek/phone/recording/Recorder;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "recorderState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v5, -0x1

    .line 117
    const-string v4, "sample_path"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "samplePath":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const-string v4, "sample_length"

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 122
    .local v1, "sampleLength":J
    cmp-long v4, v1, v5

    if-eqz v4, :cond_0

    .line 125
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    iget-object v4, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleFile:Ljava/io/File;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/Recorder;->delete()V

    .line 134
    iput-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleFile:Ljava/io/File;

    .line 135
    iput-wide v1, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleLength:J

    .line 137
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/mediatek/phone/recording/Recorder;->signalStateChanged(I)V

    goto :goto_0
.end method

.method public sampleFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleFile:Ljava/io/File;

    return-object v0
.end method

.method public sampleLength()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleLength:J

    return-wide v0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "recorderState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    const-string v0, "sample_path"

    iget-object v1, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "sample_length"

    iget-wide v1, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleLength:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 99
    return-void
.end method

.method public setOnStateChangedListener(Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/mediatek/phone/recording/Recorder;->mOnStateChangedListener:Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;

    .line 146
    return-void
.end method

.method public startRecording(ILjava/lang/String;)V
    .locals 11
    .param p1, "outputfileformat"    # I
    .param p2, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 217
    const-string v7, "startRecording"

    invoke-virtual {p0, v7}, Lcom/mediatek/phone/recording/Recorder;->log(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/Recorder;->stop()V

    .line 220
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd_kk.mm.ss.SSS"

    invoke-direct {v1, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "date":Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    .line 224
    .local v6, "storageManager":Landroid/os/storage/StorageManager;
    if-nez v6, :cond_0

    .line 225
    const-string v7, "-----story manager is null----"

    invoke-virtual {p0, v7}, Lcom/mediatek/phone/recording/Recorder;->log(Ljava/lang/String;)V

    .line 274
    :goto_0
    return-void

    .line 228
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/storage/StorageManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v4, "sampleDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-nez v7, :cond_1

    .line 231
    const-string v7, "Recorder"

    const-string v8, "----- file can\'t write!! ---"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v4, Ljava/io/File;

    .end local v4    # "sampleDir":Ljava/io/File;
    const-string v7, "/sdcard/sdcard"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .restart local v4    # "sampleDir":Ljava/io/File;
    :cond_1
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/PhoneRecord"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .end local v4    # "sampleDir":Ljava/io/File;
    .local v5, "sampleDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 238
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 242
    :cond_2
    :try_start_0
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Audio_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleFile:Ljava/io/File;

    .line 243
    iget-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v7

    if-nez v7, :cond_3

    .line 244
    const-string v7, "can not create new empty file for recording because same name file already exists."

    invoke-virtual {p0, v7}, Lcom/mediatek/phone/recording/Recorder;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 252
    :cond_3
    const-string v7, "finish creating temp file, start to record"

    invoke-virtual {p0, v7}, Lcom/mediatek/phone/recording/Recorder;->log(Ljava/lang/String;)V

    .line 254
    new-instance v7, Landroid/media/MediaRecorder;

    invoke-direct {v7}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 255
    iget-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 256
    iget-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, v10}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 257
    iget-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 258
    iget-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, v10}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 259
    iget-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 262
    :try_start_1
    iget-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->prepare()V

    .line 263
    iget-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->start()V

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleStart:J

    .line 265
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/mediatek/phone/recording/Recorder;->setState(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 266
    :catch_0
    move-exception v3

    .line 267
    .local v3, "exception":Ljava/io/IOException;
    const-string v7, "startRecording, IOException"

    invoke-virtual {p0, v7}, Lcom/mediatek/phone/recording/Recorder;->log(Ljava/lang/String;)V

    .line 268
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/mediatek/phone/recording/Recorder;->setError(I)V

    .line 269
    iget-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->reset()V

    .line 270
    iget-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->release()V

    .line 271
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 272
    throw v3

    .line 246
    .end local v3    # "exception":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 247
    .local v2, "e":Ljava/io/IOException;
    invoke-direct {p0, v10}, Lcom/mediatek/phone/recording/Recorder;->setError(I)V

    .line 248
    const-string v7, "----***------- can\'t access sdcard !!"

    invoke-virtual {p0, v7}, Lcom/mediatek/phone/recording/Recorder;->log(Ljava/lang/String;)V

    .line 249
    throw v2
.end method

.method public state()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/mediatek/phone/recording/Recorder;->mState:I

    return v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 290
    const-string v0, "stop"

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/recording/Recorder;->log(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/Recorder;->stopRecording()V

    .line 292
    return-void
.end method

.method public stopRecording()V
    .locals 4

    .prologue
    .line 277
    const-string v0, "stopRecording"

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/recording/Recorder;->log(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleStart:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleLength:J

    .line 282
    iget-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 283
    iget-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/recording/Recorder;->setState(I)V

    goto :goto_0
.end method
