.class Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/news/NewsFragment$SearchAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/news/NewsFragment$SearchAdapter;

.field final synthetic val$arrowNavigationView:Landroid/widget/ImageView;

.field final synthetic val$descriptionView:Landroid/widget/TextView;

.field final synthetic val$isImageExist:Z

.field final synthetic val$item:Lcom/biznessapps/news/SearchEntity;

.field final synthetic val$nameDateContainer:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/biznessapps/news/NewsFragment$SearchAdapter;Lcom/biznessapps/news/SearchEntity;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/ViewGroup;Z)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->this$1:Lcom/biznessapps/news/NewsFragment$SearchAdapter;

    iput-object p2, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$item:Lcom/biznessapps/news/SearchEntity;

    iput-object p3, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$arrowNavigationView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$descriptionView:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$nameDateContainer:Landroid/view/ViewGroup;

    iput-boolean p6, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$isImageExist:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 358
    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$item:Lcom/biznessapps/news/SearchEntity;

    invoke-virtual {v1}, Lcom/biznessapps/news/SearchEntity;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$arrowNavigationView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$item:Lcom/biznessapps/news/SearchEntity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 360
    .local v0, "extendText":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 361
    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->this$1:Lcom/biznessapps/news/NewsFragment$SearchAdapter;

    iget-object v2, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$descriptionView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$nameDateContainer:Landroid/view/ViewGroup;

    iget-boolean v4, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$isImageExist:Z

    iget-object v5, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$item:Lcom/biznessapps/news/SearchEntity;

    invoke-virtual {v5}, Lcom/biznessapps/news/SearchEntity;->getText()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/biznessapps/news/NewsFragment$SearchAdapter;->setExtendedMode(Landroid/widget/TextView;Landroid/view/ViewGroup;ZLjava/lang/String;)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->access$200(Lcom/biznessapps/news/NewsFragment$SearchAdapter;Landroid/widget/TextView;Landroid/view/ViewGroup;ZLjava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$arrowNavigationView:Landroid/widget/ImageView;

    sget v2, Lcom/biznessapps/layout/R$drawable;->arrow_up:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 363
    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$arrowNavigationView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$item:Lcom/biznessapps/news/SearchEntity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$item:Lcom/biznessapps/news/SearchEntity;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 369
    :goto_1
    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$item:Lcom/biznessapps/news/SearchEntity;

    invoke-virtual {v1}, Lcom/biznessapps/news/SearchEntity;->getItemTextColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$arrowNavigationView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 371
    .end local v0    # "extendText":Z
    :cond_0
    return-void

    .line 359
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 365
    .restart local v0    # "extendText":Z
    :cond_2
    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->this$1:Lcom/biznessapps/news/NewsFragment$SearchAdapter;

    iget-object v2, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$descriptionView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$nameDateContainer:Landroid/view/ViewGroup;

    iget-boolean v4, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$isImageExist:Z

    iget-object v5, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$item:Lcom/biznessapps/news/SearchEntity;

    invoke-virtual {v5}, Lcom/biznessapps/news/SearchEntity;->getText()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/biznessapps/news/NewsFragment$SearchAdapter;->setUsualMode(Landroid/widget/TextView;Landroid/view/ViewGroup;ZLjava/lang/String;)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->access$300(Lcom/biznessapps/news/NewsFragment$SearchAdapter;Landroid/widget/TextView;Landroid/view/ViewGroup;ZLjava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$arrowNavigationView:Landroid/widget/ImageView;

    sget v2, Lcom/biznessapps/layout/R$drawable;->arrow_down:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 367
    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$arrowNavigationView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;->val$item:Lcom/biznessapps/news/SearchEntity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_1
.end method
