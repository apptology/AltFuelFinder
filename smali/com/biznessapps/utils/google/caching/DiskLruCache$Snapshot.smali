.class public final Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/utils/google/caching/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/biznessapps/utils/google/caching/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/biznessapps/utils/google/caching/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "ins"    # [Ljava/io/InputStream;

    .prologue
    .line 740
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;->this$0:Lcom/biznessapps/utils/google/caching/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    iput-object p2, p0, Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 742
    iput-wide p3, p0, Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 743
    iput-object p5, p0, Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 744
    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/utils/google/caching/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/biznessapps/utils/google/caching/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/utils/google/caching/DiskLruCache;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # [Ljava/io/InputStream;
    .param p6, "x4"    # Lcom/biznessapps/utils/google/caching/DiskLruCache$1;

    .prologue
    .line 735
    invoke-direct/range {p0 .. p5}, Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;-><init>(Lcom/biznessapps/utils/google/caching/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 770
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .local v0, "arr$":[Ljava/io/InputStream;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 771
    .local v2, "in":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/biznessapps/utils/google/caching/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 770
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    .end local v2    # "in":Ljava/io/InputStream;
    :cond_0
    return-void
.end method

.method public edit()Lcom/biznessapps/utils/google/caching/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 752
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;->this$0:Lcom/biznessapps/utils/google/caching/DiskLruCache;

    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;->sequenceNumber:J

    # invokes: Lcom/biznessapps/utils/google/caching/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/biznessapps/utils/google/caching/DiskLruCache$Editor;
    invoke-static {v0, v1, v2, v3}, Lcom/biznessapps/utils/google/caching/DiskLruCache;->access$1500(Lcom/biznessapps/utils/google/caching/DiskLruCache;Ljava/lang/String;J)Lcom/biznessapps/utils/google/caching/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 759
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 766
    invoke-virtual {p0, p1}, Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    # invokes: Lcom/biznessapps/utils/google/caching/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/google/caching/DiskLruCache;->access$1600(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
