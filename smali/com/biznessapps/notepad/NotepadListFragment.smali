.class public Lcom/biznessapps/notepad/NotepadListFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "NotepadListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/notepad/NotepadListFragment$SortNotepadByDate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/notepad/NotepadEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private addNoteButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;-><init>()V

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/notepad/NotepadListFragment;Lcom/biznessapps/notepad/NotepadEntity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/notepad/NotepadListFragment;
    .param p1, "x1"    # Lcom/biznessapps/notepad/NotepadEntity;
    .param p2, "x2"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/notepad/NotepadListFragment;->openNotepad(Lcom/biznessapps/notepad/NotepadEntity;I)V

    return-void
.end method

.method private getFilteredData(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/notepad/NotepadEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/notepad/NotepadEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/notepad/NotepadEntity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, "filteredData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/notepad/NotepadEntity;>;"
    iget-object v4, p0, Lcom/biznessapps/notepad/NotepadListFragment;->searchQuery:Ljava/lang/String;

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    move-object v0, p1

    .line 130
    :cond_0
    return-object v0

    .line 120
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/notepad/NotepadEntity;

    .line 121
    .local v2, "item":Lcom/biznessapps/notepad/NotepadEntity;
    invoke-virtual {v2}, Lcom/biznessapps/notepad/NotepadEntity;->getContent()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "searchText":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/notepad/NotepadListFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private openNotepad(Lcom/biznessapps/notepad/NotepadEntity;I)V
    .locals 4
    .param p1, "item"    # Lcom/biznessapps/notepad/NotepadEntity;
    .param p2, "position"    # I

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/notepad/NotepadListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "NOTEPAD_EDIT_FRAGMENT"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/notepad/NotepadListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 106
    const-string v1, "TAB_SPECIAL_ID"

    iget-object v2, p0, Lcom/biznessapps/notepad/NotepadListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "NOTEPAD_EDIT_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    if-eqz p1, :cond_0

    .line 109
    const-string v1, "EDIT_NOTE_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 110
    const-string v1, "LIST_POSITION_EXTRA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    :cond_0
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/biznessapps/notepad/NotepadListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 113
    return-void
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 7
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 88
    iget-object v4, p0, Lcom/biznessapps/notepad/NotepadListFragment;->items:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/biznessapps/notepad/NotepadListFragment;->getFilteredData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/notepad/NotepadEntity;>;"
    if-eqz v0, :cond_1

    .line 91
    iget-object v4, p0, Lcom/biznessapps/notepad/NotepadListFragment;->items:Ljava/util/List;

    new-instance v5, Lcom/biznessapps/notepad/NotepadListFragment$SortNotepadByDate;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/biznessapps/notepad/NotepadListFragment$SortNotepadByDate;-><init>(Lcom/biznessapps/notepad/NotepadListFragment;Lcom/biznessapps/notepad/NotepadListFragment$1;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/notepad/NotepadEntity;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/notepad/NotepadEntity;

    .line 94
    .local v2, "item":Lcom/biznessapps/notepad/NotepadEntity;
    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/notepad/NotepadListFragment;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    .end local v2    # "item":Lcom/biznessapps/notepad/NotepadEntity;
    :cond_0
    new-instance v4, Lcom/biznessapps/notepad/NotepadListAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/notepad/NotepadListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v4, v5, v3, v6}, Lcom/biznessapps/notepad/NotepadListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    iput-object v4, p0, Lcom/biznessapps/notepad/NotepadListFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    .line 97
    iget-object v4, p0, Lcom/biznessapps/notepad/NotepadListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v5, p0, Lcom/biznessapps/notepad/NotepadListFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    invoke-virtual {v4, v5}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    invoke-virtual {p0}, Lcom/biznessapps/notepad/NotepadListFragment;->initListViewListener()V

    .line 100
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/notepad/NotepadEntity;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageKeeper;->getNotes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/notepad/NotepadListFragment;->items:Ljava/util/List;

    .line 72
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOTEPAD_NOTE_LIST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/notepad/NotepadListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/notepad/NotepadListFragment;->items:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/biznessapps/layout/R$layout;->notepad_list_view:I

    return v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 49
    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {p1, v0}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 50
    sget v0, Lcom/biznessapps/layout/R$id;->add_note:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/notepad/NotepadListFragment;->addNoteButton:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadListFragment;->addNoteButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/biznessapps/notepad/NotepadListFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/notepad/NotepadListFragment$1;-><init>(Lcom/biznessapps/notepad/NotepadListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/notepad/NotepadListFragment;->addNoteButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 61
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/biznessapps/notepad/NotepadListFragment;->loadData()V

    .line 39
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
    .line 83
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/notepad/NotepadEntity;

    .line 84
    .local v0, "item":Lcom/biznessapps/notepad/NotepadEntity;
    invoke-direct {p0, v0, p3}, Lcom/biznessapps/notepad/NotepadListFragment;->openNotepad(Lcom/biznessapps/notepad/NotepadEntity;I)V

    .line 85
    return-void
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/biznessapps/notepad/NotepadListFragment;->plugListView(Landroid/app/Activity;)V

    .line 67
    return-void
.end method

.method protected useSearchBar()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method
