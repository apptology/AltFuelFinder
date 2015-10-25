.class public Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "VoiceRecordingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;,
        Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$OnRecordClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/voice_recording/RecordEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$OnRecordClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/voice_recording/RecordEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/voice_recording/RecordEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->voice_recording_item_layout:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 29
    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;)Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$OnRecordClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;->listener:Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$OnRecordClickListener;

    return-object v0
.end method


# virtual methods
.method public getSizeInformation()Ljava/lang/String;
    .locals 8

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;->getCount()I

    move-result v3

    .line 103
    .local v3, "numberOfRecords":I
    const/4 v0, 0x0

    .line 104
    .local v0, "commonSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 105
    invoke-virtual {p0, v2}, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/voice_recording/RecordEntity;

    .line 106
    .local v1, "file":Lcom/biznessapps/voice_recording/RecordEntity;
    int-to-long v4, v0

    invoke-virtual {v1}, Lcom/biznessapps/voice_recording/RecordEntity;->getSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v0, v4

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "file":Lcom/biznessapps/voice_recording/RecordEntity;
    :cond_0
    const-string v4, "%d kB"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    div-int/lit16 v7, v0, 0x400

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    if-nez p2, :cond_1

    .line 37
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;->layoutItemResourceId:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 40
    new-instance v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;-><init>(Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$1;)V

    .line 41
    .local v5, "holder":Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;
    sget v8, Lcom/biznessapps/layout/R$id;->name_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    .line 42
    sget v8, Lcom/biznessapps/layout/R$id;->date_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 43
    sget v8, Lcom/biznessapps/layout/R$id;->duration_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->durationView:Landroid/widget/TextView;

    .line 44
    sget v8, Lcom/biznessapps/layout/R$id;->size_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->sizeView:Landroid/widget/TextView;

    .line 45
    sget v8, Lcom/biznessapps/layout/R$id;->play_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->playImage:Landroid/widget/ImageView;

    .line 46
    sget v8, Lcom/biznessapps/layout/R$id;->remove_button:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->removeImage:Landroid/widget/ImageView;

    .line 47
    sget v8, Lcom/biznessapps/layout/R$id;->share_button:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->shareImage:Landroid/widget/ImageView;

    .line 48
    sget v8, Lcom/biznessapps/layout/R$id;->line_delimiter:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->lineView:Landroid/widget/ImageView;

    .line 50
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/biznessapps/voice_recording/RecordEntity;

    .line 59
    .local v6, "item":Lcom/biznessapps/voice_recording/RecordEntity;
    if-eqz v6, :cond_0

    .line 60
    iget-object v8, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/biznessapps/voice_recording/RecordEntity;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v6}, Lcom/biznessapps/voice_recording/RecordEntity;->getFileDate()J

    move-result-wide v1

    .line 62
    .local v1, "date":J
    iget-object v8, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v9}, Lcom/biznessapps/utils/DateUtils;->getStandartDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v6}, Lcom/biznessapps/voice_recording/RecordEntity;->getDuration()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v3, v8, v10

    .line 64
    .local v3, "durationInSec":J
    iget-object v8, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->durationView:Landroid/widget/TextView;

    const-string v9, "%02d:%02d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/16 v12, 0x3c

    div-long v12, v3, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-wide/16 v12, 0x3c

    rem-long v12, v3, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v8, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->sizeView:Landroid/widget/TextView;

    const-string v9, "%d kB"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v6}, Lcom/biznessapps/voice_recording/RecordEntity;->getSize()J

    move-result-wide v12

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v7, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->playImage:Landroid/widget/ImageView;

    .line 68
    .local v7, "playImage":Landroid/widget/ImageView;
    new-instance v8, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v6}, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$1;-><init>(Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;Lcom/biznessapps/voice_recording/RecordEntity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v8, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->removeImage:Landroid/widget/ImageView;

    new-instance v9, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v6}, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$2;-><init>(Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;Lcom/biznessapps/voice_recording/RecordEntity;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v8, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->shareImage:Landroid/widget/ImageView;

    new-instance v9, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$3;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v6}, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$3;-><init>(Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;Lcom/biznessapps/voice_recording/RecordEntity;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {v6}, Lcom/biznessapps/voice_recording/RecordEntity;->canPlay()Z

    move-result v8

    if-eqz v8, :cond_2

    sget v8, Lcom/biznessapps/layout/R$drawable;->play_icon_new:I

    :goto_1
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    invoke-virtual {v6}, Lcom/biznessapps/voice_recording/RecordEntity;->hasColor()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 88
    invoke-virtual {v6}, Lcom/biznessapps/voice_recording/RecordEntity;->getItemColor()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    invoke-virtual {v6}, Lcom/biznessapps/voice_recording/RecordEntity;->getItemTextColor()I

    move-result v8

    const/4 v9, 0x4

    new-array v9, v9, [Landroid/widget/TextView;

    const/4 v10, 0x0

    iget-object v11, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->durationView:Landroid/widget/TextView;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->sizeView:Landroid/widget/TextView;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    aput-object v11, v9, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 91
    iget-object v8, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->lineView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Lcom/biznessapps/voice_recording/RecordEntity;->getItemTextColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 92
    invoke-virtual {v6}, Lcom/biznessapps/voice_recording/RecordEntity;->getItemTextColor()I

    move-result v8

    iget-object v9, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->removeImage:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 93
    invoke-virtual {v6}, Lcom/biznessapps/voice_recording/RecordEntity;->getItemTextColor()I

    move-result v8

    iget-object v9, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->shareImage:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 95
    invoke-virtual {v6}, Lcom/biznessapps/voice_recording/RecordEntity;->getItemTextColor()I

    move-result v8

    iget-object v9, v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;->playImage:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 98
    .end local v1    # "date":J
    .end local v3    # "durationInSec":J
    .end local v7    # "playImage":Landroid/widget/ImageView;
    :cond_0
    return-object p2

    .line 54
    .end local v5    # "holder":Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;
    .end local v6    # "item":Lcom/biznessapps/voice_recording/RecordEntity;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;

    .restart local v5    # "holder":Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;
    goto/16 :goto_0

    .line 86
    .restart local v1    # "date":J
    .restart local v3    # "durationInSec":J
    .restart local v6    # "item":Lcom/biznessapps/voice_recording/RecordEntity;
    .restart local v7    # "playImage":Landroid/widget/ImageView;
    :cond_2
    sget v8, Lcom/biznessapps/layout/R$drawable;->pause_icon_new:I

    goto :goto_1
.end method

.method public setListener(Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$OnRecordClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$OnRecordClickListener;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;->listener:Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$OnRecordClickListener;

    .line 25
    return-void
.end method
