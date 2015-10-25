.class Lcom/biznessapps/qr/QrScannerFragment$1;
.super Ljava/lang/Object;
.source "QrScannerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/qr/QrScannerFragment;->loadQrCodes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/qr/QrScannerFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/qr/QrScannerFragment;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/biznessapps/qr/QrScannerFragment$1;->this$0:Lcom/biznessapps/qr/QrScannerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 208
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/entities/CommonListEntity;

    .line 209
    .local v0, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    invoke-virtual {v0}, Lcom/biznessapps/common/entities/CommonListEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/biznessapps/qr/QrScannerFragment$1;->this$0:Lcom/biznessapps/qr/QrScannerFragment;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/CommonListEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/biznessapps/qr/QrScannerFragment;->openWebView(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/biznessapps/qr/QrScannerFragment;->access$000(Lcom/biznessapps/qr/QrScannerFragment;Ljava/lang/String;)V

    .line 212
    :cond_0
    return-void
.end method
