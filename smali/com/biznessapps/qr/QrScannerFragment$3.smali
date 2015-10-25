.class Lcom/biznessapps/qr/QrScannerFragment$3;
.super Ljava/lang/Object;
.source "QrScannerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/qr/QrScannerFragment;->initListeners()V
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
    .line 229
    iput-object p1, p0, Lcom/biznessapps/qr/QrScannerFragment$3;->this$0:Lcom/biznessapps/qr/QrScannerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/biznessapps/qr/QrScannerFragment$3;->this$0:Lcom/biznessapps/qr/QrScannerFragment;

    # invokes: Lcom/biznessapps/qr/QrScannerFragment;->startScanning()V
    invoke-static {v0}, Lcom/biznessapps/qr/QrScannerFragment;->access$300(Lcom/biznessapps/qr/QrScannerFragment;)V

    .line 233
    return-void
.end method
