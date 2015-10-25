.class public Lcom/biznessapps/golfcourse/EditPlayerFragment;
.super Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;
.source "EditPlayerFragment.java"


# static fields
.field public static final INTENT_PARAM_KEY_GAME_ID:Ljava/lang/String; = "game_id"

.field public static final INTENT_PARAM_KEY_GOLF_PLAYER_ID:Ljava/lang/String; = "golf_player_id"


# instance fields
.field private mDeleteButtonClickListener:Landroid/view/View$OnClickListener;

.field private mDoneButtonClickListener:Landroid/view/View$OnClickListener;

.field private mETEmail:Landroid/widget/EditText;

.field private mETGender:Landroid/widget/EditText;

.field private mETHandicap:Landroid/widget/EditText;

.field private mETPlayerName:Landroid/widget/EditText;

.field private mETTee:Landroid/widget/EditText;

.field private mGameId:J

.field private mGenderPickerView:Landroid/view/ViewGroup;

.field private mHandicapPickerView:Landroid/view/ViewGroup;

.field private mIVDelete:Landroid/widget/ImageView;

.field private mIVDone:Landroid/widget/ImageView;

.field private mIsEditMode:Z

.field private mItemFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mLatestPicker:Lcom/biznessapps/common/components/WheelDelegate;

.field private mListView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mPickerVisibleListener:Lcom/biznessapps/common/components/OnWheelDelegateVisibleListener;

.field private mPlayer:Lcom/biznessapps/golfcourse/model/Player;

.field private mScrollView:Landroid/view/ViewGroup;

.field private mTeePickerView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mListView:Ljava/util/ArrayList;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mIsEditMode:Z

    .line 60
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mGameId:J

    .line 354
    new-instance v0, Lcom/biznessapps/golfcourse/EditPlayerFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/EditPlayerFragment$1;-><init>(Lcom/biznessapps/golfcourse/EditPlayerFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mItemFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 380
    new-instance v0, Lcom/biznessapps/golfcourse/EditPlayerFragment$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/EditPlayerFragment$2;-><init>(Lcom/biznessapps/golfcourse/EditPlayerFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mPickerVisibleListener:Lcom/biznessapps/common/components/OnWheelDelegateVisibleListener;

    .line 393
    new-instance v0, Lcom/biznessapps/golfcourse/EditPlayerFragment$3;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/EditPlayerFragment$3;-><init>(Lcom/biznessapps/golfcourse/EditPlayerFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    .line 407
    new-instance v0, Lcom/biznessapps/golfcourse/EditPlayerFragment$4;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/EditPlayerFragment$4;-><init>(Lcom/biznessapps/golfcourse/EditPlayerFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mDeleteButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/golfcourse/EditPlayerFragment;)Lcom/biznessapps/common/components/WheelDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/EditPlayerFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mLatestPicker:Lcom/biznessapps/common/components/WheelDelegate;

    return-object v0
.end method

.method static synthetic access$002(Lcom/biznessapps/golfcourse/EditPlayerFragment;Lcom/biznessapps/common/components/WheelDelegate;)Lcom/biznessapps/common/components/WheelDelegate;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/EditPlayerFragment;
    .param p1, "x1"    # Lcom/biznessapps/common/components/WheelDelegate;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mLatestPicker:Lcom/biznessapps/common/components/WheelDelegate;

    return-object p1
.end method

.method static synthetic access$100(Lcom/biznessapps/golfcourse/EditPlayerFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/EditPlayerFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mETPlayerName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/golfcourse/EditPlayerFragment;)Lcom/biznessapps/golfcourse/model/Player;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/EditPlayerFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mPlayer:Lcom/biznessapps/golfcourse/model/Player;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/golfcourse/EditPlayerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/EditPlayerFragment;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mIsEditMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/biznessapps/golfcourse/EditPlayerFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/EditPlayerFragment;

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mGameId:J

    return-wide v0
.end method

.method private buildScrollView()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    .line 148
    iget-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mPlayer:Lcom/biznessapps/golfcourse/model/Player;

    if-nez v7, :cond_0

    .line 214
    :goto_0
    return-void

    .line 152
    :cond_0
    const/4 v2, 0x0

    .line 154
    .local v2, "index":I
    iget-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 156
    new-instance v4, Lcom/biznessapps/golfcourse/EditPlayerListItem;

    sget v7, Lcom/biznessapps/layout/R$string;->player_name:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/biznessapps/golfcourse/EditPlayerListItem;-><init>(Ljava/lang/String;)V

    .line 157
    .local v4, "item":Lcom/biznessapps/golfcourse/EditPlayerListItem;
    iget-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mPlayer:Lcom/biznessapps/golfcourse/model/Player;

    iget-object v7, v7, Lcom/biznessapps/golfcourse/model/Player;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/biznessapps/golfcourse/EditPlayerListItem;->setDescription(Ljava/lang/String;)V

    .line 158
    iput-boolean v9, v4, Lcom/biznessapps/golfcourse/EditPlayerListItem;->isRequired:Z

    .line 159
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    iget-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v4, v2, v7}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;ILcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/golfcourse/EditPlayerListItem;

    iget-object v8, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, v7, v8}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->addListViewItem(ILcom/biznessapps/golfcourse/EditPlayerListItem;Landroid/view/ViewGroup;)Landroid/widget/EditText;

    move-result-object v7

    iput-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mETPlayerName:Landroid/widget/EditText;

    .line 160
    iget-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mETPlayerName:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 163
    new-instance v4, Lcom/biznessapps/golfcourse/EditPlayerListItem;

    .end local v4    # "item":Lcom/biznessapps/golfcourse/EditPlayerListItem;
    sget v7, Lcom/biznessapps/layout/R$string;->gender:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/biznessapps/golfcourse/EditPlayerListItem;-><init>(Ljava/lang/String;)V

    .line 164
    .restart local v4    # "item":Lcom/biznessapps/golfcourse/EditPlayerListItem;
    iget-boolean v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mIsEditMode:Z

    if-eqz v7, :cond_1

    .line 165
    iget-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mPlayer:Lcom/biznessapps/golfcourse/model/Player;

    iget-boolean v7, v7, Lcom/biznessapps/golfcourse/model/Player;->isMale:Z

    if-eqz v7, :cond_3

    sget v7, Lcom/biznessapps/layout/R$string;->male:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v4, v7}, Lcom/biznessapps/golfcourse/EditPlayerListItem;->setDescription(Ljava/lang/String;)V

    .line 167
    :cond_1
    iput-boolean v9, v4, Lcom/biznessapps/golfcourse/EditPlayerListItem;->isRequired:Z

    .line 168
    iput-boolean v9, v4, Lcom/biznessapps/golfcourse/EditPlayerListItem;->isPickable:Z

    .line 169
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v5, "stringArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v7, Lcom/biznessapps/layout/R$string;->male:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    sget v7, Lcom/biznessapps/layout/R$string;->female:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v0, Lcom/biznessapps/common/components/WheelDelegate;

    iget-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mGenderPickerView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v0, v7, v8, v5, v11}, Lcom/biznessapps/common/components/WheelDelegate;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/List;Z)V

    .line 173
    .local v0, "genderPicker":Lcom/biznessapps/common/components/WheelDelegate;
    iput-object v0, v4, Lcom/biznessapps/golfcourse/EditPlayerListItem;->picker:Lcom/biznessapps/common/components/WheelDelegate;

    .line 174
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    iget-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v4, v3, v7}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;ILcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/golfcourse/EditPlayerListItem;

    iget-object v8, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3, v7, v8}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->addListViewItem(ILcom/biznessapps/golfcourse/EditPlayerListItem;Landroid/view/ViewGroup;)Landroid/widget/EditText;

    move-result-object v7

    iput-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mETGender:Landroid/widget/EditText;

    .line 177
    new-instance v4, Lcom/biznessapps/golfcourse/EditPlayerListItem;

    .end local v4    # "item":Lcom/biznessapps/golfcourse/EditPlayerListItem;
    sget v7, Lcom/biznessapps/layout/R$string;->tee:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/biznessapps/golfcourse/EditPlayerListItem;-><init>(Ljava/lang/String;)V

    .line 178
    .restart local v4    # "item":Lcom/biznessapps/golfcourse/EditPlayerListItem;
    iget-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mPlayer:Lcom/biznessapps/golfcourse/model/Player;

    iget-object v7, v7, Lcom/biznessapps/golfcourse/model/Player;->teeColor:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/biznessapps/golfcourse/EditPlayerListItem;->setDescription(Ljava/lang/String;)V

    .line 179
    iput-boolean v9, v4, Lcom/biznessapps/golfcourse/EditPlayerListItem;->isRequired:Z

    .line 180
    iput-boolean v9, v4, Lcom/biznessapps/golfcourse/EditPlayerListItem;->isPickable:Z

    .line 181
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "stringArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .restart local v5    # "stringArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v7, Lcom/biznessapps/layout/R$string;->black:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    sget v7, Lcom/biznessapps/layout/R$string;->blue:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    sget v7, Lcom/biznessapps/layout/R$string;->white:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    sget v7, Lcom/biznessapps/layout/R$string;->red:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    sget v7, Lcom/biznessapps/layout/R$string;->green:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v6, Lcom/biznessapps/common/components/WheelDelegate;

    iget-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mTeePickerView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v6, v7, v8, v5, v11}, Lcom/biznessapps/common/components/WheelDelegate;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/List;Z)V

    .line 188
    .local v6, "teePicker":Lcom/biznessapps/common/components/WheelDelegate;
    iput-object v6, v4, Lcom/biznessapps/golfcourse/EditPlayerListItem;->picker:Lcom/biznessapps/common/components/WheelDelegate;

    .line 189
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    iget-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v4, v2, v7}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;ILcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/golfcourse/EditPlayerListItem;

    iget-object v8, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, v7, v8}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->addListViewItem(ILcom/biznessapps/golfcourse/EditPlayerListItem;Landroid/view/ViewGroup;)Landroid/widget/EditText;

    move-result-object v7

    iput-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mETTee:Landroid/widget/EditText;

    .line 192
    new-instance v4, Lcom/biznessapps/golfcourse/EditPlayerListItem;

    .end local v4    # "item":Lcom/biznessapps/golfcourse/EditPlayerListItem;
    sget v7, Lcom/biznessapps/layout/R$string;->handicap:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/biznessapps/golfcourse/EditPlayerListItem;-><init>(Ljava/lang/String;)V

    .line 193
    .restart local v4    # "item":Lcom/biznessapps/golfcourse/EditPlayerListItem;
    iget-boolean v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mIsEditMode:Z

    if-eqz v7, :cond_2

    .line 194
    iget-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mPlayer:Lcom/biznessapps/golfcourse/model/Player;

    iget v7, v7, Lcom/biznessapps/golfcourse/model/Player;->handicap:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/biznessapps/golfcourse/EditPlayerListItem;->setDescription(Ljava/lang/String;)V

    .line 196
    :cond_2
    iput-boolean v9, v4, Lcom/biznessapps/golfcourse/EditPlayerListItem;->isRequired:Z

    .line 197
    iput-boolean v9, v4, Lcom/biznessapps/golfcourse/EditPlayerListItem;->isPickable:Z

    .line 198
    new-instance v1, Lcom/biznessapps/common/components/WheelDelegate;

    iget-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mHandicapPickerView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$array;->handicap:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v1, v7, v8, v9, v11}, Lcom/biznessapps/common/components/WheelDelegate;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/List;Z)V

    .line 200
    .local v1, "handicapPicker":Lcom/biznessapps/common/components/WheelDelegate;
    iput-object v1, v4, Lcom/biznessapps/golfcourse/EditPlayerListItem;->picker:Lcom/biznessapps/common/components/WheelDelegate;

    .line 201
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    iget-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v4, v3, v7}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;ILcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/golfcourse/EditPlayerListItem;

    iget-object v8, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3, v7, v8}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->addListViewItem(ILcom/biznessapps/golfcourse/EditPlayerListItem;Landroid/view/ViewGroup;)Landroid/widget/EditText;

    move-result-object v7

    iput-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mETHandicap:Landroid/widget/EditText;

    .line 204
    new-instance v4, Lcom/biznessapps/golfcourse/EditPlayerListItem;

    .end local v4    # "item":Lcom/biznessapps/golfcourse/EditPlayerListItem;
    sget v7, Lcom/biznessapps/layout/R$string;->email:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/biznessapps/golfcourse/EditPlayerListItem;-><init>(Ljava/lang/String;)V

    .line 205
    .restart local v4    # "item":Lcom/biznessapps/golfcourse/EditPlayerListItem;
    iget-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mPlayer:Lcom/biznessapps/golfcourse/model/Player;

    iget-object v7, v7, Lcom/biznessapps/golfcourse/model/Player;->email:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/biznessapps/golfcourse/EditPlayerListItem;->setDescription(Ljava/lang/String;)V

    .line 206
    iput-boolean v11, v4, Lcom/biznessapps/golfcourse/EditPlayerListItem;->isRequired:Z

    .line 207
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    iget-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v4, v2, v7}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;ILcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/golfcourse/EditPlayerListItem;

    iget-object v8, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, v7, v8}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->addListViewItem(ILcom/biznessapps/golfcourse/EditPlayerListItem;Landroid/view/ViewGroup;)Landroid/widget/EditText;

    move-result-object v7

    iput-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mETEmail:Landroid/widget/EditText;

    .line 208
    iget-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mETEmail:Landroid/widget/EditText;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 211
    iget-object v7, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mETPlayerName:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 213
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->updateUI()V

    goto/16 :goto_0

    .line 165
    .end local v0    # "genderPicker":Lcom/biznessapps/common/components/WheelDelegate;
    .end local v1    # "handicapPicker":Lcom/biznessapps/common/components/WheelDelegate;
    .end local v5    # "stringArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "teePicker":Lcom/biznessapps/common/components/WheelDelegate;
    :cond_3
    sget v7, Lcom/biznessapps/layout/R$string;->female:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1
.end method

.method private updateUI()V
    .locals 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mIsEditMode:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mIVDelete:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mIVDelete:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addListViewItem(ILcom/biznessapps/golfcourse/EditPlayerListItem;Landroid/view/ViewGroup;)Landroid/widget/EditText;
    .locals 8
    .param p1, "position"    # I
    .param p2, "item"    # Lcom/biznessapps/golfcourse/EditPlayerListItem;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v6, Lcom/biznessapps/layout/R$layout;->golf_course_edit_player_item_layout:I

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 222
    .local v1, "itemView":Landroid/view/View;
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 224
    sget v3, Lcom/biznessapps/layout/R$id;->tvName:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 225
    .local v2, "tvName":Landroid/widget/TextView;
    sget v3, Lcom/biznessapps/layout/R$id;->etDescription:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 226
    .local v0, "etDescription":Landroid/widget/EditText;
    iget-boolean v3, p2, Lcom/biznessapps/golfcourse/EditPlayerListItem;->isPickable:Z

    if-eqz v3, :cond_0

    .line 227
    iget-object v3, p2, Lcom/biznessapps/golfcourse/EditPlayerListItem;->picker:Lcom/biznessapps/common/components/WheelDelegate;

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 228
    iget-object v3, p2, Lcom/biznessapps/golfcourse/EditPlayerListItem;->picker:Lcom/biznessapps/common/components/WheelDelegate;

    invoke-virtual {v3, v0}, Lcom/biznessapps/common/components/WheelDelegate;->setTargetView(Landroid/widget/TextView;)V

    .line 229
    iget-object v3, p2, Lcom/biznessapps/golfcourse/EditPlayerListItem;->picker:Lcom/biznessapps/common/components/WheelDelegate;

    iget-object v6, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mPickerVisibleListener:Lcom/biznessapps/common/components/OnWheelDelegateVisibleListener;

    invoke-virtual {v3, v6}, Lcom/biznessapps/common/components/WheelDelegate;->setOnVisibleListener(Lcom/biznessapps/common/components/OnWheelDelegateVisibleListener;)V

    .line 230
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 231
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 233
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 234
    iget-object v3, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mItemFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 236
    iget-boolean v3, p2, Lcom/biznessapps/golfcourse/EditPlayerListItem;->isRequired:Z

    if-eqz v3, :cond_3

    .line 237
    sget v3, Lcom/biznessapps/layout/R$string;->required:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 243
    :goto_1
    invoke-virtual {p2}, Lcom/biznessapps/golfcourse/EditPlayerListItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-boolean v3, p2, Lcom/biznessapps/golfcourse/EditPlayerListItem;->isRequired:Z

    if-eqz v3, :cond_4

    sget v3, Lcom/biznessapps/layout/R$string;->required:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 245
    invoke-virtual {p2}, Lcom/biznessapps/golfcourse/EditPlayerListItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 246
    invoke-virtual {p2}, Lcom/biznessapps/golfcourse/EditPlayerListItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 253
    :goto_3
    invoke-virtual {p2}, Lcom/biznessapps/golfcourse/EditPlayerListItem;->hasColor()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Lcom/biznessapps/golfcourse/EditPlayerListItem;->getItemColor()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v3

    invoke-virtual {p2}, Lcom/biznessapps/golfcourse/EditPlayerListItem;->getItemTextColor()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(ILjava/lang/Object;)V

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(ILjava/lang/Object;)V

    .line 259
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 260
    iget-object v3, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mListView:Ljava/util/ArrayList;

    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "itemView":Landroid/view/View;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    return-object v0

    .restart local v1    # "itemView":Landroid/view/View;
    :cond_2
    move v3, v5

    .line 227
    goto/16 :goto_0

    .line 239
    :cond_3
    sget v3, Lcom/biznessapps/layout/R$string;->optional:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 244
    :cond_4
    sget v3, Lcom/biznessapps/layout/R$string;->optional:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 248
    :cond_5
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method protected canUseCachedData()Z
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 108
    sget v0, Lcom/biznessapps/layout/R$layout;->golf_course_edit_player_layout:I

    return v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->initAdsWithAlpha()V

    .line 114
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 120
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 123
    sget v0, Lcom/biznessapps/layout/R$id;->llScrollView:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mScrollView:Landroid/view/ViewGroup;

    .line 125
    sget v0, Lcom/biznessapps/layout/R$id;->ivDone:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mIVDone:Landroid/widget/ImageView;

    .line 126
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mIVDone:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    sget v0, Lcom/biznessapps/layout/R$id;->ivDelete:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mIVDelete:Landroid/widget/ImageView;

    .line 129
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mIVDelete:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mDeleteButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    sget v0, Lcom/biznessapps/layout/R$id;->gender_picker:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mGenderPickerView:Landroid/view/ViewGroup;

    .line 133
    sget v0, Lcom/biznessapps/layout/R$id;->tee_picker:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mTeePickerView:Landroid/view/ViewGroup;

    .line 134
    sget v0, Lcom/biznessapps/layout/R$id;->handicap_picker:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mHandicapPickerView:Landroid/view/ViewGroup;

    .line 136
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->updateUI()V

    .line 137
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->initSettingsData()V

    .line 70
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 71
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->loadData()V

    .line 73
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->onResume()V

    .line 79
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 7
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const-wide/16 v5, -0x1

    .line 83
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 86
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getFragmentArgments()Landroid/os/Bundle;

    move-result-object v0

    .line 88
    .local v0, "bundle":Landroid/os/Bundle;
    const-wide/16 v1, -0x1

    .line 89
    .local v1, "playerId":J
    if-eqz v0, :cond_0

    .line 90
    const-string v3, "golf_player_id"

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 91
    const-string v3, "game_id"

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mGameId:J

    .line 95
    :cond_0
    cmp-long v3, v1, v5

    if-nez v3, :cond_1

    .line 97
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mIsEditMode:Z

    .line 98
    new-instance v3, Lcom/biznessapps/golfcourse/model/Player;

    invoke-direct {v3}, Lcom/biznessapps/golfcourse/model/Player;-><init>()V

    iput-object v3, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mPlayer:Lcom/biznessapps/golfcourse/model/Player;

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mIsEditMode:Z

    .line 102
    invoke-static {v1, v2}, Lcom/biznessapps/golfcourse/model/Player;->getPlayer(J)Lcom/biznessapps/golfcourse/model/Player;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mPlayer:Lcom/biznessapps/golfcourse/model/Player;

    goto :goto_0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 272
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 273
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->buildScrollView()V

    .line 274
    return-void
.end method

.method public updateDataFromUI()Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 278
    iget-object v10, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mETPlayerName:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 279
    .local v6, "name":Ljava/lang/String;
    iget-object v10, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mETGender:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "gender":Ljava/lang/String;
    iget-object v10, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mETHandicap:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "handicap":Ljava/lang/String;
    iget-object v10, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mETTee:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 282
    .local v7, "tee":Ljava/lang/String;
    iget-object v10, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mETEmail:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "email":Ljava/lang/String;
    const/4 v4, 0x1

    .line 285
    .local v4, "isValidate":Z
    const-string v5, ""

    .line 287
    .local v5, "message":Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 288
    const/4 v4, 0x0

    .line 289
    sget v10, Lcom/biznessapps/layout/R$string;->please_enter_valid_name:I

    invoke-virtual {p0, v10}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 294
    :goto_0
    if-eqz v4, :cond_0

    .line 295
    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 296
    const/4 v4, 0x0

    .line 297
    sget v10, Lcom/biznessapps/layout/R$string;->please_select_gender:I

    invoke-virtual {p0, v10}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 308
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 309
    invoke-static {v7}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 310
    const/4 v4, 0x0

    .line 311
    sget v10, Lcom/biznessapps/layout/R$string;->please_select_tee:I

    invoke-virtual {p0, v10}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 317
    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    .line 318
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 319
    const/4 v4, 0x0

    .line 320
    sget v10, Lcom/biznessapps/layout/R$string;->please_select_handicap:I

    invoke-virtual {p0, v10}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 329
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 330
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 331
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isCorrectEmail(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 332
    iget-object v10, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mPlayer:Lcom/biznessapps/golfcourse/model/Player;

    iput-object v1, v10, Lcom/biznessapps/golfcourse/model/Player;->email:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_3
    :goto_4
    if-nez v4, :cond_b

    .line 345
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 349
    :goto_5
    return v8

    .line 291
    :cond_4
    :try_start_1
    iget-object v10, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mPlayer:Lcom/biznessapps/golfcourse/model/Player;

    iput-object v6, v10, Lcom/biznessapps/golfcourse/model/Player;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 341
    sget v10, Lcom/biznessapps/layout/R$string;->unknown_error:I

    invoke-virtual {p0, v10}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 299
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_2
    sget v10, Lcom/biznessapps/layout/R$string;->male:I

    invoke-virtual {p0, v10}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 300
    iget-object v10, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mPlayer:Lcom/biznessapps/golfcourse/model/Player;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/biznessapps/golfcourse/model/Player;->isMale:Z

    goto :goto_1

    .line 302
    :cond_6
    sget v10, Lcom/biznessapps/layout/R$string;->female:I

    invoke-virtual {p0, v10}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    iget-object v10, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mPlayer:Lcom/biznessapps/golfcourse/model/Player;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/biznessapps/golfcourse/model/Player;->isMale:Z

    goto :goto_1

    .line 313
    :cond_7
    iget-object v10, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mPlayer:Lcom/biznessapps/golfcourse/model/Player;

    iput-object v7, v10, Lcom/biznessapps/golfcourse/model/Player;->teeColor:Ljava/lang/String;

    goto :goto_2

    .line 322
    :cond_8
    const-string v10, "+"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 323
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 325
    :cond_9
    iget-object v10, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment;->mPlayer:Lcom/biznessapps/golfcourse/model/Player;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v10, Lcom/biznessapps/golfcourse/model/Player;->handicap:I

    goto :goto_3

    .line 334
    :cond_a
    const/4 v4, 0x0

    .line 335
    sget v10, Lcom/biznessapps/layout/R$string;->email_is_not_correct:I

    invoke-virtual {p0, v10}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    goto :goto_4

    :cond_b
    move v8, v9

    .line 349
    goto :goto_5
.end method
