.class Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;
.super Landroid/os/AsyncTask;
.source "SocialCommentComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/ui/SocialCommentComponent;->loadCommentsData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/biznessapps/fan_wall/CommentEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$cacher:Lcom/biznessapps/api/CachingManager;

.field final synthetic val$listView:Lcom/biznessapps/widgets/RefreshableListView;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/ui/SocialCommentComponent;Lcom/biznessapps/api/CachingManager;Landroid/content/Context;Lcom/biznessapps/widgets/RefreshableListView;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    iput-object p2, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->val$cacher:Lcom/biznessapps/api/CachingManager;

    iput-object p3, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->val$appContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->val$listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 131
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fan_wall/CommentEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 140
    .local v0, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    const-string v4, "comment_list.php?app_code=%s&id=%s&tab_id=%s&show_all=1"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->val$cacher:Lcom/biznessapps/api/CachingManager;

    invoke-virtual {v7}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    # getter for: Lcom/biznessapps/common/social/ui/SocialCommentComponent;->commentId:Ljava/lang/String;
    invoke-static {v7}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->access$200(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    # getter for: Lcom/biznessapps/common/social/ui/SocialCommentComponent;->tabId:Ljava/lang/String;
    invoke-static {v7}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->access$300(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "commentsListUrl":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "commentsListData":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/json/JsonParser;->parseFanComments(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 143
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 144
    move-object v0, v3

    .line 146
    iget-object v4, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->val$cacher:Lcom/biznessapps/api/CachingManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FAN_WALL_INFO_PROPERTY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    # getter for: Lcom/biznessapps/common/social/ui/SocialCommentComponent;->commentId:Ljava/lang/String;
    invoke-static {v6}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->access$200(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 148
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 131
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fan_wall/CommentEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 153
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 154
    if-eqz p1, :cond_4

    .line 155
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 156
    .local v5, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/fan_wall/CommentEntity;

    .line 157
    .local v3, "item":Lcom/biznessapps/fan_wall/CommentEntity;
    sget v6, Lcom/biznessapps/layout/R$drawable;->comment_default_icon:I

    invoke-virtual {v3, v6}, Lcom/biznessapps/fan_wall/CommentEntity;->setImageId(I)V

    .line 158
    iget-object v6, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    # getter for: Lcom/biznessapps/common/social/ui/SocialCommentComponent;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v6}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->access$400(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)Lcom/biznessapps/api/UiSettings;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    .end local v3    # "item":Lcom/biznessapps/fan_wall/CommentEntity;
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v8, :cond_5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/biznessapps/fan_wall/CommentEntity;

    invoke-virtual {v6}, Lcom/biznessapps/fan_wall/CommentEntity;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_1
    move v1, v8

    .line 162
    .local v1, "hasNotData":Z
    :goto_1
    if-nez v1, :cond_2

    .line 163
    new-instance v0, Lcom/biznessapps/events/EventCommentsAdapter;

    iget-object v6, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->val$appContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    # getter for: Lcom/biznessapps/common/social/ui/SocialCommentComponent;->timestampType:I
    invoke-static {v9}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->access$500(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)I

    move-result v9

    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    # getter for: Lcom/biznessapps/common/social/ui/SocialCommentComponent;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v10}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->access$400(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)Lcom/biznessapps/api/UiSettings;

    move-result-object v10

    invoke-direct {v0, v6, v9, v5, v10}, Lcom/biznessapps/events/EventCommentsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 165
    .local v0, "adapter":Lcom/biznessapps/events/EventCommentsAdapter;
    iget-object v6, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->val$listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v6, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    .end local v0    # "adapter":Lcom/biznessapps/events/EventCommentsAdapter;
    :cond_2
    iget-object v6, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    # getter for: Lcom/biznessapps/common/social/ui/SocialCommentComponent;->commentsLabel:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->access$600(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 168
    if-eqz v1, :cond_6

    move v4, v7

    .line 169
    .local v4, "numberOfComments":I
    :goto_2
    iget-object v6, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    # getter for: Lcom/biznessapps/common/social/ui/SocialCommentComponent;->commentsLabel:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->access$600(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->val$appContext:Landroid/content/Context;

    sget v11, Lcom/biznessapps/layout/R$string;->comments:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .end local v4    # "numberOfComments":I
    :cond_3
    iget-object v6, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    # getter for: Lcom/biznessapps/common/social/ui/SocialCommentComponent;->enableListViewScroll:Z
    invoke-static {v6}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->access$700(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 173
    iget-object v6, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->val$listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v6, v8}, Lcom/biznessapps/widgets/RefreshableListView;->setExpandOn(Z)V

    .line 178
    .end local v1    # "hasNotData":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    :cond_4
    :goto_3
    return-void

    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    :cond_5
    move v1, v7

    .line 160
    goto :goto_1

    .line 168
    .restart local v1    # "hasNotData":Z
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_2

    .line 175
    :cond_7
    iget-object v6, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->val$listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v6, v7}, Lcom/biznessapps/widgets/RefreshableListView;->setExpandOn(Z)V

    goto :goto_3
.end method
