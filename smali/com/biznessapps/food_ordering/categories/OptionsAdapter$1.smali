.class Lcom/biznessapps/food_ordering/categories/OptionsAdapter$1;
.super Ljava/lang/Object;
.source "OptionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/categories/OptionsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/categories/OptionsAdapter;

.field final synthetic val$checkView:Landroid/widget/ImageView;

.field final synthetic val$item:Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/categories/OptionsAdapter;Landroid/widget/ImageView;Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$1;->this$0:Lcom/biznessapps/food_ordering/categories/OptionsAdapter;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$1;->val$checkView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$1;->val$item:Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 60
    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$1;->val$checkView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$1;->val$checkView:Landroid/widget/ImageView;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 63
    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$1;->val$checkView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$1;->this$0:Lcom/biznessapps/food_ordering/categories/OptionsAdapter;

    # getter for: Lcom/biznessapps/food_ordering/categories/OptionsAdapter;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v3}, Lcom/biznessapps/food_ordering/categories/OptionsAdapter;->access$100(Lcom/biznessapps/food_ordering/categories/OptionsAdapter;)Lcom/biznessapps/api/UiSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 64
    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$1;->val$checkView:Landroid/widget/ImageView;

    sget v3, Lcom/biznessapps/layout/R$drawable;->fo_checked_icon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$1;->this$0:Lcom/biznessapps/food_ordering/categories/OptionsAdapter;

    # getter for: Lcom/biznessapps/food_ordering/categories/OptionsAdapter;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v2}, Lcom/biznessapps/food_ordering/categories/OptionsAdapter;->access$200(Lcom/biznessapps/food_ordering/categories/OptionsAdapter;)Lcom/biznessapps/api/UiSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$1;->val$checkView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 73
    :goto_0
    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$1;->this$0:Lcom/biznessapps/food_ordering/categories/OptionsAdapter;

    # getter for: Lcom/biznessapps/food_ordering/categories/OptionsAdapter;->listener:Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ClickListener;
    invoke-static {v2}, Lcom/biznessapps/food_ordering/categories/OptionsAdapter;->access$300(Lcom/biznessapps/food_ordering/categories/OptionsAdapter;)Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ClickListener;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$1;->val$checkView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$1;->val$item:Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;

    invoke-interface {v2, v1, v3}, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ClickListener;->onClicked(ZLcom/biznessapps/food_ordering/entities/OrderOptionEntity;)V

    .line 74
    return-void

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$1;->this$0:Lcom/biznessapps/food_ordering/categories/OptionsAdapter;

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/categories/OptionsAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$color;->fo_item_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 69
    .local v0, "color":I
    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$1;->val$checkView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 70
    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$1;->val$checkView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$1;->val$checkView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    .end local v0    # "color":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
