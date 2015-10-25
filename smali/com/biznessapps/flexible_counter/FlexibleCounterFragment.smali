.class public Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "FlexibleCounterFragment.java"


# static fields
.field private static final LINE_END:Ljava/lang/String; = "\n"

.field private static final STATS_SPACE:Ljava/lang/String; = "        "


# instance fields
.field private clearButton:Landroid/widget/ImageButton;

.field private data:Lcom/biznessapps/flexible_counter/StatFieldsEntity;

.field private emailButton:Landroid/widget/Button;

.field private fieldsContainer:Landroid/view/ViewGroup;

.field private fieldsCounters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private layout:Landroid/view/ViewGroup;

.field private tabId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;)Lcom/biznessapps/flexible_counter/StatFieldsEntity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->data:Lcom/biznessapps/flexible_counter/StatFieldsEntity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->fieldsCounters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->initFieldsCounters(Landroid/app/Activity;)V

    return-void
.end method

.method private convertStringToArrayList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "stringValues"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    const-string v4, "\\["

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\]"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 235
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 236
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v3, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 238
    .local v1, "item":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 239
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private initFieldsCounters(Landroid/app/Activity;)V
    .locals 12
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 181
    iget-object v10, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->data:Lcom/biznessapps/flexible_counter/StatFieldsEntity;

    invoke-virtual {v10}, Lcom/biznessapps/flexible_counter/StatFieldsEntity;->getFields()Ljava/util/List;

    move-result-object v7

    .line 182
    .local v7, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 231
    :cond_0
    return-void

    .line 185
    :cond_1
    iget-object v10, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->fieldsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 186
    const/4 v8, 0x0

    .line 187
    .local v8, "i":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 188
    .local v5, "field":Ljava/lang/String;
    move v4, v8

    .line 189
    .local v4, "currentPos":I
    iget-object v10, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->fieldsCounters:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v4, :cond_2

    .line 190
    iget-object v10, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->fieldsCounters:Ljava/util/List;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/biznessapps/layout/R$layout;->flexible_counter_item:I

    invoke-static {v10, v11}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 195
    .local v6, "fieldView":Landroid/view/ViewGroup;
    sget v10, Lcom/biznessapps/layout/R$id;->counter_text_name:I

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 196
    .local v2, "counterTextName":Landroid/widget/TextView;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    sget v10, Lcom/biznessapps/layout/R$id;->counter_text:I

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 198
    .local v3, "counterView":Landroid/widget/TextView;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->fieldsCounters:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    sget v10, Lcom/biznessapps/layout/R$id;->counter_decrease_button:I

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 201
    .local v0, "counterDecButton":Landroid/widget/Button;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    sget v10, Lcom/biznessapps/layout/R$id;->counter_increase_button:I

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 203
    .local v1, "counterIncButton":Landroid/widget/Button;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    new-instance v10, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$3;

    invoke-direct {v10, p0, v4, v3}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$3;-><init>(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;ILandroid/widget/TextView;)V

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    new-instance v10, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$4;

    invoke-direct {v10, p0, v4, v3}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$4;-><init>(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;ILandroid/widget/TextView;)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v10, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 223
    iget-object v10, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 224
    iget-object v10, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 225
    iget-object v10, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 226
    iget-object v10, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    iget-object v10, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget-object v10, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->fieldsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 229
    add-int/lit8 v8, v8, 0x1

    .line 230
    goto/16 :goto_0
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->emailButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$1;-><init>(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->clearButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;-><init>(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->stat_fields_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->fieldsContainer:Landroid/view/ViewGroup;

    .line 74
    iget-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->email_counter:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->emailButton:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->clear_icon:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->clearButton:Landroid/widget/ImageButton;

    .line 76
    iget-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->emailButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 78
    iget-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->emailButton:Landroid/widget/Button;

    sget v1, Lcom/biznessapps/layout/R$string;->email_results:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 80
    iget-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->emailButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideMediumButtonColor(ILandroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->clearButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->layout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 5

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FLEXIBLE_COUNTER_PROPERTY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/flexible_counter/StatFieldsEntity;

    iput-object v1, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->data:Lcom/biznessapps/flexible_counter/StatFieldsEntity;

    .line 165
    invoke-virtual {p0}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flexible_counter_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/api/CachingManager;->getFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0, v0}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->convertStringToArrayList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->fieldsCounters:Ljava/util/List;

    .line 171
    :goto_0
    iget-object v1, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->data:Lcom/biznessapps/flexible_counter/StatFieldsEntity;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 169
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->fieldsCounters:Ljava/util/List;

    goto :goto_0

    .line 171
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->data:Lcom/biznessapps/flexible_counter/StatFieldsEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->data:Lcom/biznessapps/flexible_counter/StatFieldsEntity;

    invoke-virtual {v0}, Lcom/biznessapps/flexible_counter/StatFieldsEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 143
    const-string v0, "stat_fields.php?app_code=%s&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->layout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->initAdsWithAlpha()V

    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    sget v0, Lcom/biznessapps/layout/R$layout;->flexible_counter_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->root:Landroid/view/ViewGroup;

    .line 51
    invoke-virtual {p0}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->initSettingsData()V

    .line 52
    iget-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->counter_root_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->layout:Landroid/view/ViewGroup;

    .line 53
    invoke-direct {p0}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->initViews()V

    .line 54
    invoke-direct {p0}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->initListeners()V

    .line 55
    invoke-virtual {p0}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->loadData()V

    .line 56
    invoke-virtual {p0}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 57
    invoke-virtual {p0}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->openCustomDialogs()V

    .line 58
    iget-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 63
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->onPause()V

    .line 64
    invoke-virtual {p0}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->fieldsCounters:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flexible_counter_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/biznessapps/api/CachingManager;->saveInSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->tabId:Ljava/lang/String;

    .line 139
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseStatFields(Ljava/lang/String;)Lcom/biznessapps/flexible_counter/StatFieldsEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->data:Lcom/biznessapps/flexible_counter/StatFieldsEntity;

    .line 149
    invoke-virtual {p0}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FLEXIBLE_COUNTER_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->data:Lcom/biznessapps/flexible_counter/StatFieldsEntity;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 177
    invoke-direct {p0, p1}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->initFieldsCounters(Landroid/app/Activity;)V

    .line 178
    return-void
.end method
