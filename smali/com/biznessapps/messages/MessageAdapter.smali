.class public Lcom/biznessapps/messages/MessageAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "MessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/messages/MessageEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private itemListener:Lcom/biznessapps/messages/MessageListFragment$MessageItemListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutItemResourceId"    # I
    .param p4, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/messages/MessageEntity;",
            ">;I",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/messages/MessageEntity;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/messages/MessageAdapter;)Lcom/biznessapps/messages/MessageListFragment$MessageItemListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/messages/MessageAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/biznessapps/messages/MessageAdapter;->itemListener:Lcom/biznessapps/messages/MessageListFragment$MessageItemListener;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    if-nez p2, :cond_3

    .line 37
    iget-object v9, p0, Lcom/biznessapps/messages/MessageAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v10, p0, Lcom/biznessapps/messages/MessageAdapter;->layoutItemResourceId:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 38
    new-instance v1, Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;

    invoke-direct {v1}, Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;-><init>()V

    .line 40
    .local v1, "holder":Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;
    sget v9, Lcom/biznessapps/layout/R$id;->message_text:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;->setTextViewText(Landroid/widget/TextView;)V

    .line 41
    sget v9, Lcom/biznessapps/layout/R$id;->message_date_text:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;->setTextViewDate(Landroid/widget/TextView;)V

    .line 42
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 47
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/messages/MessageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/messages/MessageEntity;

    .line 48
    .local v3, "item":Lcom/biznessapps/messages/MessageEntity;
    sget v9, Lcom/biznessapps/layout/R$id;->message_icon_type:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 49
    .local v4, "messageIconType":Landroid/widget/ImageView;
    sget v9, Lcom/biznessapps/layout/R$id;->message_share_icon:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 50
    .local v6, "shareIcon":Landroid/widget/ImageView;
    sget v9, Lcom/biznessapps/layout/R$id;->message_trash_icon:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 51
    .local v8, "trashIcon":Landroid/widget/ImageView;
    if-eqz v3, :cond_2

    .line 52
    invoke-virtual {v3}, Lcom/biznessapps/messages/MessageEntity;->getType()I

    move-result v9

    if-nez v9, :cond_4

    const/4 v2, 0x1

    .line 54
    .local v2, "isOrdinaryMessage":Z
    :goto_1
    sget v5, Lcom/biznessapps/layout/R$drawable;->message_text_icon:I

    .line 55
    .local v5, "rightIconId":I
    invoke-virtual {v3}, Lcom/biznessapps/messages/MessageEntity;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 56
    sget v5, Lcom/biznessapps/layout/R$drawable;->message_web_big_icon:I

    .line 62
    :cond_0
    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    if-eqz v2, :cond_7

    const/16 v9, 0x8

    :goto_3
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    new-instance v9, Lcom/biznessapps/messages/MessageAdapter$1;

    invoke-direct {v9, p0, v3, p1}, Lcom/biznessapps/messages/MessageAdapter$1;-><init>(Lcom/biznessapps/messages/MessageAdapter;Lcom/biznessapps/messages/MessageEntity;I)V

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    new-instance v9, Lcom/biznessapps/messages/MessageAdapter$2;

    invoke-direct {v9, p0, v3, p1}, Lcom/biznessapps/messages/MessageAdapter$2;-><init>(Lcom/biznessapps/messages/MessageAdapter;Lcom/biznessapps/messages/MessageEntity;I)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {v1}, Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;->getTextViewText()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v3}, Lcom/biznessapps/messages/MessageEntity;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v3}, Lcom/biznessapps/messages/MessageEntity;->getDate()Ljava/util/Date;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 83
    invoke-virtual {v1}, Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;->getTextViewDate()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v3}, Lcom/biznessapps/messages/MessageEntity;->getDate()Ljava/util/Date;

    move-result-object v10

    invoke-static {v10}, Lcom/biznessapps/utils/DateUtils;->getStandartDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_1
    iget-object v9, p0, Lcom/biznessapps/messages/MessageAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v9

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v9, p0, Lcom/biznessapps/messages/MessageAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v9

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v9, p0, Lcom/biznessapps/messages/MessageAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v9

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object v9, p0, Lcom/biznessapps/messages/MessageAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v9

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {v1}, Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;->getTextViewDate()Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lcom/biznessapps/messages/MessageAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    invoke-virtual {v3}, Lcom/biznessapps/messages/MessageEntity;->getItemTextColor()I

    move-result v9

    const/4 v10, 0x1

    new-array v10, v10, [Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v1}, Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;->getTextViewText()Landroid/widget/TextView;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/biznessapps/messages/MessageAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 95
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/biznessapps/messages/MessageAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    sget v9, Lcom/biznessapps/layout/R$id;->item_container_bottom:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "bottomContainer":Landroid/view/View;
    sget v9, Lcom/biznessapps/layout/R$id;->item_container_top:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 98
    .local v7, "topContainer":Landroid/view/View;
    iget-object v9, p0, Lcom/biznessapps/messages/MessageAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getSectionBarColor()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 99
    invoke-virtual {v3}, Lcom/biznessapps/messages/MessageEntity;->getItemColor()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/16 v10, 0xb4

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 101
    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/16 v10, 0xb4

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 103
    .end local v0    # "bottomContainer":Landroid/view/View;
    .end local v2    # "isOrdinaryMessage":Z
    .end local v5    # "rightIconId":I
    .end local v7    # "topContainer":Landroid/view/View;
    :cond_2
    return-object p2

    .line 44
    .end local v1    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;
    .end local v3    # "item":Lcom/biznessapps/messages/MessageEntity;
    .end local v4    # "messageIconType":Landroid/widget/ImageView;
    .end local v6    # "shareIcon":Landroid/widget/ImageView;
    .end local v8    # "trashIcon":Landroid/widget/ImageView;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;

    .restart local v1    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;
    goto/16 :goto_0

    .line 52
    .restart local v3    # "item":Lcom/biznessapps/messages/MessageEntity;
    .restart local v4    # "messageIconType":Landroid/widget/ImageView;
    .restart local v6    # "shareIcon":Landroid/widget/ImageView;
    .restart local v8    # "trashIcon":Landroid/widget/ImageView;
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 57
    .restart local v2    # "isOrdinaryMessage":Z
    .restart local v5    # "rightIconId":I
    :cond_5
    invoke-virtual {v3}, Lcom/biznessapps/messages/MessageEntity;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    .line 58
    sget v5, Lcom/biznessapps/layout/R$drawable;->message_tab_content_big_icon:I

    goto/16 :goto_2

    .line 59
    :cond_6
    invoke-virtual {v3}, Lcom/biznessapps/messages/MessageEntity;->getType()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 60
    sget v5, Lcom/biznessapps/layout/R$drawable;->message_template_big_icon:I

    goto/16 :goto_2

    .line 63
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_3
.end method

.method public setItemListener(Lcom/biznessapps/messages/MessageListFragment$MessageItemListener;)V
    .locals 0
    .param p1, "itemListener"    # Lcom/biznessapps/messages/MessageListFragment$MessageItemListener;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/biznessapps/messages/MessageAdapter;->itemListener:Lcom/biznessapps/messages/MessageListFragment$MessageItemListener;

    .line 27
    return-void
.end method
