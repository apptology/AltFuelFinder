.class Lcom/biznessapps/rss/RssAdapter$1;
.super Ljava/lang/Object;
.source "RssAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/rss/RssAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/rss/RssAdapter;

.field final synthetic val$arrowNavigationView:Landroid/widget/ImageView;

.field final synthetic val$dateView:Landroid/widget/TextView;

.field final synthetic val$isImageExist:Z

.field final synthetic val$item:Lcom/biznessapps/rss/RssEntity;

.field final synthetic val$summaryView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/biznessapps/rss/RssAdapter;Landroid/widget/ImageView;Lcom/biznessapps/rss/RssEntity;Landroid/widget/TextView;Landroid/widget/TextView;Z)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/biznessapps/rss/RssAdapter$1;->this$0:Lcom/biznessapps/rss/RssAdapter;

    iput-object p2, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$arrowNavigationView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$item:Lcom/biznessapps/rss/RssEntity;

    iput-object p4, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$summaryView:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$dateView:Landroid/widget/TextView;

    iput-boolean p6, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$isImageExist:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v1, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$arrowNavigationView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$item:Lcom/biznessapps/rss/RssEntity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 101
    .local v0, "extendText":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 102
    iget-object v1, p0, Lcom/biznessapps/rss/RssAdapter$1;->this$0:Lcom/biznessapps/rss/RssAdapter;

    iget-object v2, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$summaryView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$dateView:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$isImageExist:Z

    iget-object v5, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$item:Lcom/biznessapps/rss/RssEntity;

    invoke-virtual {v5}, Lcom/biznessapps/rss/RssEntity;->getSummary()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/biznessapps/rss/RssAdapter;->setExtendedMode(Landroid/widget/TextView;Landroid/widget/TextView;ZLjava/lang/String;)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/biznessapps/rss/RssAdapter;->access$000(Lcom/biznessapps/rss/RssAdapter;Landroid/widget/TextView;Landroid/widget/TextView;ZLjava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$arrowNavigationView:Landroid/widget/ImageView;

    sget v2, Lcom/biznessapps/layout/R$drawable;->arrow_up:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 104
    iget-object v1, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$arrowNavigationView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$item:Lcom/biznessapps/rss/RssEntity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$item:Lcom/biznessapps/rss/RssEntity;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 110
    :goto_1
    iget-object v1, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$item:Lcom/biznessapps/rss/RssEntity;

    invoke-virtual {v1}, Lcom/biznessapps/rss/RssEntity;->getItemTextColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$arrowNavigationView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 111
    return-void

    .line 100
    .end local v0    # "extendText":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    .restart local v0    # "extendText":Z
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/rss/RssAdapter$1;->this$0:Lcom/biznessapps/rss/RssAdapter;

    iget-object v2, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$summaryView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$dateView:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$isImageExist:Z

    iget-object v5, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$item:Lcom/biznessapps/rss/RssEntity;

    invoke-virtual {v5}, Lcom/biznessapps/rss/RssEntity;->getSummary()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/biznessapps/rss/RssAdapter;->setUsualMode(Landroid/widget/TextView;Landroid/widget/TextView;ZLjava/lang/String;)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/biznessapps/rss/RssAdapter;->access$100(Lcom/biznessapps/rss/RssAdapter;Landroid/widget/TextView;Landroid/widget/TextView;ZLjava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$arrowNavigationView:Landroid/widget/ImageView;

    sget v2, Lcom/biznessapps/layout/R$drawable;->arrow_down:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 108
    iget-object v1, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$arrowNavigationView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/biznessapps/rss/RssAdapter$1;->val$item:Lcom/biznessapps/rss/RssEntity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_1
.end method
