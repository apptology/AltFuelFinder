.class public Lcom/biznessapps/messages/MessageListFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/messages/MessageListFragment$SortMessagesByDate;,
        Lcom/biznessapps/messages/MessageListFragment$MessageItemListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/messages/MessageEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private allMessagesButton:Landroid/widget/TextView;

.field private imageMessagesButton:Landroid/widget/TextView;

.field private messageType:I

.field private selectedPosition:I

.field private tabMessagesButton:Landroid/widget/TextView;

.field private webMessagesButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;-><init>()V

    .line 42
    iput v0, p0, Lcom/biznessapps/messages/MessageListFragment;->messageType:I

    .line 44
    iput v0, p0, Lcom/biznessapps/messages/MessageListFragment;->selectedPosition:I

    .line 261
    return-void
.end method

.method static synthetic access$002(Lcom/biznessapps/messages/MessageListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/messages/MessageListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/biznessapps/messages/MessageListFragment;->messageType:I

    return p1
.end method

.method static synthetic access$200(Lcom/biznessapps/messages/MessageListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/messages/MessageListFragment;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/biznessapps/messages/MessageListFragment;->loadData()V

    return-void
.end method

.method private checkRichMessage(Lcom/biznessapps/messages/MessageEntity;)V
    .locals 9
    .param p1, "richMessage"    # Lcom/biznessapps/messages/MessageEntity;

    .prologue
    .line 226
    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 227
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/messages/MessageListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "WEB_VIEW_SINGLE_FRAGMENT"

    invoke-static {v7}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, "url":Ljava/lang/String;
    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 231
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 233
    :cond_0
    const-string v6, "URL"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v6, "TAB_FRAGMENT"

    const-string v7, "WEB_VIEW_SINGLE_FRAGMENT"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0, v1}, Lcom/biznessapps/messages/MessageListFragment;->startActivity(Landroid/content/Intent;)V

    .line 253
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getTabId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 238
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/CachingManager;->getTabList()Ljava/util/List;

    move-result-object v3

    .line 239
    .local v3, "tabList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    const/4 v4, 0x0

    .line 240
    .local v4, "tabToUse":Lcom/biznessapps/more/Tab;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/more/Tab;

    .line 241
    .local v2, "item":Lcom/biznessapps/more/Tab;
    invoke-virtual {v2}, Lcom/biznessapps/more/Tab;->getTabId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getTabId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 242
    move-object v4, v2

    .line 246
    .end local v2    # "item":Lcom/biznessapps/more/Tab;
    :cond_4
    if-eqz v4, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/biznessapps/messages/MessageListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getCategoryId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getDetailId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v4, v7, v8}, Lcom/biznessapps/utils/ApiUtils;->getTabIntent(Landroid/content/Context;Lcom/biznessapps/more/Tab;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 249
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/biznessapps/messages/MessageListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private getSpecificMessages(ILjava/util/List;)Ljava/util/List;
    .locals 4
    .param p1, "messageType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/messages/MessageEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/messages/MessageEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    .local p2, "originalMessages":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/messages/MessageEntity;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v2, "resultMessages":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/messages/MessageEntity;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    if-nez p1, :cond_1

    .line 204
    move-object v2, p2

    .line 213
    :cond_0
    return-object v2

    .line 206
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/messages/MessageEntity;

    .line 207
    .local v1, "item":Lcom/biznessapps/messages/MessageEntity;
    invoke-virtual {v1}, Lcom/biznessapps/messages/MessageEntity;->getType()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 208
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private plugListView(Landroid/app/Activity;Ljava/util/List;)V
    .locals 9
    .param p1, "holdActivity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/messages/MessageEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/messages/MessageEntity;>;"
    const/4 v8, 0x0

    .line 168
    invoke-static {p2}, Lcom/biznessapps/utils/ApiUtils;->hasNotData(Ljava/util/List;)Z

    move-result v2

    .line 169
    .local v2, "hasNoData":Z
    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$string;->no_messages:I

    invoke-virtual {p1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    iget-object v6, p0, Lcom/biznessapps/messages/MessageListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v6, v8}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    :goto_0
    return-void

    .line 173
    :cond_0
    new-instance v6, Lcom/biznessapps/messages/MessageListFragment$SortMessagesByDate;

    invoke-direct {v6, p0, v8}, Lcom/biznessapps/messages/MessageListFragment$SortMessagesByDate;-><init>(Lcom/biznessapps/messages/MessageListFragment;Lcom/biznessapps/messages/MessageListFragment$1;)V

    invoke-static {p2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 174
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 176
    .local v5, "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/messages/MessageEntity;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/messages/MessageEntity;

    .line 177
    .local v4, "item":Lcom/biznessapps/messages/MessageEntity;
    invoke-virtual {p0, v4, v5}, Lcom/biznessapps/messages/MessageListFragment;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    .end local v4    # "item":Lcom/biznessapps/messages/MessageEntity;
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 180
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcom/biznessapps/messages/MessageAdapter;

    sget v6, Lcom/biznessapps/layout/R$layout;->message_row:I

    iget-object v7, p0, Lcom/biznessapps/messages/MessageListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/biznessapps/messages/MessageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .local v0, "adapter":Lcom/biznessapps/common/adapters/AbstractAdapter;, "Lcom/biznessapps/common/adapters/AbstractAdapter<Lcom/biznessapps/messages/MessageEntity;>;"
    move-object v6, v0

    .line 181
    check-cast v6, Lcom/biznessapps/messages/MessageAdapter;

    new-instance v7, Lcom/biznessapps/messages/MessageListFragment$5;

    invoke-direct {v7, p0}, Lcom/biznessapps/messages/MessageListFragment$5;-><init>(Lcom/biznessapps/messages/MessageListFragment;)V

    invoke-virtual {v6, v7}, Lcom/biznessapps/messages/MessageAdapter;->setItemListener(Lcom/biznessapps/messages/MessageListFragment$MessageItemListener;)V

    .line 194
    iget-object v6, p0, Lcom/biznessapps/messages/MessageListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v6, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 195
    iget-object v6, p0, Lcom/biznessapps/messages/MessageListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget v7, p0, Lcom/biznessapps/messages/MessageListFragment;->selectedPosition:I

    invoke-virtual {v6, v7}, Lcom/biznessapps/widgets/RefreshableListView;->setSelection(I)V

    .line 196
    invoke-virtual {p0}, Lcom/biznessapps/messages/MessageListFragment;->initListViewListener()V

    goto :goto_0
.end method

.method private updateTabsState()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 217
    iget-object v3, p0, Lcom/biznessapps/messages/MessageListFragment;->allMessagesButton:Landroid/widget/TextView;

    iget v0, p0, Lcom/biznessapps/messages/MessageListFragment;->messageType:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 218
    iget-object v3, p0, Lcom/biznessapps/messages/MessageListFragment;->webMessagesButton:Landroid/widget/TextView;

    iget v0, p0, Lcom/biznessapps/messages/MessageListFragment;->messageType:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 219
    iget-object v3, p0, Lcom/biznessapps/messages/MessageListFragment;->tabMessagesButton:Landroid/widget/TextView;

    iget v0, p0, Lcom/biznessapps/messages/MessageListFragment;->messageType:I

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 220
    iget-object v3, p0, Lcom/biznessapps/messages/MessageListFragment;->imageMessagesButton:Landroid/widget/TextView;

    iget v0, p0, Lcom/biznessapps/messages/MessageListFragment;->messageType:I

    if-ne v0, v5, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 222
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biznessapps/messages/MessageListFragment;->allMessagesButton:Landroid/widget/TextView;

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/biznessapps/messages/MessageListFragment;->webMessagesButton:Landroid/widget/TextView;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/biznessapps/messages/MessageListFragment;->tabMessagesButton:Landroid/widget/TextView;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/biznessapps/messages/MessageListFragment;->imageMessagesButton:Landroid/widget/TextView;

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->updateTextViewIconState([Landroid/widget/TextView;)V

    .line 223
    return-void

    :cond_0
    move v0, v2

    .line 217
    goto :goto_0

    :cond_1
    move v0, v2

    .line 218
    goto :goto_1

    :cond_2
    move v0, v2

    .line 219
    goto :goto_2

    :cond_3
    move v0, v2

    .line 220
    goto :goto_3
.end method


# virtual methods
.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/biznessapps/messages/MessageListFragment;->bgUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 111
    sget v0, Lcom/biznessapps/layout/R$layout;->message_list_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 48
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v1

    invoke-virtual {p0}, Lcom/biznessapps/messages/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/common/entities/AppSettings;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "deviceId":Ljava/lang/String;
    const-string v1, "messages.php?app_code=%s&tab_id=%s&dev_token=%s&platform=android"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/messages/MessageListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/biznessapps/messages/MessageListFragment;->tabId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected initSettingsData()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->initSettingsData()V

    .line 56
    iget-object v0, p0, Lcom/biznessapps/messages/MessageListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppSettings;->useBlurEffectForMessagesTab()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/UiSettings;->setUseBlurEffect(Z)V

    .line 57
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 62
    sget v1, Lcom/biznessapps/layout/R$id;->all_messages_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/messages/MessageListFragment;->allMessagesButton:Landroid/widget/TextView;

    .line 63
    sget v1, Lcom/biznessapps/layout/R$id;->web_messages_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/messages/MessageListFragment;->webMessagesButton:Landroid/widget/TextView;

    .line 64
    sget v1, Lcom/biznessapps/layout/R$id;->tab_messages_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/messages/MessageListFragment;->tabMessagesButton:Landroid/widget/TextView;

    .line 65
    sget v1, Lcom/biznessapps/layout/R$id;->image_messages_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/messages/MessageListFragment;->imageMessagesButton:Landroid/widget/TextView;

    .line 67
    iget-object v1, p0, Lcom/biznessapps/messages/MessageListFragment;->allMessagesButton:Landroid/widget/TextView;

    sget v2, Lcom/biznessapps/layout/R$string;->message_all_type:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 68
    iget-object v1, p0, Lcom/biznessapps/messages/MessageListFragment;->webMessagesButton:Landroid/widget/TextView;

    sget v2, Lcom/biznessapps/layout/R$string;->message_web_type:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 69
    iget-object v1, p0, Lcom/biznessapps/messages/MessageListFragment;->tabMessagesButton:Landroid/widget/TextView;

    sget v2, Lcom/biznessapps/layout/R$string;->message_tab_content_type:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 70
    iget-object v1, p0, Lcom/biznessapps/messages/MessageListFragment;->imageMessagesButton:Landroid/widget/TextView;

    sget v2, Lcom/biznessapps/layout/R$string;->message_image_type:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 72
    sget v1, Lcom/biznessapps/layout/R$id;->tab_buttons_container:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 74
    .local v0, "buttonsContainer":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/biznessapps/messages/MessageListFragment;->allMessagesButton:Landroid/widget/TextView;

    new-instance v2, Lcom/biznessapps/messages/MessageListFragment$1;

    invoke-direct {v2, p0}, Lcom/biznessapps/messages/MessageListFragment$1;-><init>(Lcom/biznessapps/messages/MessageListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v1, p0, Lcom/biznessapps/messages/MessageListFragment;->webMessagesButton:Landroid/widget/TextView;

    new-instance v2, Lcom/biznessapps/messages/MessageListFragment$2;

    invoke-direct {v2, p0}, Lcom/biznessapps/messages/MessageListFragment$2;-><init>(Lcom/biznessapps/messages/MessageListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v1, p0, Lcom/biznessapps/messages/MessageListFragment;->tabMessagesButton:Landroid/widget/TextView;

    new-instance v2, Lcom/biznessapps/messages/MessageListFragment$3;

    invoke-direct {v2, p0}, Lcom/biznessapps/messages/MessageListFragment$3;-><init>(Lcom/biznessapps/messages/MessageListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v1, p0, Lcom/biznessapps/messages/MessageListFragment;->imageMessagesButton:Landroid/widget/TextView;

    new-instance v2, Lcom/biznessapps/messages/MessageListFragment$4;

    invoke-direct {v2, p0}, Lcom/biznessapps/messages/MessageListFragment$4;-><init>(Lcom/biznessapps/messages/MessageListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p0, Lcom/biznessapps/messages/MessageListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 103
    iget-object v1, p0, Lcom/biznessapps/messages/MessageListFragment;->allMessagesButton:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;)V

    .line 104
    iget-object v1, p0, Lcom/biznessapps/messages/MessageListFragment;->webMessagesButton:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;)V

    .line 105
    iget-object v1, p0, Lcom/biznessapps/messages/MessageListFragment;->tabMessagesButton:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;)V

    .line 106
    iget-object v1, p0, Lcom/biznessapps/messages/MessageListFragment;->imageMessagesButton:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;)V

    .line 107
    return-void
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
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
    .line 161
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/messages/MessageEntity;

    .line 162
    .local v0, "item":Lcom/biznessapps/messages/MessageEntity;
    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0, v0}, Lcom/biznessapps/messages/MessageListFragment;->checkRichMessage(Lcom/biznessapps/messages/MessageEntity;)V

    .line 165
    :cond_0
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 11
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 116
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 118
    .local v4, "parsedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/messages/MessageEntity;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/biznessapps/messages/MessageEntity;

    invoke-virtual {v8}, Lcom/biznessapps/messages/MessageEntity;->getBackground()Ljava/lang/String;

    move-result-object v8

    :goto_0
    iput-object v8, p0, Lcom/biznessapps/messages/MessageListFragment;->bgUrl:Ljava/lang/String;

    .line 121
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/storage/StorageKeeper;->getMessagesIds()Ljava/util/List;

    move-result-object v7

    .line 123
    .local v7, "storedItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/messages/MessageEntity;

    .line 124
    .local v2, "item":Lcom/biznessapps/messages/MessageEntity;
    invoke-virtual {v2}, Lcom/biznessapps/messages/MessageEntity;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 125
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/biznessapps/storage/StorageKeeper;->addMessage(Lcom/biznessapps/messages/MessageEntity;)V

    goto :goto_1

    .line 118
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/biznessapps/messages/MessageEntity;
    .end local v7    # "storedItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 128
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v7    # "storedItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/storage/StorageKeeper;->getMessages()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/biznessapps/messages/MessageListFragment;->items:Ljava/util/List;

    .line 130
    iget-object v8, p0, Lcom/biznessapps/messages/MessageListFragment;->items:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/messages/MessageEntity;

    .line 131
    .local v3, "localItem":Lcom/biznessapps/messages/MessageEntity;
    const/4 v6, 0x1

    .line 133
    .local v6, "shouldDelete":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/messages/MessageEntity;

    .line 134
    .local v5, "serverItem":Lcom/biznessapps/messages/MessageEntity;
    invoke-virtual {v3}, Lcom/biznessapps/messages/MessageEntity;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/biznessapps/messages/MessageEntity;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 135
    const/4 v6, 0x0

    .line 139
    .end local v5    # "serverItem":Lcom/biznessapps/messages/MessageEntity;
    :cond_5
    if-eqz v6, :cond_3

    .line 140
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/biznessapps/storage/StorageKeeper;->removeMessage(Lcom/biznessapps/messages/MessageEntity;)V

    goto :goto_2

    .line 143
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "localItem":Lcom/biznessapps/messages/MessageEntity;
    .end local v6    # "shouldDelete":Z
    :cond_6
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/storage/StorageKeeper;->getMessages()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/biznessapps/messages/MessageListFragment;->items:Ljava/util/List;

    .line 144
    iget-object v8, p0, Lcom/biznessapps/messages/MessageListFragment;->items:Ljava/util/List;

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    :goto_3
    return v8

    :cond_7
    move v8, v9

    goto :goto_3
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 155
    invoke-direct {p0}, Lcom/biznessapps/messages/MessageListFragment;->updateTabsState()V

    .line 156
    iget v0, p0, Lcom/biznessapps/messages/MessageListFragment;->messageType:I

    iget-object v1, p0, Lcom/biznessapps/messages/MessageListFragment;->items:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/messages/MessageListFragment;->getSpecificMessages(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/biznessapps/messages/MessageListFragment;->plugListView(Landroid/app/Activity;Ljava/util/List;)V

    .line 157
    return-void
.end method
