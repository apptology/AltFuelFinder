.class final Lcom/biznessapps/camera/scanning/ViewfinderResultPointCallback;
.super Ljava/lang/Object;
.source "ViewfinderResultPointCallback.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private final viewfinderView:Lcom/biznessapps/camera/scanning/ViewfinderView;


# direct methods
.method constructor <init>(Lcom/biznessapps/camera/scanning/ViewfinderView;)V
    .locals 0
    .param p1, "viewfinderView"    # Lcom/biznessapps/camera/scanning/ViewfinderView;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/biznessapps/camera/scanning/ViewfinderResultPointCallback;->viewfinderView:Lcom/biznessapps/camera/scanning/ViewfinderView;

    .line 24
    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/ViewfinderResultPointCallback;->viewfinderView:Lcom/biznessapps/camera/scanning/ViewfinderView;

    invoke-virtual {v0, p1}, Lcom/biznessapps/camera/scanning/ViewfinderView;->addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 32
    return-void
.end method
