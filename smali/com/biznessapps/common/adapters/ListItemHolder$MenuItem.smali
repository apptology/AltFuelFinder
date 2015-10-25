.class public Lcom/biznessapps/common/adapters/ListItemHolder$MenuItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuItem"
.end annotation


# instance fields
.field private textViewPrice:Landroid/widget/TextView;

.field private textViewTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextViewPrice()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$MenuItem;->textViewPrice:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextViewTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$MenuItem;->textViewTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public setTextViewPrice(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewPrice"    # Landroid/widget/TextView;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$MenuItem;->textViewPrice:Landroid/widget/TextView;

    .line 50
    return-void
.end method

.method public setTextViewTitle(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewTitle"    # Landroid/widget/TextView;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$MenuItem;->textViewTitle:Landroid/widget/TextView;

    .line 42
    return-void
.end method
