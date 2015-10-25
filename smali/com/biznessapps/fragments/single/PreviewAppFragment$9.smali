.class Lcom/biznessapps/fragments/single/PreviewAppFragment$9;
.super Ljava/lang/Object;
.source "PreviewAppFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/single/PreviewAppFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/single/PreviewAppFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/single/PreviewAppFragment;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment$9;->this$0:Lcom/biznessapps/fragments/single/PreviewAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 229
    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/UrlWrapper;->clearState()V

    .line 230
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment$9;->this$0:Lcom/biznessapps/fragments/single/PreviewAppFragment;

    iget-object v1, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment$9;->this$0:Lcom/biznessapps/fragments/single/PreviewAppFragment;

    # getter for: Lcom/biznessapps/fragments/single/PreviewAppFragment;->productionButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->access$1200(Lcom/biznessapps/fragments/single/PreviewAppFragment;)Landroid/widget/Button;

    move-result-object v1

    # invokes: Lcom/biznessapps/fragments/single/PreviewAppFragment;->updateButtonsState(Landroid/widget/Button;)V
    invoke-static {v0, v1}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->access$1000(Lcom/biznessapps/fragments/single/PreviewAppFragment;Landroid/widget/Button;)V

    .line 231
    return-void
.end method
