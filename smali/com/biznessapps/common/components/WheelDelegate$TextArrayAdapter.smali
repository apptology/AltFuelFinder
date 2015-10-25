.class Lcom/biznessapps/common/components/WheelDelegate$TextArrayAdapter;
.super Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;
.source "WheelDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/components/WheelDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextArrayAdapter"
.end annotation


# instance fields
.field private labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/biznessapps/common/components/WheelDelegate;


# direct methods
.method protected constructor <init>(Lcom/biznessapps/common/components/WheelDelegate;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p3, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/common/components/WheelDelegate$TextArrayAdapter;->this$0:Lcom/biznessapps/common/components/WheelDelegate;

    .line 243
    sget v0, Lcom/biznessapps/layout/R$layout;->wheel_item_row:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;II)V

    .line 244
    iput-object p3, p0, Lcom/biznessapps/common/components/WheelDelegate$TextArrayAdapter;->labels:Ljava/util/List;

    .line 245
    sget v0, Lcom/biznessapps/layout/R$id;->description:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/components/WheelDelegate$TextArrayAdapter;->setItemTextResource(I)V

    .line 246
    return-void
.end method


# virtual methods
.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "index"    # I
    .param p2, "cachedView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 250
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 251
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/biznessapps/layout/R$id;->description:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 252
    .local v0, "monthday":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/biznessapps/common/components/WheelDelegate$TextArrayAdapter;->labels:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    return-object v1
.end method

.method protected getItemText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 263
    const-string v0, ""

    return-object v0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/biznessapps/common/components/WheelDelegate$TextArrayAdapter;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
