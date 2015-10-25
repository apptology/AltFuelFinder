.class Lcom/biznessapps/youtube/YoutubeDetailFragment$3;
.super Ljava/lang/Object;
.source "YoutubeDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/youtube/YoutubeDetailFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/youtube/YoutubeDetailFragment;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$3;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$3;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$3;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    # getter for: Lcom/biznessapps/youtube/YoutubeDetailFragment;->commentsButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->access$300(Lcom/biznessapps/youtube/YoutubeDetailFragment;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$3;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    iget-object v2, v2, Lcom/biznessapps/youtube/YoutubeDetailFragment;->commentsTabContainer:Landroid/view/ViewGroup;

    # invokes: Lcom/biznessapps/youtube/YoutubeDetailFragment;->activateButton(Landroid/widget/Button;Landroid/view/ViewGroup;)V
    invoke-static {v0, v1, v2}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->access$200(Lcom/biznessapps/youtube/YoutubeDetailFragment;Landroid/widget/Button;Landroid/view/ViewGroup;)V

    .line 158
    return-void
.end method
