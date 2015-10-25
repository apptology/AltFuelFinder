.class Lcom/biznessapps/fragments/single/PreviewAppFragment$1;
.super Ljava/lang/Object;
.source "PreviewAppFragment.java"

# interfaces
.implements Lcom/biznessapps/localization/StringsSource$LocalizationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fragments/single/PreviewAppFragment;
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
    .line 54
    iput-object p1, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment$1;->this$0:Lcom/biznessapps/fragments/single/PreviewAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLanguageChanged()V
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment$1;->this$0:Lcom/biznessapps/fragments/single/PreviewAppFragment;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 59
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment$1;->this$0:Lcom/biznessapps/fragments/single/PreviewAppFragment;

    # getter for: Lcom/biznessapps/fragments/single/PreviewAppFragment;->root:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->access$000(Lcom/biznessapps/fragments/single/PreviewAppFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment$1;->this$0:Lcom/biznessapps/fragments/single/PreviewAppFragment;

    iget-object v2, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment$1;->this$0:Lcom/biznessapps/fragments/single/PreviewAppFragment;

    # getter for: Lcom/biznessapps/fragments/single/PreviewAppFragment;->root:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->access$100(Lcom/biznessapps/fragments/single/PreviewAppFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 62
    :cond_0
    return-void
.end method
