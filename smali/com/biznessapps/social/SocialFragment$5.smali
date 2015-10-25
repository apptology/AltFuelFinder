.class Lcom/biznessapps/social/SocialFragment$5;
.super Ljava/lang/Object;
.source "SocialFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 368
    iput-object p1, p0, Lcom/biznessapps/social/SocialFragment$5;->this$0:Lcom/biznessapps/social/SocialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment$5;->this$0:Lcom/biznessapps/social/SocialFragment;

    const/4 v1, 0x1

    # setter for: Lcom/biznessapps/social/SocialFragment;->currentType:I
    invoke-static {v0, v1}, Lcom/biznessapps/social/SocialFragment;->access$202(Lcom/biznessapps/social/SocialFragment;I)I

    .line 372
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment$5;->this$0:Lcom/biznessapps/social/SocialFragment;

    iget-object v1, p0, Lcom/biznessapps/social/SocialFragment$5;->this$0:Lcom/biznessapps/social/SocialFragment;

    # getter for: Lcom/biznessapps/social/SocialFragment;->currentType:I
    invoke-static {v1}, Lcom/biznessapps/social/SocialFragment;->access$200(Lcom/biznessapps/social/SocialFragment;)I

    move-result v1

    # invokes: Lcom/biznessapps/social/SocialFragment;->updateViewsAndData(I)V
    invoke-static {v0, v1}, Lcom/biznessapps/social/SocialFragment;->access$300(Lcom/biznessapps/social/SocialFragment;I)V

    .line 373
    return-void
.end method
