.class Lcom/biznessapps/fragments/single/PreviewAppFragment$4;
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
    .line 191
    iput-object p1, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment$4;->this$0:Lcom/biznessapps/fragments/single/PreviewAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment$4;->this$0:Lcom/biznessapps/fragments/single/PreviewAppFragment;

    # invokes: Lcom/biznessapps/fragments/single/PreviewAppFragment;->clearText()V
    invoke-static {v0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->access$600(Lcom/biznessapps/fragments/single/PreviewAppFragment;)V

    .line 195
    return-void
.end method
