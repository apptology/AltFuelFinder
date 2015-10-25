.class Lcom/biznessapps/common/fragments/CommonListFragmentNew$2;
.super Ljava/lang/Object;
.source "CommonListFragmentNew.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 117
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew$2;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew.2;"
    iput-object p1, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew$2;->this$0:Lcom/biznessapps/common/fragments/CommonListFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew$2;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew.2;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew$2;->this$0:Lcom/biznessapps/common/fragments/CommonListFragmentNew;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 121
    return-void
.end method
