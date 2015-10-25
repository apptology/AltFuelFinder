.class public Lcom/biznessapps/golfcourse/SelectCourseFragment;
.super Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;
.source "SelectCourseFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment",
        "<",
        "Lcom/biznessapps/common/entities/CommonListEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final INTENT_RESULT_PARAM_KEY_COURSE:Ljava/lang/String; = "course_id"


# instance fields
.field private mCourseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/golfcourse/model/Course;",
            ">;"
        }
    .end annotation
.end field

.field private mTVGuide:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;-><init>()V

    return-void
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 11
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 109
    const/4 v1, 0x0

    .line 111
    .local v1, "count":I
    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectCourseFragment;->mCourseList:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 112
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v5, "mLayoutList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectCourseFragment;->mCourseList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/golfcourse/model/Course;

    .line 114
    .local v2, "course":Lcom/biznessapps/golfcourse/model/Course;
    invoke-virtual {v2}, Lcom/biznessapps/golfcourse/model/Course;->isValid()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 120
    new-instance v3, Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-direct {v3}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    .line 121
    .local v3, "entity":Lcom/biznessapps/common/entities/CommonListEntity;
    invoke-virtual {v3, v2}, Lcom/biznessapps/common/entities/CommonListEntity;->setObject(Ljava/lang/Object;)V

    .line 122
    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectCourseFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v3, v5, v6}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    .end local v2    # "course":Lcom/biznessapps/golfcourse/model/Course;
    .end local v3    # "entity":Lcom/biznessapps/common/entities/CommonListEntity;
    :cond_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!!!!!!!!!!!!!!!!!!!! mCourseList.size() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/biznessapps/golfcourse/SelectCourseFragment;->mCourseList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!!!!!!!!!!!!!!!!!!!! mLayoutList.size() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/biznessapps/golfcourse/SelectCourseAdapter;

    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectCourseFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, p1, v5, v6}, Lcom/biznessapps/golfcourse/SelectCourseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 128
    .local v0, "adapter":Lcom/biznessapps/golfcourse/SelectCourseAdapter;
    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectCourseFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v6, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SelectCourseFragment;->initListViewListener()V

    .line 132
    .end local v0    # "adapter":Lcom/biznessapps/golfcourse/SelectCourseAdapter;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mLayoutList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    :cond_2
    if-nez v1, :cond_3

    .line 133
    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectCourseFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v6, v10}, Lcom/biznessapps/widgets/RefreshableListView;->setVisibility(I)V

    .line 134
    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectCourseFragment;->mTVGuide:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    :goto_1
    return-void

    .line 136
    :cond_3
    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectCourseFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v6, v9}, Lcom/biznessapps/widgets/RefreshableListView;->setVisibility(I)V

    .line 137
    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectCourseFragment;->mTVGuide:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/biznessapps/layout/R$layout;->golf_course_select_course_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    const-string v0, "golfcourse.php?app_code=%s&platform=android&&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SelectCourseFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/golfcourse/SelectCourseFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SelectCourseFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SelectCourseFragment;->initAdsWithAlpha()V

    .line 53
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 59
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SelectCourseFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 61
    sget v0, Lcom/biznessapps/layout/R$id;->tvGuide:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/SelectCourseFragment;->mTVGuide:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p0, p1}, Lcom/biznessapps/golfcourse/SelectCourseFragment;->loadUniversalStrings(Landroid/view/ViewGroup;)V

    .line 66
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SelectCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZImageViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZImageViewStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/SelectCourseFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/SelectCourseFragment;->titleBarRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZImageViewStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 67
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SelectCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/SelectCourseFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/SelectCourseFragment;->mTVGuide:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(ILjava/lang/Object;)V

    .line 68
    return-void
.end method

.method protected loadUniversalStrings(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SelectCourseFragment;->mTVGuide:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->nothing_found:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    return-void
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 144
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 147
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/entities/CommonListEntity;

    .line 148
    .local v1, "entity":Lcom/biznessapps/common/entities/CommonListEntity;
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/model/Course;

    .line 150
    .local v0, "course":Lcom/biznessapps/golfcourse/model/Course;
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SelectCourseFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 151
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "course_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 152
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/biznessapps/golfcourse/SelectCourseFragment;->finishFragment(ILandroid/content/Intent;)V

    .line 153
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    .line 96
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!!!!!!!!!!!!!!!!!! dataToParse = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/biznessapps/golfcourse/CourseJsonParser;->getInstance()Lcom/biznessapps/golfcourse/CourseJsonParser;

    move-result-object v0

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SelectCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/biznessapps/golfcourse/CourseJsonParser;->parseCourseList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/golfcourse/SelectCourseFragment;->mCourseList:Ljava/util/List;

    .line 98
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 105
    invoke-direct {p0, p1}, Lcom/biznessapps/golfcourse/SelectCourseFragment;->plugListView(Landroid/app/Activity;)V

    .line 106
    return-void
.end method

.method protected useSearchBar()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
