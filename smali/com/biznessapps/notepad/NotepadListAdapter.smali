.class public Lcom/biznessapps/notepad/NotepadListAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "NotepadListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/notepad/NotepadListAdapter$1;,
        Lcom/biznessapps/notepad/NotepadListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/notepad/NotepadEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private todayCalendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/notepad/NotepadEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/notepad/NotepadEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->notepad_list_row:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 29
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/notepad/NotepadListAdapter;->todayCalendar:Ljava/util/Calendar;

    .line 30
    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadListAdapter;->todayCalendar:Ljava/util/Calendar;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 36
    if-nez p2, :cond_3

    .line 37
    iget-object v6, p0, Lcom/biznessapps/notepad/NotepadListAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/biznessapps/notepad/NotepadListAdapter;->layoutItemResourceId:I

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 38
    new-instance v3, Lcom/biznessapps/notepad/NotepadListAdapter$ViewHolder;

    invoke-direct {v3, v8}, Lcom/biznessapps/notepad/NotepadListAdapter$ViewHolder;-><init>(Lcom/biznessapps/notepad/NotepadListAdapter$1;)V

    .line 39
    .local v3, "holder":Lcom/biznessapps/notepad/NotepadListAdapter$ViewHolder;
    sget v6, Lcom/biznessapps/layout/R$id;->note_title:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/biznessapps/notepad/NotepadListAdapter$ViewHolder;->content:Landroid/widget/TextView;

    .line 40
    sget v6, Lcom/biznessapps/layout/R$id;->note_date:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/biznessapps/notepad/NotepadListAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 41
    sget v6, Lcom/biznessapps/layout/R$id;->note_words_count:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/biznessapps/notepad/NotepadListAdapter$ViewHolder;->wordsCount:Landroid/widget/TextView;

    .line 42
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 47
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/notepad/NotepadListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/notepad/NotepadEntity;

    .line 48
    .local v4, "item":Lcom/biznessapps/notepad/NotepadEntity;
    if-eqz v4, :cond_2

    .line 49
    invoke-virtual {v4}, Lcom/biznessapps/notepad/NotepadEntity;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 50
    iget-object v6, v3, Lcom/biznessapps/notepad/NotepadListAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/biznessapps/notepad/NotepadEntity;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0}, Lcom/biznessapps/notepad/NotepadListAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$string;->words_notepad_count:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "wordsCountFormat":Ljava/lang/String;
    iget-object v6, v3, Lcom/biznessapps/notepad/NotepadListAdapter$ViewHolder;->wordsCount:Landroid/widget/TextView;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/biznessapps/notepad/NotepadEntity;->getContent()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\s+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .end local v5    # "wordsCountFormat":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Lcom/biznessapps/notepad/NotepadEntity;->getNoteDate()J

    move-result-wide v1

    .line 57
    .local v1, "dateStr":J
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-lez v6, :cond_1

    .line 58
    new-instance v0, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/biznessapps/notepad/NotepadEntity;->getNoteDate()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 59
    .local v0, "date":Ljava/util/Date;
    iget-object v6, v3, Lcom/biznessapps/notepad/NotepadListAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/biznessapps/utils/DateUtils;->getStandartDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .end local v0    # "date":Ljava/util/Date;
    :cond_1
    invoke-virtual {v4}, Lcom/biznessapps/notepad/NotepadEntity;->hasColor()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 62
    invoke-virtual {v4}, Lcom/biznessapps/notepad/NotepadEntity;->getItemColor()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/biznessapps/notepad/NotepadListAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-virtual {v4}, Lcom/biznessapps/notepad/NotepadEntity;->getItemTextColor()I

    move-result v6

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/widget/TextView;

    iget-object v8, v3, Lcom/biznessapps/notepad/NotepadListAdapter$ViewHolder;->content:Landroid/widget/TextView;

    aput-object v8, v7, v10

    iget-object v8, v3, Lcom/biznessapps/notepad/NotepadListAdapter$ViewHolder;->date:Landroid/widget/TextView;

    aput-object v8, v7, v11

    const/4 v8, 0x2

    iget-object v9, v3, Lcom/biznessapps/notepad/NotepadListAdapter$ViewHolder;->wordsCount:Landroid/widget/TextView;

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/biznessapps/notepad/NotepadListAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 66
    .end local v1    # "dateStr":J
    :cond_2
    return-object p2

    .line 44
    .end local v3    # "holder":Lcom/biznessapps/notepad/NotepadListAdapter$ViewHolder;
    .end local v4    # "item":Lcom/biznessapps/notepad/NotepadEntity;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/notepad/NotepadListAdapter$ViewHolder;

    .restart local v3    # "holder":Lcom/biznessapps/notepad/NotepadListAdapter$ViewHolder;
    goto/16 :goto_0
.end method
