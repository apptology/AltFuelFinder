.class public Lcom/biznessapps/images/BitmapWrapper;
.super Ljava/lang/Object;
.source "BitmapWrapper.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/biznessapps/images/BitmapWrapper;->bitmap:Landroid/graphics/Bitmap;

    .line 13
    iput-object p2, p0, Lcom/biznessapps/images/BitmapWrapper;->url:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/biznessapps/images/BitmapWrapper;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/images/BitmapWrapper;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/biznessapps/images/BitmapWrapper;->bitmap:Landroid/graphics/Bitmap;

    .line 21
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/biznessapps/images/BitmapWrapper;->url:Ljava/lang/String;

    .line 29
    return-void
.end method
