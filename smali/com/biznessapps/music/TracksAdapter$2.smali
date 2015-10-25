.class Lcom/biznessapps/music/TracksAdapter$2;
.super Ljava/lang/Object;
.source "TracksAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/music/TracksAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/music/TracksAdapter;

.field final synthetic val$item:Lcom/biznessapps/music/PlaylistEntity;


# direct methods
.method constructor <init>(Lcom/biznessapps/music/TracksAdapter;Lcom/biznessapps/music/PlaylistEntity;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/biznessapps/music/TracksAdapter$2;->this$0:Lcom/biznessapps/music/TracksAdapter;

    iput-object p2, p0, Lcom/biznessapps/music/TracksAdapter$2;->val$item:Lcom/biznessapps/music/PlaylistEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "progressButton"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/biznessapps/music/TracksAdapter$2;->this$0:Lcom/biznessapps/music/TracksAdapter;

    # getter for: Lcom/biznessapps/music/TracksAdapter;->listener:Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;
    invoke-static {v0}, Lcom/biznessapps/music/TracksAdapter;->access$100(Lcom/biznessapps/music/TracksAdapter;)Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/biznessapps/music/TracksAdapter$2;->this$0:Lcom/biznessapps/music/TracksAdapter;

    # getter for: Lcom/biznessapps/music/TracksAdapter;->listener:Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;
    invoke-static {v0}, Lcom/biznessapps/music/TracksAdapter;->access$100(Lcom/biznessapps/music/TracksAdapter;)Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/music/TracksAdapter$2;->val$item:Lcom/biznessapps/music/PlaylistEntity;

    invoke-interface {v0, v1}, Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;->onPlay(Lcom/biznessapps/music/PlaylistEntity;)V

    .line 97
    :cond_0
    return-void
.end method
