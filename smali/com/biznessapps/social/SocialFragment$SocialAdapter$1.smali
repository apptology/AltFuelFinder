.class Lcom/biznessapps/social/SocialFragment$SocialAdapter$1;
.super Ljava/lang/Object;
.source "SocialFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/social/SocialFragment$SocialAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/social/SocialFragment$SocialAdapter;

.field final synthetic val$item:Lcom/biznessapps/social/SocialFragment$SocialItem;


# direct methods
.method constructor <init>(Lcom/biznessapps/social/SocialFragment$SocialAdapter;Lcom/biznessapps/social/SocialFragment$SocialItem;)V
    .locals 0

    .prologue
    .line 608
    iput-object p1, p0, Lcom/biznessapps/social/SocialFragment$SocialAdapter$1;->this$1:Lcom/biznessapps/social/SocialFragment$SocialAdapter;

    iput-object p2, p0, Lcom/biznessapps/social/SocialFragment$SocialAdapter$1;->val$item:Lcom/biznessapps/social/SocialFragment$SocialItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 612
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment$SocialAdapter$1;->this$1:Lcom/biznessapps/social/SocialFragment$SocialAdapter;

    iget-object v0, v0, Lcom/biznessapps/social/SocialFragment$SocialAdapter;->this$0:Lcom/biznessapps/social/SocialFragment;

    iget-object v1, p0, Lcom/biznessapps/social/SocialFragment$SocialAdapter$1;->val$item:Lcom/biznessapps/social/SocialFragment$SocialItem;

    # invokes: Lcom/biznessapps/social/SocialFragment;->checkSocialNetworks(Lcom/biznessapps/social/SocialFragment$SocialItem;)V
    invoke-static {v0, v1}, Lcom/biznessapps/social/SocialFragment;->access$400(Lcom/biznessapps/social/SocialFragment;Lcom/biznessapps/social/SocialFragment$SocialItem;)V

    .line 613
    return-void
.end method
