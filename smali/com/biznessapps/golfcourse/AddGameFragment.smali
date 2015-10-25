.class public Lcom/biznessapps/golfcourse/AddGameFragment;
.super Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;
.source "AddGameFragment.java"


# static fields
.field private static final GAME_CREATED_DATE_FORMAT:Ljava/lang/String; = "MMM dd, yyyy"

.field public static final INTENT_PARAM_KEY_COURSE:Ljava/lang/String; = "course"

.field public static final INTENT_PARAM_KEY_GOLF_GAME_ID:Ljava/lang/String; = "golf_game_id"

.field public static final INTENT_RESULT_CODE_ADD_NOTE:I = 0x66

.field public static final INTENT_RESULT_CODE_SELECT_COURSE:I = 0x64

.field public static final INTENT_RESULT_CODE_SELECT_PLAYER:I = 0x65


# instance fields
.field private mDatePicker:Lcom/biznessapps/common/components/WheelDelegate;

.field private mDatePickerChangedListener:Lcom/biznessapps/common/components/OnTargetChangedListener;

.field private mDatePickerView:Landroid/view/ViewGroup;

.field private mDoneButtonClickListener:Landroid/view/View$OnClickListener;

.field private mGame:Lcom/biznessapps/golfcourse/model/Game;

.field private mIVDone:Landroid/widget/ImageView;

.field private mItemClickListener:Landroid/view/View$OnClickListener;

.field private mScrollView:Landroid/view/ViewGroup;

.field private mTVNote:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;-><init>()V

    .line 245
    new-instance v0, Lcom/biznessapps/golfcourse/AddGameFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/AddGameFragment$1;-><init>(Lcom/biznessapps/golfcourse/AddGameFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mItemClickListener:Landroid/view/View$OnClickListener;

    .line 281
    new-instance v0, Lcom/biznessapps/golfcourse/AddGameFragment$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/AddGameFragment$2;-><init>(Lcom/biznessapps/golfcourse/AddGameFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mDatePickerChangedListener:Lcom/biznessapps/common/components/OnTargetChangedListener;

    .line 292
    new-instance v0, Lcom/biznessapps/golfcourse/AddGameFragment$3;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/AddGameFragment$3;-><init>(Lcom/biznessapps/golfcourse/AddGameFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/golfcourse/AddGameFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/AddGameFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/golfcourse/AddGameFragment;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/AddGameFragment;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/biznessapps/golfcourse/AddGameFragment;->defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/golfcourse/AddGameFragment;)Lcom/biznessapps/golfcourse/model/Game;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/AddGameFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/golfcourse/AddGameFragment;)Lcom/biznessapps/common/components/WheelDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/AddGameFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mDatePicker:Lcom/biznessapps/common/components/WheelDelegate;

    return-object v0
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 10
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v9, 0x0

    .line 135
    const/4 v1, 0x0

    .line 137
    .local v1, "index":I
    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 140
    new-instance v3, Lcom/biznessapps/common/entities/CommonListEntity;

    sget v4, Lcom/biznessapps/layout/R$string;->golf_course:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/golfcourse/AddGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>(Ljava/lang/String;)V

    .line 141
    .local v3, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v4}, Lcom/biznessapps/golfcourse/model/Game;->getCourse()Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 142
    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v4}, Lcom/biznessapps/golfcourse/model/Game;->getCourse()Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v4

    iget-object v4, v4, Lcom/biznessapps/golfcourse/model/Course;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/biznessapps/common/entities/CommonListEntity;->setDescription(Ljava/lang/String;)V

    .line 145
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v3, v1, v4}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;ILcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v4, v5}, Lcom/biznessapps/golfcourse/AddGameFragment;->addListViewItem(ILcom/biznessapps/common/entities/CommonListEntity;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    .line 148
    new-instance v3, Lcom/biznessapps/common/entities/CommonListEntity;

    .end local v3    # "item":Lcom/biznessapps/common/entities/CommonListEntity;
    sget v4, Lcom/biznessapps/layout/R$string;->players:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/golfcourse/AddGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>(Ljava/lang/String;)V

    .line 150
    .restart local v3    # "item":Lcom/biznessapps/common/entities/CommonListEntity;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%d %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v7}, Lcom/biznessapps/golfcourse/model/Game;->getPlayerCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    sget v8, Lcom/biznessapps/layout/R$string;->players:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/golfcourse/AddGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/biznessapps/common/entities/CommonListEntity;->setDescription(Ljava/lang/String;)V

    .line 152
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v3, v2, v4}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;ILcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, v4, v5}, Lcom/biznessapps/golfcourse/AddGameFragment;->addListViewItem(ILcom/biznessapps/common/entities/CommonListEntity;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    .line 155
    new-instance v3, Lcom/biznessapps/common/entities/CommonListEntity;

    .end local v3    # "item":Lcom/biznessapps/common/entities/CommonListEntity;
    sget v4, Lcom/biznessapps/layout/R$string;->notes:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/golfcourse/AddGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>(Ljava/lang/String;)V

    .line 156
    .restart local v3    # "item":Lcom/biznessapps/common/entities/CommonListEntity;
    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iget-object v4, v4, Lcom/biznessapps/golfcourse/model/Game;->notes:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/biznessapps/common/entities/CommonListEntity;->setDescription(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v3, v9}, Lcom/biznessapps/common/entities/CommonListEntity;->setArrowVisible(Z)V

    .line 158
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v3, v1, v4}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;ILcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v4, v5}, Lcom/biznessapps/golfcourse/AddGameFragment;->addListViewItem(ILcom/biznessapps/common/entities/CommonListEntity;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    .line 161
    new-instance v3, Lcom/biznessapps/common/entities/CommonListEntity;

    .end local v3    # "item":Lcom/biznessapps/common/entities/CommonListEntity;
    sget v4, Lcom/biznessapps/layout/R$string;->date:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/golfcourse/AddGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v3    # "item":Lcom/biznessapps/common/entities/CommonListEntity;
    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iget-wide v4, v4, Lcom/biznessapps/golfcourse/model/Game;->startDate:J

    const-string v6, "MMM dd, yyyy"

    invoke-static {v4, v5, v6}, Lcom/biznessapps/utils/CommonUtils;->getDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {v3, v0}, Lcom/biznessapps/common/entities/CommonListEntity;->setDescription(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v3, v9}, Lcom/biznessapps/common/entities/CommonListEntity;->setArrowVisible(Z)V

    .line 165
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v3, v2, v4}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;ILcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, v4, v5}, Lcom/biznessapps/golfcourse/AddGameFragment;->addListViewItem(ILcom/biznessapps/common/entities/CommonListEntity;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mTVNote:Landroid/widget/TextView;

    .line 166
    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mDatePicker:Lcom/biznessapps/common/components/WheelDelegate;

    iget-object v5, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mTVNote:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Lcom/biznessapps/common/components/WheelDelegate;->setTargetView(Landroid/widget/TextView;)V

    .line 167
    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mDatePicker:Lcom/biznessapps/common/components/WheelDelegate;

    iget-object v5, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iget-wide v5, v5, Lcom/biznessapps/golfcourse/model/Game;->startDate:J

    invoke-virtual {v4, v5, v6}, Lcom/biznessapps/common/components/WheelDelegate;->setDate(J)V

    .line 168
    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mDatePicker:Lcom/biznessapps/common/components/WheelDelegate;

    iget-object v5, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mDatePickerChangedListener:Lcom/biznessapps/common/components/OnTargetChangedListener;

    invoke-virtual {v4, v5}, Lcom/biznessapps/common/components/WheelDelegate;->setOnTargetChangedListener(Lcom/biznessapps/common/components/OnTargetChangedListener;)V

    .line 169
    return-void
.end method


# virtual methods
.method public addListViewItem(ILcom/biznessapps/common/entities/CommonListEntity;Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 6
    .param p1, "position"    # I
    .param p2, "item"    # Lcom/biznessapps/common/entities/CommonListEntity;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/AddGameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$layout;->common_layout_simple_list_item2:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 177
    .local v0, "itemView":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 178
    iget-object v3, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    sget v3, Lcom/biznessapps/layout/R$id;->tvName:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 181
    .local v2, "tvName":Landroid/widget/TextView;
    sget v3, Lcom/biznessapps/layout/R$id;->tvDescription:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 184
    .local v1, "tvDescription":Landroid/widget/TextView;
    sget v3, Lcom/biznessapps/layout/R$id;->ivRightArrow:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 187
    invoke-virtual {p2}, Lcom/biznessapps/common/entities/CommonListEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {p2}, Lcom/biznessapps/common/entities/CommonListEntity;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    invoke-virtual {p2}, Lcom/biznessapps/common/entities/CommonListEntity;->getHint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_0
    invoke-virtual {p2}, Lcom/biznessapps/common/entities/CommonListEntity;->hasColor()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Lcom/biznessapps/common/entities/CommonListEntity;->getItemColor()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/AddGameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v3

    invoke-virtual {p2}, Lcom/biznessapps/common/entities/CommonListEntity;->getItemTextColor()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(ILjava/lang/Object;)V

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/AddGameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(ILjava/lang/Object;)V

    .line 201
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/AddGameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/common/style/BZImageViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZImageViewStyle;

    move-result-object v4

    iget-object v3, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v3}, Lcom/biznessapps/common/style/BZImageViewStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 203
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 205
    return-object v1

    .line 191
    :cond_1
    invoke-virtual {p2}, Lcom/biznessapps/common/entities/CommonListEntity;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected canUseCachedData()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 95
    sget v0, Lcom/biznessapps/layout/R$layout;->golf_course_add_game_layout:I

    return v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/AddGameFragment;->initAdsWithAlpha()V

    .line 101
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 107
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/AddGameFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 109
    sget v0, Lcom/biznessapps/layout/R$id;->llScrollView:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mScrollView:Landroid/view/ViewGroup;

    .line 111
    sget v0, Lcom/biznessapps/layout/R$id;->ivDone:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mIVDone:Landroid/widget/ImageView;

    .line 112
    iget-object v0, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mIVDone:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    sget v0, Lcom/biznessapps/layout/R$id;->date_picker:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mDatePickerView:Landroid/view/ViewGroup;

    .line 115
    new-instance v0, Lcom/biznessapps/common/components/WheelDelegate;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mDatePickerView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/AddGameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/biznessapps/common/components/WheelDelegate;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mDatePicker:Lcom/biznessapps/common/components/WheelDelegate;

    .line 116
    iget-object v0, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mDatePicker:Lcom/biznessapps/common/components/WheelDelegate;

    const-string v1, "MMM dd, yyyy"

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/components/WheelDelegate;->setCalendarStringFormat(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/AddGameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZImageViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZImageViewStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->titleBarRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZImageViewStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 120
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v10, -0x1

    .line 210
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 212
    if-nez p3, :cond_0

    .line 243
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 216
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 217
    const/16 v9, 0x64

    if-ne p1, v9, :cond_2

    .line 218
    const-string v9, "course_id"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/golfcourse/model/Course;

    .line 219
    .local v2, "course":Lcom/biznessapps/golfcourse/model/Course;
    if-eqz v2, :cond_1

    .line 220
    iget-object v9, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v9, v2}, Lcom/biznessapps/golfcourse/model/Game;->setCourse(Lcom/biznessapps/golfcourse/model/Course;)V

    .line 242
    .end local v2    # "course":Lcom/biznessapps/golfcourse/model/Course;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/AddGameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/biznessapps/golfcourse/AddGameFragment;->plugListView(Landroid/app/Activity;)V

    goto :goto_0

    .line 222
    :cond_2
    const/16 v9, 0x65

    if-ne p1, v9, :cond_3

    .line 223
    if-ne p2, v10, :cond_1

    .line 224
    iget-object v9, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iget-object v9, v9, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 226
    const-string v9, "selected_players_id"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .line 227
    .local v8, "selectedPlayerIds":[J
    if-eqz v8, :cond_1

    .line 228
    move-object v0, v8

    .local v0, "arr$":[J
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v6, :cond_1

    aget-wide v4, v0, v3

    .line 229
    .local v4, "id":J
    iget-object v9, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v9, v4, v5}, Lcom/biznessapps/golfcourse/model/Game;->addPlayer(J)V

    .line 228
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 233
    .end local v0    # "arr$":[J
    .end local v3    # "i$":I
    .end local v4    # "id":J
    .end local v6    # "len$":I
    .end local v8    # "selectedPlayerIds":[J
    :cond_3
    const/16 v9, 0x66

    if-ne p1, v9, :cond_1

    .line 234
    if-ne p2, v10, :cond_1

    .line 235
    const-string v9, "note"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 236
    .local v7, "note":Ljava/lang/String;
    iget-object v9, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iput-object v7, v9, Lcom/biznessapps/golfcourse/model/Game;->notes:Ljava/lang/String;

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/AddGameFragment;->initSettingsData()V

    .line 60
    iget-object v1, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/biznessapps/golfcourse/AddGameFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 61
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/AddGameFragment;->loadData()V

    .line 63
    return-object v0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 8
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const-wide/16 v6, -0x1

    .line 68
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 71
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/AddGameFragment;->getFragmentArgments()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, "bundle":Landroid/os/Bundle;
    const-wide/16 v2, -0x1

    .line 73
    .local v2, "gameId":J
    const/4 v1, 0x0

    .line 74
    .local v1, "course":Lcom/biznessapps/golfcourse/model/Course;
    if-eqz v0, :cond_0

    .line 75
    const-string v4, "golf_game_id"

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 76
    const-string v4, "course"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .end local v1    # "course":Lcom/biznessapps/golfcourse/model/Course;
    check-cast v1, Lcom/biznessapps/golfcourse/model/Course;

    .line 80
    .restart local v1    # "course":Lcom/biznessapps/golfcourse/model/Course;
    :cond_0
    cmp-long v4, v2, v6

    if-nez v4, :cond_2

    .line 82
    new-instance v4, Lcom/biznessapps/golfcourse/model/Game;

    invoke-direct {v4}, Lcom/biznessapps/golfcourse/model/Game;-><init>()V

    iput-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    .line 88
    :goto_0
    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iget-wide v4, v4, Lcom/biznessapps/golfcourse/model/Game;->courseId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    .line 89
    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v4, v1}, Lcom/biznessapps/golfcourse/model/Game;->setCourse(Lcom/biznessapps/golfcourse/model/Course;)V

    .line 91
    :cond_1
    return-void

    .line 85
    :cond_2
    invoke-static {v2, v3}, Lcom/biznessapps/golfcourse/model/Game;->getGame(J)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v4

    iput-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    goto :goto_0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/biznessapps/golfcourse/AddGameFragment;->plugListView(Landroid/app/Activity;)V

    .line 131
    return-void
.end method
