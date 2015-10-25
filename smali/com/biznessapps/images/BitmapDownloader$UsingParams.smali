.class public Lcom/biznessapps/images/BitmapDownloader$UsingParams;
.super Ljava/lang/Object;
.source "BitmapDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/images/BitmapDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsingParams"
.end annotation


# static fields
.field private static final DEFAULT_BITMAP_SAMPLE_SIZE:I = 0x1


# instance fields
.field private callback:Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;

.field private reqHeight:I

.field private reqWidth:I

.field private sampleSize:I

.field private url:Ljava/lang/String;

.field private useReflection:Z

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 699
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/biznessapps/images/BitmapDownloader$UsingParams;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;)V

    .line 700
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;

    .prologue
    const/4 v4, 0x0

    .line 703
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/images/BitmapDownloader$UsingParams;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;ZZ)V

    .line 704
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;
    .param p4, "isLight"    # Z

    .prologue
    .line 707
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/images/BitmapDownloader$UsingParams;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;ZZ)V

    .line 708
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;ZZ)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;
    .param p4, "isLight"    # Z
    .param p5, "useReflection"    # Z

    .prologue
    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    const/4 v0, 0x1

    iput v0, p0, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->sampleSize:I

    .line 711
    iput-object p2, p0, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->url:Ljava/lang/String;

    .line 712
    iput-object p1, p0, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->view:Landroid/view/View;

    .line 713
    iput-boolean p5, p0, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->useReflection:Z

    .line 714
    iput-object p3, p0, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->callback:Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;

    .line 715
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 695
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/biznessapps/images/BitmapDownloader$UsingParams;-><init>(Landroid/view/View;Ljava/lang/String;)V

    .line 696
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->callback:Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;

    return-object v0
.end method

.method public getReqHeight()I
    .locals 1

    .prologue
    .line 726
    iget v0, p0, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->reqHeight:I

    return v0
.end method

.method public getReqWidth()I
    .locals 1

    .prologue
    .line 718
    iget v0, p0, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->reqWidth:I

    return v0
.end method

.method public getSampleSize()I
    .locals 1

    .prologue
    .line 758
    iget v0, p0, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->sampleSize:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->view:Landroid/view/View;

    return-object v0
.end method

.method public isUseReflection()Z
    .locals 1

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->useReflection:Z

    return v0
.end method

.method public setCallback(Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;

    .prologue
    .line 750
    iput-object p1, p0, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->callback:Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;

    .line 751
    return-void
.end method

.method public setReqHeight(I)V
    .locals 0
    .param p1, "reqHeight"    # I

    .prologue
    .line 730
    iput p1, p0, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->reqHeight:I

    .line 731
    return-void
.end method

.method public setReqWidth(I)V
    .locals 0
    .param p1, "reqWidth"    # I

    .prologue
    .line 722
    iput p1, p0, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->reqWidth:I

    .line 723
    return-void
.end method

.method public setSampleSize(I)V
    .locals 0
    .param p1, "sampleSize"    # I

    .prologue
    .line 754
    iput p1, p0, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->sampleSize:I

    .line 755
    return-void
.end method
