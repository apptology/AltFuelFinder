.class Lcom/biznessapps/news/NewsFragment$1;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/news/NewsFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/news/NewsFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/news/NewsFragment;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/biznessapps/news/NewsFragment$1;->this$0:Lcom/biznessapps/news/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/biznessapps/news/NewsFragment$1;->this$0:Lcom/biznessapps/news/NewsFragment;

    const/4 v1, 0x1

    # setter for: Lcom/biznessapps/news/NewsFragment;->currentSearchType:I
    invoke-static {v0, v1}, Lcom/biznessapps/news/NewsFragment;->access$002(Lcom/biznessapps/news/NewsFragment;I)I

    .line 195
    iget-object v0, p0, Lcom/biznessapps/news/NewsFragment$1;->this$0:Lcom/biznessapps/news/NewsFragment;

    # invokes: Lcom/biznessapps/news/NewsFragment;->search()V
    invoke-static {v0}, Lcom/biznessapps/news/NewsFragment;->access$100(Lcom/biznessapps/news/NewsFragment;)V

    .line 196
    return-void
.end method
