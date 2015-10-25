.class public abstract Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;
.super Ljava/lang/Object;
.source "AbstractWheelTextAdapter.java"

# interfaces
.implements Lcom/biznessapps/widgets/wheel/WheelViewAdapter;


# static fields
.field public static final DEFAULT_TEXT_COLOR:I = -0xefeff0

.field public static final DEFAULT_TEXT_SIZE:I = 0x18

.field public static final LABEL_COLOR:I = -0x8fff90

.field protected static final NO_RESOURCE:I = 0x0

.field public static final TEXT_VIEW_ITEM_RESOURCE:I = -0x1


# instance fields
.field protected context:Landroid/content/Context;

.field private datasetObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field protected emptyItemResourceId:I

.field protected inflater:Landroid/view/LayoutInflater;

.field protected itemResourceId:I

.field protected itemTextResourceId:I

.field private textColor:I

.field private textSize:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;I)V

    .line 60
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemResource"    # I

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;II)V

    .line 69
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemResource"    # I
    .param p3, "itemTextResource"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const v0, -0xefeff0

    iput v0, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->textColor:I

    .line 38
    const/16 v0, 0x18

    iput v0, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->textSize:I

    .line 78
    iput-object p1, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->context:Landroid/content/Context;

    .line 79
    iput p2, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->itemResourceId:I

    .line 80
    iput p3, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->itemTextResourceId:I

    .line 82
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 83
    return-void
.end method

.method private getTextView(Landroid/view/View;I)Landroid/widget/TextView;
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "textResource"    # I

    .prologue
    .line 227
    const/4 v2, 0x0

    .line 229
    .local v2, "text":Landroid/widget/TextView;
    if-nez p2, :cond_1

    :try_start_0
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 230
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 240
    :cond_0
    :goto_0
    return-object v2

    .line 231
    :cond_1
    if-eqz p2, :cond_0

    .line 232
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "text":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "text":Landroid/widget/TextView;
    goto :goto_0

    .line 234
    .end local v2    # "text":Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "AbstractWheelAdapter"

    const-string v4, "You must supply a resource ID for a TextView"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "AbstractWheelAdapter requires the resource ID to be a TextView"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "resource"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 249
    packed-switch p1, :pswitch_data_0

    .line 255
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 251
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 253
    :pswitch_1
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected configureTextView(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x1

    .line 213
    iget v0, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->textColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 215
    iget v0, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->textSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 216
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 217
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 218
    return-void
.end method

.method public getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 198
    if-nez p1, :cond_0

    .line 199
    iget v0, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->emptyItemResourceId:I

    invoke-direct {p0, v0, p2}, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 201
    :cond_0
    iget v0, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->emptyItemResourceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 202
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->configureTextView(Landroid/widget/TextView;)V

    .line 205
    :cond_1
    return-object p1
.end method

.method public getEmptyItemResource()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->emptyItemResourceId:I

    return v0
.end method

.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "index"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 175
    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->getItemsCount()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 176
    if-nez p2, :cond_0

    .line 177
    iget v2, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->itemResourceId:I

    invoke-direct {p0, v2, p3}, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 179
    :cond_0
    iget v2, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->itemTextResourceId:I

    invoke-direct {p0, p2, v2}, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v1

    .line 180
    .local v1, "textView":Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {p0, p1}, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 182
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 183
    const-string v0, ""

    .line 185
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget v2, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->itemResourceId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 188
    invoke-virtual {p0, v1}, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->configureTextView(Landroid/widget/TextView;)V

    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_2
    move-object v2, p2

    .line 193
    .end local v1    # "textView":Landroid/widget/TextView;
    :goto_0
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getItemResource()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->itemResourceId:I

    return v0
.end method

.method protected abstract getItemText(I)Ljava/lang/CharSequence;
.end method

.method public getItemTextResource()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->itemTextResourceId:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->textColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->textSize:I

    return v0
.end method

.method protected notifyDataChangedEvent()V
    .locals 3

    .prologue
    .line 278
    iget-object v2, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->datasetObservers:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->datasetObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    .line 280
    .local v1, "observer":Landroid/database/DataSetObserver;
    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0

    .line 283
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observer":Landroid/database/DataSetObserver;
    :cond_0
    return-void
.end method

.method protected notifyDataInvalidatedEvent()V
    .locals 3

    .prologue
    .line 289
    iget-object v2, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->datasetObservers:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->datasetObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    .line 291
    .local v1, "observer":Landroid/database/DataSetObserver;
    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onInvalidated()V

    goto :goto_0

    .line 294
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observer":Landroid/database/DataSetObserver;
    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->datasetObservers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->datasetObservers:Ljava/util/List;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->datasetObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    return-void
.end method

.method public setEmptyItemResource(I)V
    .locals 0
    .param p1, "emptyItemResourceId"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->emptyItemResourceId:I

    .line 163
    return-void
.end method

.method public setItemResource(I)V
    .locals 0
    .param p1, "itemResourceId"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->itemResourceId:I

    .line 131
    return-void
.end method

.method public setItemTextResource(I)V
    .locals 0
    .param p1, "itemTextResourceId"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->itemTextResourceId:I

    .line 147
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->textColor:I

    .line 99
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->textSize:I

    .line 115
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->datasetObservers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->datasetObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 272
    :cond_0
    return-void
.end method
