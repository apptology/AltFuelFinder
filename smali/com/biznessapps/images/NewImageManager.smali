.class public Lcom/biznessapps/images/NewImageManager;
.super Ljava/lang/Object;
.source "NewImageManager.java"


# static fields
.field public static final REDUCING_COEFF:F = 0.7f

.field private static final STANDART_DEVICE_WIDTH:I = 0x1e0


# instance fields
.field private bitmapDownloader:Lcom/biznessapps/images/BitmapDownloader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/biznessapps/images/BitmapDownloader;

    invoke-direct {v0}, Lcom/biznessapps/images/BitmapDownloader;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/images/NewImageManager;->bitmapDownloader:Lcom/biznessapps/images/BitmapDownloader;

    .line 16
    return-void
.end method

.method public static addWidthParam(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "width"    # I

    .prologue
    .line 37
    const v0, 0x3f333333    # 0.7f

    invoke-static {p0, p1, v0}, Lcom/biznessapps/images/NewImageManager;->addWidthParam(Ljava/lang/String;IF)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static addWidthParam(Ljava/lang/String;IF)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "reducingCoeff"    # F

    .prologue
    .line 23
    const/16 v0, 0x1e0

    if-le p1, v0, :cond_0

    .line 24
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int p1, v0

    .line 26
    :cond_0
    invoke-static {p0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    .line 27
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 33
    :cond_1
    :goto_0
    return-object p0

    .line 30
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public getBitmapDownloader()Lcom/biznessapps/images/BitmapDownloader;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/biznessapps/images/NewImageManager;->bitmapDownloader:Lcom/biznessapps/images/BitmapDownloader;

    return-object v0
.end method
