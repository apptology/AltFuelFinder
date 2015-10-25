.class final Lcom/biznessapps/utils/HeaderUtils$1;
.super Ljava/lang/Object;
.source "HeaderUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/utils/HeaderUtils;->getOnClickListener(Landroid/widget/ImageView;Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$arrowNavigation:Landroid/widget/ImageView;

.field final synthetic val$dataContainer:Landroid/view/ViewGroup;

.field final synthetic val$headerContainer:Landroid/view/ViewGroup;

.field final synthetic val$uiSettings:Lcom/biznessapps/api/UiSettings;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/ImageView;Lcom/biznessapps/api/UiSettings;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/biznessapps/utils/HeaderUtils$1;->val$dataContainer:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/biznessapps/utils/HeaderUtils$1;->val$headerContainer:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/biznessapps/utils/HeaderUtils$1;->val$arrowNavigation:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/biznessapps/utils/HeaderUtils$1;->val$uiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v2, p0, Lcom/biznessapps/utils/HeaderUtils$1;->val$dataContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 60
    .local v0, "isVisible":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 61
    iget-object v1, p0, Lcom/biznessapps/utils/HeaderUtils$1;->val$dataContainer:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 62
    iget-object v1, p0, Lcom/biznessapps/utils/HeaderUtils$1;->val$headerContainer:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$drawable;->rs_container_closed:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 63
    iget-object v1, p0, Lcom/biznessapps/utils/HeaderUtils$1;->val$arrowNavigation:Landroid/widget/ImageView;

    sget v2, Lcom/biznessapps/layout/R$drawable;->arrow_down:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 70
    :goto_1
    iget-object v1, p0, Lcom/biznessapps/utils/HeaderUtils$1;->val$uiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/utils/HeaderUtils$1;->val$arrowNavigation:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v1, p0, Lcom/biznessapps/utils/HeaderUtils$1;->val$uiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getSectionBarColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/utils/HeaderUtils$1;->val$headerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v1, p0, Lcom/biznessapps/utils/HeaderUtils$1;->val$headerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 73
    return-void

    .end local v0    # "isVisible":Z
    :cond_0
    move v0, v1

    .line 59
    goto :goto_0

    .line 66
    .restart local v0    # "isVisible":Z
    :cond_1
    iget-object v2, p0, Lcom/biznessapps/utils/HeaderUtils$1;->val$dataContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 67
    iget-object v1, p0, Lcom/biznessapps/utils/HeaderUtils$1;->val$arrowNavigation:Landroid/widget/ImageView;

    sget v2, Lcom/biznessapps/layout/R$drawable;->arrow_up:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 68
    iget-object v1, p0, Lcom/biznessapps/utils/HeaderUtils$1;->val$headerContainer:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$drawable;->rs_header_opened:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_1
.end method
