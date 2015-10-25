.class public Lcom/biznessapps/common/SerializableSparseArray;
.super Landroid/util/SparseArray;
.source "SerializableSparseArray.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/SparseArray",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xb6fa29ec742fa30L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    .local p0, "this":Lcom/biznessapps/common/SerializableSparseArray;, "Lcom/biznessapps/common/SerializableSparseArray<TE;>;"
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 22
    .local p0, "this":Lcom/biznessapps/common/SerializableSparseArray;, "Lcom/biznessapps/common/SerializableSparseArray<TE;>;"
    invoke-direct {p0, p1}, Landroid/util/SparseArray;-><init>(I)V

    .line 23
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/biznessapps/common/SerializableSparseArray;, "Lcom/biznessapps/common/SerializableSparseArray<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    .line 71
    .local v0, "data":[Ljava/lang/Object;
    array-length v3, v0

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 72
    aget-object v3, v0, v1

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 73
    .local v2, "pair":[Ljava/lang/Object;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-virtual {p0, v3, v4}, Lcom/biznessapps/common/SerializableSparseArray;->append(ILjava/lang/Object;)V

    .line 71
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 75
    .end local v2    # "pair":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/biznessapps/common/SerializableSparseArray;, "Lcom/biznessapps/common/SerializableSparseArray<TE;>;"
    invoke-virtual {p0}, Lcom/biznessapps/common/SerializableSparseArray;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/Object;

    .line 45
    .local v0, "data":[Ljava/lang/Object;
    array-length v3, v0

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 46
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, v1}, Lcom/biznessapps/common/SerializableSparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v1}, Lcom/biznessapps/common/SerializableSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 47
    .local v2, "pair":[Ljava/lang/Object;
    aput-object v2, v0, v1

    .line 45
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 49
    .end local v2    # "pair":[Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 50
    return-void
.end method
