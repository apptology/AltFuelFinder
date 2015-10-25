.class public Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventItem"
.end annotation


# instance fields
.field private dateTextView:Landroid/widget/TextView;

.field private rightArrowView:Landroid/widget/ImageView;

.field private textViewCalendar:Landroid/widget/TextView;

.field private textViewText:Landroid/widget/TextView;

.field private topTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->dateTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRightArrowView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->rightArrowView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextViewCalendar()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->textViewCalendar:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextViewText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->textViewText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTopTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->topTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setDateTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "dateTextView"    # Landroid/widget/TextView;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->dateTextView:Landroid/widget/TextView;

    .line 212
    return-void
.end method

.method public setRightArrowView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "rightArrowView"    # Landroid/widget/ImageView;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->rightArrowView:Landroid/widget/ImageView;

    .line 188
    return-void
.end method

.method public setTextViewCalendar(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewCalendar"    # Landroid/widget/TextView;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->textViewCalendar:Landroid/widget/TextView;

    .line 204
    return-void
.end method

.method public setTextViewText(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewText"    # Landroid/widget/TextView;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->textViewText:Landroid/widget/TextView;

    .line 196
    return-void
.end method

.method public setTopTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "topTextView"    # Landroid/widget/TextView;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->topTextView:Landroid/widget/TextView;

    .line 178
    return-void
.end method
