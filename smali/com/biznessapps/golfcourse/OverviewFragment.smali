.class public Lcom/biznessapps/golfcourse/OverviewFragment;
.super Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;
.source "OverviewFragment.java"


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
.field public static final INTENT_PARAM_KEY_GAME_ID:Ljava/lang/String; = "game_id"


# instance fields
.field private mGame:Lcom/biznessapps/golfcourse/model/Game;

.field private mTVPar:Landroid/widget/TextView;

.field private mTVTotalTees:Landroid/widget/TextView;

.field private mVGDescription:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;-><init>()V

    return-void
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 8
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 154
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v4, "mLayoutList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    iget-object v5, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v5}, Lcom/biznessapps/golfcourse/model/Game;->getCourse()Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v0

    .line 156
    .local v0, "course":Lcom/biznessapps/golfcourse/model/Course;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/model/Course;->getHoleList()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/model/Course;->getHoleList()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/golfcourse/model/Hole;

    .line 159
    .local v1, "hole":Lcom/biznessapps/golfcourse/model/Hole;
    new-instance v3, Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-direct {v3}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    .line 160
    .local v3, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    invoke-virtual {v3, v1}, Lcom/biznessapps/common/entities/CommonListEntity;->setObject(Ljava/lang/Object;)V

    .line 161
    iget-object v5, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v3, v4, v5}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "hole":Lcom/biznessapps/golfcourse/model/Hole;
    .end local v3    # "item":Lcom/biznessapps/common/entities/CommonListEntity;
    :cond_0
    new-instance v5, Lcom/biznessapps/golfcourse/OverviewAdapter;

    iget-object v6, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->settings:Lcom/biznessapps/api/UiSettings;

    iget-object v7, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v7}, Lcom/biznessapps/golfcourse/model/Game;->getCourse()Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/golfcourse/model/Course;->getUnitType()I

    move-result v7

    invoke-direct {v5, p1, v4, v6, v7}, Lcom/biznessapps/golfcourse/OverviewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;I)V

    iput-object v5, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    .line 165
    iget-object v5, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v6, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    invoke-virtual {v5, v6}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    iget-object v5, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/biznessapps/widgets/RefreshableListView;->setVisibility(I)V

    .line 167
    return-void
.end method

.method private updateUI()V
    .locals 4

    .prologue
    .line 110
    iget-object v2, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    if-nez v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/biznessapps/layout/R$string;->pars:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/golfcourse/OverviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v3}, Lcom/biznessapps/golfcourse/model/Game;->getCourse()Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/golfcourse/model/Course;->getTotalPars()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "totalPars":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->mTVPar:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v3}, Lcom/biznessapps/golfcourse/model/Game;->getCourse()Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/golfcourse/model/Course;->getTotalTees()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "totalTees":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v2}, Lcom/biznessapps/golfcourse/model/Game;->getCourse()Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/golfcourse/model/Course;->getUnitType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 127
    :goto_1
    iget-object v2, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->mTVTotalTees:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v2, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    invoke-virtual {v2}, Lcom/biznessapps/common/adapters/AbstractAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 121
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->total_yards:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/golfcourse/OverviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    goto :goto_1

    .line 124
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->total_meters:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/golfcourse/OverviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lcom/biznessapps/layout/R$layout;->golf_course_overview_layout:I

    return v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/OverviewFragment;->initAdsWithAlpha()V

    .line 90
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 96
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/OverviewFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 98
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/OverviewFragment;->initListViewListener()V

    .line 100
    sget v0, Lcom/biznessapps/layout/R$id;->llDescription:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->mVGDescription:Landroid/view/ViewGroup;

    .line 101
    sget v0, Lcom/biznessapps/layout/R$id;->tvPars:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->mTVPar:Landroid/widget/TextView;

    .line 102
    sget v0, Lcom/biznessapps/layout/R$id;->tvTotalTees:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->mTVTotalTees:Landroid/widget/TextView;

    .line 104
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/OverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZSectionStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZSectionStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->settings:Lcom/biznessapps/api/UiSettings;

    iget-object v2, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->mVGDescription:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZSectionStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/view/ViewGroup;)V

    .line 106
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/OverviewFragment;->updateUI()V

    .line 107
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 141
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 143
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/OverviewFragment;->loadData()V

    .line 144
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->onDestroyView()V

    .line 57
    return-void
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 172
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 174
    iget-object v3, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    invoke-virtual {v3, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/common/entities/CommonListEntity;

    .line 175
    .local v2, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    invoke-virtual {v2}, Lcom/biznessapps/common/entities/CommonListEntity;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/model/Hole;

    .line 177
    .local v0, "hole":Lcom/biznessapps/golfcourse/model/Hole;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/OverviewFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/biznessapps/common/activities/SingleFragmentActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/OverviewFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 179
    const-string v3, "TAB_SPECIAL_ID"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v3, "BG_URL_EXTRA"

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/OverviewFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/biznessapps/golfcourse/OverviewFragment;->defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v3, "TAB_FRAGMENT"

    const-string v4, "GOLF_DETAIL_HOLE_FRAGMENT"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v3, "game_id"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iget-wide v4, v4, Lcom/biznessapps/golfcourse/model/Game;->id:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 183
    const-string v3, "hole_number"

    iget v4, v0, Lcom/biznessapps/golfcourse/model/Hole;->holeNumber:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    sget v3, Lcom/biznessapps/layout/R$layout;->golf_course_hole_details_layout:I

    invoke-virtual {p0, v3, v1}, Lcom/biznessapps/golfcourse/OverviewFragment;->startFragment(ILandroid/content/Intent;)V

    .line 186
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->onResume()V

    .line 48
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->onStop()V

    .line 53
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 8
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 64
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/OverviewFragment;->getFragmentArgments()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 66
    if-eqz v0, :cond_0

    .line 67
    const-string v3, "game_id"

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 68
    .local v1, "gameId":J
    cmp-long v3, v1, v6

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 70
    invoke-static {v1, v2}, Lcom/biznessapps/golfcourse/model/Game;->getGame(J)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    .line 71
    iget-object v3, p0, Lcom/biznessapps/golfcourse/OverviewFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    if-eqz v3, :cond_3

    :goto_2
    invoke-static {v4}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 74
    .end local v1    # "gameId":J
    :cond_0
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/OverviewFragment;->updateUI()V

    .line 75
    return-void

    :cond_1
    move v3, v5

    .line 65
    goto :goto_0

    .restart local v1    # "gameId":J
    :cond_2
    move v3, v5

    .line 68
    goto :goto_1

    :cond_3
    move v4, v5

    .line 71
    goto :goto_2
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/biznessapps/golfcourse/OverviewFragment;->plugListView(Landroid/app/Activity;)V

    .line 151
    return-void
.end method

.method protected useSearchBar()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method
