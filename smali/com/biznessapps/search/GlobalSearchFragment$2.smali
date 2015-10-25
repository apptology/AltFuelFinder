.class Lcom/biznessapps/search/GlobalSearchFragment$2;
.super Ljava/lang/Object;
.source "GlobalSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/search/GlobalSearchFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/search/GlobalSearchFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/search/GlobalSearchFragment;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/biznessapps/search/GlobalSearchFragment$2;->this$0:Lcom/biznessapps/search/GlobalSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment$2;->this$0:Lcom/biznessapps/search/GlobalSearchFragment;

    invoke-virtual {v0}, Lcom/biznessapps/search/GlobalSearchFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    .line 113
    return-void
.end method
