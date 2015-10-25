.class Lcom/biznessapps/social/SocialFragment$7;
.super Ljava/lang/Object;
.source "SocialFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/social/SocialFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/social/SocialFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/social/SocialFragment;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/biznessapps/social/SocialFragment$7;->this$0:Lcom/biznessapps/social/SocialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/social/SocialFragment$SocialItem;

    .line 387
    .local v0, "item":Lcom/biznessapps/social/SocialFragment$SocialItem;
    iget-object v1, p0, Lcom/biznessapps/social/SocialFragment$7;->this$0:Lcom/biznessapps/social/SocialFragment;

    # invokes: Lcom/biznessapps/social/SocialFragment;->checkSocialNetworks(Lcom/biznessapps/social/SocialFragment$SocialItem;)V
    invoke-static {v1, v0}, Lcom/biznessapps/social/SocialFragment;->access$400(Lcom/biznessapps/social/SocialFragment;Lcom/biznessapps/social/SocialFragment$SocialItem;)V

    .line 388
    return-void
.end method
