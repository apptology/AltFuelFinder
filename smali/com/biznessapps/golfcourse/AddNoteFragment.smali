.class public Lcom/biznessapps/golfcourse/AddNoteFragment;
.super Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;
.source "AddNoteFragment.java"


# static fields
.field public static final INTENT_PARAM_KEY_NOTE:Ljava/lang/String; = "note"


# instance fields
.field private mDoneButtonClickListener:Landroid/view/View$OnClickListener;

.field private mETNote:Landroid/widget/EditText;

.field private mIVDone:Landroid/widget/ImageView;

.field private mNote:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/golfcourse/AddNoteFragment;->mNote:Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/biznessapps/golfcourse/AddNoteFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/AddNoteFragment$1;-><init>(Lcom/biznessapps/golfcourse/AddNoteFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/AddNoteFragment;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/golfcourse/AddNoteFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/AddNoteFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/biznessapps/golfcourse/AddNoteFragment;->mNote:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/biznessapps/golfcourse/AddNoteFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/AddNoteFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/biznessapps/golfcourse/AddNoteFragment;->mNote:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/biznessapps/golfcourse/AddNoteFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/AddNoteFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/biznessapps/golfcourse/AddNoteFragment;->mETNote:Landroid/widget/EditText;

    return-object v0
.end method

.method private updateUI()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/biznessapps/golfcourse/AddNoteFragment;->mETNote:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/AddNoteFragment;->mNote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/biznessapps/layout/R$layout;->golf_course_add_note_layout:I

    return v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/AddNoteFragment;->initAdsWithAlpha()V

    .line 66
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 72
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/AddNoteFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 75
    sget v1, Lcom/biznessapps/layout/R$id;->ivDone:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/golfcourse/AddNoteFragment;->mIVDone:Landroid/widget/ImageView;

    .line 76
    iget-object v1, p0, Lcom/biznessapps/golfcourse/AddNoteFragment;->mIVDone:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/biznessapps/golfcourse/AddNoteFragment;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    sget v1, Lcom/biznessapps/layout/R$id;->etNote:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/biznessapps/golfcourse/AddNoteFragment;->mETNote:Landroid/widget/EditText;

    .line 80
    sget v1, Lcom/biznessapps/layout/R$id;->scrollView:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 81
    .local v0, "scrollView":Landroid/widget/ScrollView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setSmoothScrollingEnabled(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/AddNoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/AddNoteFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/golfcourse/AddNoteFragment;->mETNote:Landroid/widget/EditText;

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(ILjava/lang/Object;)V

    .line 86
    iget-object v1, p0, Lcom/biznessapps/golfcourse/AddNoteFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 87
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/AddNoteFragment;->initSettingsData()V

    .line 38
    iget-object v1, p0, Lcom/biznessapps/golfcourse/AddNoteFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/biznessapps/golfcourse/AddNoteFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 39
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/AddNoteFragment;->loadData()V

    .line 41
    return-object v0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 48
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/AddNoteFragment;->getFragmentArgments()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/AddNoteFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 53
    :cond_0
    if-eqz v0, :cond_1

    .line 54
    const-string v1, "note"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/golfcourse/AddNoteFragment;->mNote:Ljava/lang/String;

    .line 56
    :cond_1
    return-void
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 97
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/AddNoteFragment;->updateUI()V

    .line 98
    return-void
.end method
