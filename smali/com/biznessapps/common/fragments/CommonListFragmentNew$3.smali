.class Lcom/biznessapps/common/fragments/CommonListFragmentNew$3;
.super Ljava/lang/Object;
.source "CommonListFragmentNew.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/fragments/CommonListFragmentNew;->initListViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/fragments/CommonListFragmentNew;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/fragments/CommonListFragmentNew;)V
    .locals 0

    .prologue
    .line 123
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew$3;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew.3;"
    iput-object p1, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew$3;->this$0:Lcom/biznessapps/common/fragments/CommonListFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew$3;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew.3;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew$3;->this$0:Lcom/biznessapps/common/fragments/CommonListFragmentNew;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method
