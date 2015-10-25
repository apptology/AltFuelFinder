.class Lcom/biznessapps/music/MusicDetailFragment$6;
.super Ljava/lang/Object;
.source "MusicDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/music/MusicDetailFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/music/MusicDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/music/MusicDetailFragment;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/biznessapps/music/MusicDetailFragment$6;->this$0:Lcom/biznessapps/music/MusicDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment$6;->this$0:Lcom/biznessapps/music/MusicDetailFragment;

    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment$6;->this$0:Lcom/biznessapps/music/MusicDetailFragment;

    iget-object v1, v1, Lcom/biznessapps/music/MusicDetailFragment;->commentsButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/music/MusicDetailFragment$6;->this$0:Lcom/biznessapps/music/MusicDetailFragment;

    # getter for: Lcom/biznessapps/music/MusicDetailFragment;->commentsTabContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/biznessapps/music/MusicDetailFragment;->access$700(Lcom/biznessapps/music/MusicDetailFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    # invokes: Lcom/biznessapps/music/MusicDetailFragment;->activateButton(Landroid/widget/Button;Landroid/view/ViewGroup;)V
    invoke-static {v0, v1, v2}, Lcom/biznessapps/music/MusicDetailFragment;->access$500(Lcom/biznessapps/music/MusicDetailFragment;Landroid/widget/Button;Landroid/view/ViewGroup;)V

    .line 159
    return-void
.end method
