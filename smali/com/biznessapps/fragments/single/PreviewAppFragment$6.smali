.class Lcom/biznessapps/fragments/single/PreviewAppFragment$6;
.super Ljava/lang/Object;
.source "PreviewAppFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 203
    iput-object p1, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment$6;->this$0:Lcom/biznessapps/fragments/single/PreviewAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment$6;->this$0:Lcom/biznessapps/fragments/single/PreviewAppFragment;

    # getter for: Lcom/biznessapps/fragments/single/PreviewAppFragment;->loadDemoButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->access$800(Lcom/biznessapps/fragments/single/PreviewAppFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 207
    return-void
.end method
