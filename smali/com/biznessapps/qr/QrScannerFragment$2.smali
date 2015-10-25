.class Lcom/biznessapps/qr/QrScannerFragment$2;
.super Ljava/lang/Object;
.source "QrScannerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    .line 214
    iput-object p1, p0, Lcom/biznessapps/qr/QrScannerFragment$2;->this$0:Lcom/biznessapps/qr/QrScannerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/entities/CommonListEntity;

    .line 219
    .local v0, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    iget-object v2, p0, Lcom/biznessapps/qr/QrScannerFragment$2;->this$0:Lcom/biznessapps/qr/QrScannerFragment;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/CommonListEntity;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/qr/QRCodeEntity;

    # setter for: Lcom/biznessapps/qr/QrScannerFragment;->mSelectedQRCodeItem:Lcom/biznessapps/qr/QRCodeEntity;
    invoke-static {v2, v1}, Lcom/biznessapps/qr/QrScannerFragment;->access$102(Lcom/biznessapps/qr/QrScannerFragment;Lcom/biznessapps/qr/QRCodeEntity;)Lcom/biznessapps/qr/QRCodeEntity;

    .line 220
    iget-object v1, p0, Lcom/biznessapps/qr/QrScannerFragment$2;->this$0:Lcom/biznessapps/qr/QrScannerFragment;

    # getter for: Lcom/biznessapps/qr/QrScannerFragment;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/biznessapps/qr/QrScannerFragment;->access$200(Lcom/biznessapps/qr/QrScannerFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->showContextMenu()Z

    .line 222
    const/4 v1, 0x1

    return v1
.end method
