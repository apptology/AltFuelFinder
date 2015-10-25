.class public Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageItem"
.end annotation


# instance fields
.field private textViewDate:Landroid/widget/TextView;

.field private textViewText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextViewDate()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;->textViewDate:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextViewText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;->textViewText:Landroid/widget/TextView;

    return-object v0
.end method

.method public setTextViewDate(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewDate"    # Landroid/widget/TextView;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;->textViewDate:Landroid/widget/TextView;

    .line 150
    return-void
.end method

.method public setTextViewText(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewText"    # Landroid/widget/TextView;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;->textViewText:Landroid/widget/TextView;

    .line 142
    return-void
.end method
