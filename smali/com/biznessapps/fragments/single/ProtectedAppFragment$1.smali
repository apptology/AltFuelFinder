.class Lcom/biznessapps/fragments/single/ProtectedAppFragment$1;
.super Ljava/lang/Object;
.source "ProtectedAppFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/single/ProtectedAppFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/single/ProtectedAppFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/single/ProtectedAppFragment;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/biznessapps/fragments/single/ProtectedAppFragment$1;->this$0:Lcom/biznessapps/fragments/single/ProtectedAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/biznessapps/fragments/single/ProtectedAppFragment$1;->this$0:Lcom/biznessapps/fragments/single/ProtectedAppFragment;

    # invokes: Lcom/biznessapps/fragments/single/ProtectedAppFragment;->confirm()V
    invoke-static {v0}, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->access$000(Lcom/biznessapps/fragments/single/ProtectedAppFragment;)V

    .line 62
    return-void
.end method
