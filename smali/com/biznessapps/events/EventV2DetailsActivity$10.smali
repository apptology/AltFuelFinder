.class Lcom/biznessapps/events/EventV2DetailsActivity$10;
.super Ljava/lang/Object;
.source "EventV2DetailsActivity.java"

# interfaces
.implements Lcom/biznessapps/common/social/ui/SocialCommentComponent$CommentActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/events/EventV2DetailsActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/events/EventV2DetailsActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/events/EventV2DetailsActivity;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$10;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommentAdded()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity$10;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # invokes: Lcom/biznessapps/events/EventV2DetailsActivity;->loadContent()V
    invoke-static {v0}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$1500(Lcom/biznessapps/events/EventV2DetailsActivity;)V

    .line 306
    return-void
.end method
