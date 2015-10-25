.class public Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
.super Ljava/lang/Object;
.source "ImageWorker.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/utils/google/caching/ImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageLoadParams"
.end annotation


# instance fields
.field private imageFormType:I

.field private imageType:I

.field private isImageSrc:Z

.field private loadCallback:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

.field private settings:Lcom/biznessapps/api/UiSettings;

.field private tint:Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;

.field private url:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    const/4 v0, 0x1

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->imageType:I

    .line 626
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->imageFormType:I

    .line 630
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    const/4 v0, 0x1

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->imageType:I

    .line 626
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->imageFormType:I

    .line 633
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->url:Ljava/lang/String;

    .line 634
    iput-object p2, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->view:Landroid/view/View;

    .line 635
    return-void
.end method

.method static synthetic access$002(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;)Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .param p1, "x1"    # Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->loadCallback:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    return-object p1
.end method

.method static synthetic access$600(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    .prologue
    .line 612
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->url:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 703
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getImageFormType()I
    .locals 1

    .prologue
    .line 694
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->imageFormType:I

    return v0
.end method

.method public getImageType()I
    .locals 1

    .prologue
    .line 686
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->imageType:I

    return v0
.end method

.method public getLoadCallback()Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->loadCallback:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    return-object v0
.end method

.method public getSettings()Lcom/biznessapps/api/UiSettings;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method public getTint()Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->tint:Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->view:Landroid/view/View;

    return-object v0
.end method

.method public isImageSrc()Z
    .locals 1

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->isImageSrc:Z

    return v0
.end method

.method public setImageFormType(I)V
    .locals 0
    .param p1, "imageFormType"    # I

    .prologue
    .line 698
    iput p1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->imageFormType:I

    .line 699
    return-void
.end method

.method public setImageSrc(Z)V
    .locals 0
    .param p1, "isImageSrc"    # Z

    .prologue
    .line 682
    iput-boolean p1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->isImageSrc:Z

    .line 683
    return-void
.end method

.method public setImageType(I)V
    .locals 0
    .param p1, "imageType"    # I

    .prologue
    .line 690
    iput p1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->imageType:I

    .line 691
    return-void
.end method

.method public setLoadCallback(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;)V
    .locals 0
    .param p1, "loadCallback"    # Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->loadCallback:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    .line 651
    return-void
.end method

.method public setSettings(Lcom/biznessapps/api/UiSettings;)V
    .locals 0
    .param p1, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 670
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->settings:Lcom/biznessapps/api/UiSettings;

    .line 671
    return-void
.end method

.method public setTint(Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V
    .locals 0
    .param p1, "tint"    # Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->tint:Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;

    .line 659
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->url:Ljava/lang/String;

    .line 679
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->view:Landroid/view/View;

    .line 643
    return-void
.end method
