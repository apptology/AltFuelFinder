.class Lcom/biznessapps/news/NewsFragment$SearchAdapter$1;
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


# direct methods
.method constructor <init>(Lcom/biznessapps/news/NewsFragment$SearchAdapter;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$1;->this$1:Lcom/biznessapps/news/NewsFragment$SearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter$1;->this$1:Lcom/biznessapps/news/NewsFragment$SearchAdapter;

    iget-object v0, v0, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->this$0:Lcom/biznessapps/news/NewsFragment;

    invoke-virtual {v0}, Lcom/biznessapps/news/NewsFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/ui/ShareComponent;->showSharingOptionDialog(Landroid/app/Activity;)V

    .line 322
    return-void
.end method
