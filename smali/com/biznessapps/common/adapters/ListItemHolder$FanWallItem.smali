.class public Lcom/biznessapps/common/adapters/ListItemHolder$FanWallItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FanWallItem"
.end annotation


# instance fields
.field private commentTextView:Landroid/widget/TextView;

.field private fanWallImageView:Landroid/widget/ImageView;

.field private nameTextView:Landroid/widget/TextView;

.field private replyTextView:Landroid/widget/TextView;

.field private timeAgoTextView:Landroid/widget/TextView;

.field private uploadImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommentTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$FanWallItem;->commentTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getFanWallImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$FanWallItem;->fanWallImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getNameTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$FanWallItem;->nameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getReplyTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$FanWallItem;->replyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTimeAgoTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$FanWallItem;->timeAgoTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUploadImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$FanWallItem;->uploadImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setCommentTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "commentTextView"    # Landroid/widget/TextView;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$FanWallItem;->commentTextView:Landroid/widget/TextView;

    .line 369
    return-void
.end method

.method public setFanWallImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "fanWallImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$FanWallItem;->fanWallImageView:Landroid/widget/ImageView;

    .line 385
    return-void
.end method

.method public setNameTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "nameTextView"    # Landroid/widget/TextView;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$FanWallItem;->nameTextView:Landroid/widget/TextView;

    .line 361
    return-void
.end method

.method public setReplyTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "replyTextView"    # Landroid/widget/TextView;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$FanWallItem;->replyTextView:Landroid/widget/TextView;

    .line 353
    return-void
.end method

.method public setTimeAgoTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "timeAgoTextView"    # Landroid/widget/TextView;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$FanWallItem;->timeAgoTextView:Landroid/widget/TextView;

    .line 377
    return-void
.end method

.method public setUploadImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "uploadImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$FanWallItem;->uploadImageView:Landroid/widget/ImageView;

    .line 393
    return-void
.end method
