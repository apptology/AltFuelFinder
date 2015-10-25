.class Lcom/biznessapps/youtube/YoutubeListFragment$1;
.super Ljava/lang/Object;
.source "YoutubeListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/youtube/YoutubeListFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/youtube/YoutubeListFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/youtube/YoutubeListFragment;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeListFragment$1;->this$0:Lcom/biznessapps/youtube/YoutubeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeListFragment$1;->this$0:Lcom/biznessapps/youtube/YoutubeListFragment;

    const/4 v1, 0x1

    # setter for: Lcom/biznessapps/youtube/YoutubeListFragment;->currentType:I
    invoke-static {v0, v1}, Lcom/biznessapps/youtube/YoutubeListFragment;->access$002(Lcom/biznessapps/youtube/YoutubeListFragment;I)I

    .line 83
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeListFragment$1;->this$0:Lcom/biznessapps/youtube/YoutubeListFragment;

    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeListFragment$1;->this$0:Lcom/biznessapps/youtube/YoutubeListFragment;

    # getter for: Lcom/biznessapps/youtube/YoutubeListFragment;->currentType:I
    invoke-static {v1}, Lcom/biznessapps/youtube/YoutubeListFragment;->access$000(Lcom/biznessapps/youtube/YoutubeListFragment;)I

    move-result v1

    # invokes: Lcom/biznessapps/youtube/YoutubeListFragment;->updateButtonState(I)V
    invoke-static {v0, v1}, Lcom/biznessapps/youtube/YoutubeListFragment;->access$100(Lcom/biznessapps/youtube/YoutubeListFragment;I)V

    .line 84
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeListFragment$1;->this$0:Lcom/biznessapps/youtube/YoutubeListFragment;

    # invokes: Lcom/biznessapps/youtube/YoutubeListFragment;->loadData()V
    invoke-static {v0}, Lcom/biznessapps/youtube/YoutubeListFragment;->access$200(Lcom/biznessapps/youtube/YoutubeListFragment;)V

    .line 85
    return-void
.end method
