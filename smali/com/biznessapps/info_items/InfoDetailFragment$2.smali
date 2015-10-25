.class Lcom/biznessapps/info_items/InfoDetailFragment$2;
.super Ljava/lang/Object;
.source "InfoDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/info_items/InfoDetailFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/info_items/InfoDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/info_items/InfoDetailFragment;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/biznessapps/info_items/InfoDetailFragment$2;->this$0:Lcom/biznessapps/info_items/InfoDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/biznessapps/info_items/InfoDetailFragment$2;->this$0:Lcom/biznessapps/info_items/InfoDetailFragment;

    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment$2;->this$0:Lcom/biznessapps/info_items/InfoDetailFragment;

    iget-object v1, v1, Lcom/biznessapps/info_items/InfoDetailFragment;->infoButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/info_items/InfoDetailFragment$2;->this$0:Lcom/biznessapps/info_items/InfoDetailFragment;

    iget-object v2, v2, Lcom/biznessapps/info_items/InfoDetailFragment;->infoTabContainer:Landroid/view/ViewGroup;

    # invokes: Lcom/biznessapps/info_items/InfoDetailFragment;->activateButton(Landroid/widget/Button;Landroid/view/ViewGroup;)V
    invoke-static {v0, v1, v2}, Lcom/biznessapps/info_items/InfoDetailFragment;->access$000(Lcom/biznessapps/info_items/InfoDetailFragment;Landroid/widget/Button;Landroid/view/ViewGroup;)V

    .line 150
    return-void
.end method
