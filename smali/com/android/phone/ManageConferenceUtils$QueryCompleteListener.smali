.class final Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;
.super Ljava/lang/Object;
.source "ManageConferenceUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ManageConferenceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryCompleteListener"
.end annotation


# instance fields
.field private final mConferencCallListIndex:I

.field final synthetic this$0:Lcom/android/phone/ManageConferenceUtils;


# direct methods
.method public constructor <init>(Lcom/android/phone/ManageConferenceUtils;I)V
    .locals 0
    .param p2, "index"    # I

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;->this$0:Lcom/android/phone/ManageConferenceUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p2, p0, Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;->mConferencCallListIndex:I

    .line 97
    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "ci"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 101
    # getter for: Lcom/android/phone/ManageConferenceUtils;->DBG:Z
    invoke-static {}, Lcom/android/phone/ManageConferenceUtils;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;->this$0:Lcom/android/phone/ManageConferenceUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callerinfo query complete, updating UI."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/ManageConferenceUtils;->access$100(Lcom/android/phone/ManageConferenceUtils;Ljava/lang/String;)V

    :cond_0
    move-object v6, p2

    .line 103
    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 104
    .local v6, "connection":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 107
    .local v2, "presentation":I
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;->this$0:Lcom/android/phone/ManageConferenceUtils;

    # getter for: Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/phone/ManageConferenceUtils;->access$200(Lcom/android/phone/ManageConferenceUtils;)[Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;->mConferencCallListIndex:I

    aget-object v7, v0, v1

    .line 108
    .local v7, "viewGroup":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;->this$0:Lcom/android/phone/ManageConferenceUtils;

    const v1, 0x7f0b0059

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v1, 0x7f0b005b

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v1, 0x7f0b005a

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/ManageConferenceUtils;->displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 115
    return-void
.end method
