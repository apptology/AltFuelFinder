.class Lcom/biznessapps/gallery/GalleryManager$GalleryManagerHolder;
.super Ljava/lang/Object;
.source "GalleryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/gallery/GalleryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GalleryManagerHolder"
.end annotation


# static fields
.field private static final instance:Lcom/biznessapps/gallery/GalleryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/biznessapps/gallery/GalleryManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/biznessapps/gallery/GalleryManager;-><init>(Lcom/biznessapps/gallery/GalleryManager$1;)V

    sput-object v0, Lcom/biznessapps/gallery/GalleryManager$GalleryManagerHolder;->instance:Lcom/biznessapps/gallery/GalleryManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/biznessapps/gallery/GalleryManager;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/biznessapps/gallery/GalleryManager$GalleryManagerHolder;->instance:Lcom/biznessapps/gallery/GalleryManager;

    return-object v0
.end method
