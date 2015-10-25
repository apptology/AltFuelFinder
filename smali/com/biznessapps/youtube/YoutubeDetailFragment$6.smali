.class Lcom/biznessapps/youtube/YoutubeDetailFragment$6;
.super Ljava/lang/Object;
.source "YoutubeDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/youtube/YoutubeDetailFragment;->getOnClickListener()Landroid/view/View$OnClickListener;
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
    .line 268
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$6;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 271
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$6;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    # getter for: Lcom/biznessapps/youtube/YoutubeDetailFragment;->youtubeLink:Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->access$700(Lcom/biznessapps/youtube/YoutubeDetailFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$6;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    # invokes: Lcom/biznessapps/youtube/YoutubeDetailFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;
    invoke-static {v1}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->access$800(Lcom/biznessapps/youtube/YoutubeDetailFragment;)Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/player/PlayerServiceAccessor;->stop()V

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, "videoClient":Landroid/content/Intent;
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$6;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    # getter for: Lcom/biznessapps/youtube/YoutubeDetailFragment;->youtubeLink:Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->access$700(Lcom/biznessapps/youtube/YoutubeDetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 276
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$6;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    invoke-virtual {v1, v0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v0    # "videoClient":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v1

    goto :goto_0
.end method
