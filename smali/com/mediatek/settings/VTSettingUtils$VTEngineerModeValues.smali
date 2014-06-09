.class public Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;
.super Ljava/lang/Object;
.source "VTSettingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/VTSettingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VTEngineerModeValues"
.end annotation


# instance fields
.field public auto_answer:Z

.field public auto_answer_time:Ljava/lang/String;

.field public config_audio_channel_adapt:Ljava/lang/String;

.field public config_multiplex_level:Ljava/lang/String;

.field public config_terminal_type:Ljava/lang/String;

.field public config_use_wnsrp:Ljava/lang/String;

.field public config_video_channel_adapt:Ljava/lang/String;

.field public config_video_channel_reverse:Ljava/lang/String;

.field public config_video_codec_preference:Ljava/lang/String;

.field public debug_message:Z

.field public h223_raw_data:Z

.field public h263_only:Z

.field public log_filter_tag_0_value:I

.field public log_filter_tag_1_value:I

.field public log_filter_tag_2_value:I

.field public log_filter_tag_3_value:I

.field public log_filter_tag_4_value:I

.field public log_filter_tag_5_value:I

.field public log_filter_tag_6_value:I

.field public log_to_file:Z

.field public peer_audio_recoder_format:Ljava/lang/String;

.field public peer_audio_recoder_service:Z

.field public peer_video_recoder_format:Ljava/lang/String;

.field public peer_video_recoder_service:Z

.field final synthetic this$0:Lcom/mediatek/settings/VTSettingUtils;

.field public working_mode:Ljava/lang/String;

.field public working_mode_detail:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mediatek/settings/VTSettingUtils;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->this$0:Lcom/mediatek/settings/VTSettingUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-virtual {p0}, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->resetValuesToDefault()V

    .line 221
    return-void
.end method


# virtual methods
.method public resetValuesToDefault()V
    .locals 3

    .prologue
    const/16 v2, 0x18

    const/4 v1, 0x0

    .line 224
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->working_mode:Ljava/lang/String;

    .line 225
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->working_mode_detail:Ljava/lang/String;

    .line 226
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_audio_channel_adapt:Ljava/lang/String;

    .line 227
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_video_channel_adapt:Ljava/lang/String;

    .line 228
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_video_channel_reverse:Ljava/lang/String;

    .line 229
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_multiplex_level:Ljava/lang/String;

    .line 230
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_video_codec_preference:Ljava/lang/String;

    .line 231
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_use_wnsrp:Ljava/lang/String;

    .line 232
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_terminal_type:Ljava/lang/String;

    .line 233
    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->auto_answer:Z

    .line 234
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->auto_answer_time:Ljava/lang/String;

    .line 235
    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->peer_audio_recoder_service:Z

    .line 236
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->peer_audio_recoder_format:Ljava/lang/String;

    .line 237
    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->peer_video_recoder_service:Z

    .line 238
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->peer_video_recoder_format:Ljava/lang/String;

    .line 239
    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->debug_message:Z

    .line 240
    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->h223_raw_data:Z

    .line 241
    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_to_file:Z

    .line 242
    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->h263_only:Z

    .line 244
    iput v2, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_0_value:I

    .line 245
    iput v2, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_1_value:I

    .line 246
    iput v2, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_2_value:I

    .line 247
    iput v2, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_3_value:I

    .line 248
    iput v2, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_4_value:I

    .line 249
    iput v2, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_5_value:I

    .line 250
    iput v2, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_6_value:I

    .line 251
    return-void
.end method
