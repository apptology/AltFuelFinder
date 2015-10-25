.class Lcom/biznessapps/rss/RssAdapter$2;
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


# direct methods
.method constructor <init>(Lcom/biznessapps/rss/RssAdapter;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/biznessapps/rss/RssAdapter$2;->this$0:Lcom/biznessapps/rss/RssAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/biznessapps/rss/RssAdapter$2;->this$0:Lcom/biznessapps/rss/RssAdapter;

    # getter for: Lcom/biznessapps/rss/RssAdapter;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/biznessapps/rss/RssAdapter;->access$200(Lcom/biznessapps/rss/RssAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/ui/ShareComponent;->showSharingOptionDialog(Landroid/app/Activity;)V

    .line 125
    return-void
.end method
