.class public Lcom/biznessapps/utils/google/caching/ArrayDeque;
.super Ljava/util/AbstractCollection;
.source "ArrayDeque.java"

# interfaces
.implements Lcom/biznessapps/utils/google/caching/Deque;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/utils/google/caching/ArrayDeque$1;,
        Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;,
        Lcom/biznessapps/utils/google/caching/ArrayDeque$DeqIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Lcom/biznessapps/utils/google/caching/Deque",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MIN_INITIAL_CAPACITY:I = 0x8

.field private static final serialVersionUID:J = 0x207cda2e240da08bL


# instance fields
.field private transient elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private transient head:I

.field private transient tail:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/biznessapps/utils/google/caching/ArrayDeque;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 199
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 200
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "numElements"    # I

    .prologue
    .line 209
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 210
    invoke-direct {p0, p1}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->allocateElements(I)V

    .line 211
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 224
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->allocateElements(I)V

    .line 225
    invoke-virtual {p0, p1}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 226
    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/utils/google/caching/ArrayDeque;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/utils/google/caching/ArrayDeque;

    .prologue
    .line 94
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    return v0
.end method

.method static synthetic access$300(Lcom/biznessapps/utils/google/caching/ArrayDeque;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/utils/google/caching/ArrayDeque;

    .prologue
    .line 94
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    return v0
.end method

.method static synthetic access$400(Lcom/biznessapps/utils/google/caching/ArrayDeque;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/utils/google/caching/ArrayDeque;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/utils/google/caching/ArrayDeque;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/utils/google/caching/ArrayDeque;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->delete(I)Z

    move-result v0

    return v0
.end method

.method private allocateElements(I)V
    .locals 2
    .param p1, "numElements"    # I

    .prologue
    .line 137
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    const/16 v0, 0x8

    .line 140
    .local v0, "initialCapacity":I
    if-lt p1, v0, :cond_0

    .line 141
    move v0, p1

    .line 142
    ushr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 143
    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 144
    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 145
    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 146
    ushr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 147
    add-int/lit8 v0, v0, 0x1

    .line 149
    if-gez v0, :cond_0

    .line 150
    ushr-int/lit8 v0, v0, 0x1

    .line 152
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 153
    return-void
.end method

.method private checkInvariants()V
    .locals 3

    .prologue
    .line 525
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    sget-boolean v0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 526
    :cond_0
    sget-boolean v0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    iget v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    .line 529
    :cond_1
    sget-boolean v0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 526
    :cond_2
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 530
    :cond_4
    return-void
.end method

.method private copyElements([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    .line 184
    iget v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    iget v2, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    if-ge v1, v2, :cond_1

    .line 185
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->size()I

    move-result v3

    invoke-static {v1, v2, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    :cond_0
    :goto_0
    return-object p1

    .line 186
    :cond_1
    iget v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    iget v2, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    if-le v1, v2, :cond_0

    .line 187
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    sub-int v0, v1, v2

    .line 188
    .local v0, "headPortionLen":I
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    invoke-static {v1, v2, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    invoke-static {v1, v4, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private delete(I)Z
    .locals 10
    .param p1, "i"    # I

    .prologue
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 543
    invoke-direct {p0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->checkInvariants()V

    .line 544
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 545
    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v8, v1

    add-int/lit8 v4, v8, -0x1

    .line 546
    .local v4, "mask":I
    iget v3, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    .line 547
    .local v3, "h":I
    iget v5, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    .line 548
    .local v5, "t":I
    sub-int v8, p1, v3

    and-int v2, v8, v4

    .line 549
    .local v2, "front":I
    sub-int v8, v5, p1

    and-int v0, v8, v4

    .line 552
    .local v0, "back":I
    sub-int v8, v5, v3

    and-int/2addr v8, v4

    if-lt v2, v8, :cond_0

    .line 553
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 556
    :cond_0
    if-ge v2, v0, :cond_2

    .line 557
    if-gt v3, p1, :cond_1

    .line 558
    add-int/lit8 v7, v3, 0x1

    invoke-static {v1, v3, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 564
    :goto_0
    const/4 v7, 0x0

    aput-object v7, v1, v3

    .line 565
    add-int/lit8 v7, v3, 0x1

    and-int/2addr v7, v4

    iput v7, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    .line 577
    :goto_1
    return v6

    .line 560
    :cond_1
    invoke-static {v1, v6, v1, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    aget-object v7, v1, v4

    aput-object v7, v1, v6

    .line 562
    add-int/lit8 v7, v3, 0x1

    sub-int v8, v4, v3

    invoke-static {v1, v3, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 568
    :cond_2
    if-ge p1, v5, :cond_3

    .line 569
    add-int/lit8 v6, p1, 0x1

    invoke-static {v1, v6, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    :goto_2
    move v6, v7

    .line 577
    goto :goto_1

    .line 572
    :cond_3
    add-int/lit8 v8, p1, 0x1

    sub-int v9, v4, p1

    invoke-static {v1, v8, v1, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    aget-object v8, v1, v6

    aput-object v8, v1, v4

    .line 574
    invoke-static {v1, v7, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    add-int/lit8 v6, v5, -0x1

    and-int/2addr v6, v4

    iput v6, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    goto :goto_2
.end method

.method private doubleCapacity()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    const/4 v7, 0x0

    .line 161
    sget-boolean v5, Lcom/biznessapps/utils/google/caching/ArrayDeque;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget v5, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    iget v6, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    if-eq v5, v6, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 162
    :cond_0
    iget v3, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    .line 163
    .local v3, "p":I
    iget-object v5, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v5

    .line 164
    .local v1, "n":I
    sub-int v4, v1, v3

    .line 165
    .local v4, "r":I
    shl-int/lit8 v2, v1, 0x1

    .line 166
    .local v2, "newCapacity":I
    if-gez v2, :cond_1

    .line 167
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Sorry, deque too big"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 168
    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    .line 169
    .local v0, "a":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v5, v3, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget-object v5, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v5, v7, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    check-cast v0, [Ljava/lang/Object;

    .end local v0    # "a":[Ljava/lang/Object;
    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 172
    iput v7, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    .line 173
    iput v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    .line 174
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 877
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 880
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 881
    .local v1, "size":I
    invoke-direct {p0, v1}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->allocateElements(I)V

    .line 882
    const/4 v2, 0x0

    iput v2, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    .line 883
    iput v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    .line 886
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 887
    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 886
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 888
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 863
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 866
    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 867
    .local v1, "mask":I
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    if-eq v0, v2, :cond_0

    .line 868
    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 867
    add-int/lit8 v2, v0, 0x1

    and-int v0, v2, v1

    goto :goto_0

    .line 869
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 422
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 240
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    aput-object p1, v0, v1

    .line 242
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    iget v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_1

    .line 243
    invoke-direct {p0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->doubleCapacity()V

    .line 244
    :cond_1
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 256
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    aput-object p1, v0, v1

    .line 258
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    iget v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    if-ne v0, v1, :cond_1

    .line 259
    invoke-direct {p0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->doubleCapacity()V

    .line 260
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 743
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    .line 744
    .local v0, "h":I
    iget v3, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    .line 745
    .local v3, "t":I
    if-eq v0, v3, :cond_1

    .line 746
    const/4 v4, 0x0

    iput v4, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    iput v4, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    .line 747
    move v1, v0

    .line 748
    .local v1, "i":I
    iget-object v4, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    .line 750
    .local v2, "mask":I
    :cond_0
    iget-object v4, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 751
    add-int/lit8 v4, v1, 0x1

    and-int v1, v4, v2

    .line 752
    if-ne v1, v3, :cond_0

    .line 754
    .end local v1    # "i":I
    .end local v2    # "mask":I
    :cond_1
    return-void
.end method

.method public clone()Lcom/biznessapps/utils/google/caching/ArrayDeque;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/biznessapps/utils/google/caching/ArrayDeque",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 832
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/utils/google/caching/ArrayDeque;

    .line 833
    .local v5, "result":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .local v6, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 835
    .local v2, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 837
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    iput-object v7, v5, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    return-object v5

    .line 842
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "result":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    .end local v6    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    :catch_0
    move-exception v1

    .line 843
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->clone()Lcom/biznessapps/utils/google/caching/ArrayDeque;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    const/4 v3, 0x0

    .line 708
    if-nez p1, :cond_1

    .line 718
    :cond_0
    :goto_0
    return v3

    .line 710
    :cond_1
    iget-object v4, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 711
    .local v1, "mask":I
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    .line 713
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v4, v0

    .local v2, "x":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_0

    .line 714
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 715
    const/4 v3, 0x1

    goto :goto_0

    .line 716
    :cond_2
    add-int/lit8 v4, v0, 0x1

    and-int v0, v4, v1

    goto :goto_1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 614
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    new-instance v0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;-><init>(Lcom/biznessapps/utils/google/caching/ArrayDeque;Lcom/biznessapps/utils/google/caching/ArrayDeque$1;)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    aget-object v0, v1, v2

    .line 331
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 332
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 333
    :cond_0
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aget-object v0, v1, v2

    .line 341
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 342
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 343
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 598
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    iget v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 610
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    new-instance v0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DeqIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/utils/google/caching/ArrayDeque$DeqIterator;-><init>(Lcom/biznessapps/utils/google/caching/ArrayDeque;Lcom/biznessapps/utils/google/caching/ArrayDeque$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 436
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    const/4 v2, 0x0

    .line 307
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    .line 308
    .local v0, "h":I
    iget-object v3, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 309
    .local v1, "result":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    move-object v1, v2

    .line 313
    .end local v1    # "result":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v1

    .line 311
    .restart local v1    # "result":Ljava/lang/Object;, "TE;"
    :cond_0
    iget-object v3, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 312
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    const/4 v2, 0x0

    .line 317
    iget v3, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    and-int v1, v3, v4

    .line 318
    .local v1, "t":I
    iget-object v3, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v0, v3, v1

    .line 319
    .local v0, "result":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    move-object v0, v2

    .line 323
    .end local v0    # "result":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v0

    .line 321
    .restart local v0    # "result":Ljava/lang/Object;, "TE;"
    :cond_0
    iget-object v3, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 322
    iput v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    goto :goto_0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 507
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 508
    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 735
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    invoke-virtual {p0, p1}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    .line 291
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 292
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 293
    :cond_0
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    const/4 v3, 0x0

    .line 367
    if-nez p1, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v3

    .line 369
    :cond_1
    iget-object v4, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 370
    .local v1, "mask":I
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    .line 372
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v4, v0

    .local v2, "x":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_0

    .line 373
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 374
    invoke-direct {p0, v0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->delete(I)Z

    .line 375
    const/4 v3, 0x1

    goto :goto_0

    .line 377
    :cond_2
    add-int/lit8 v4, v0, 0x1

    and-int v0, v4, v1

    goto :goto_1
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .line 301
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 302
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 303
    :cond_0
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    const/4 v3, 0x0

    .line 395
    if-nez p1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v3

    .line 397
    :cond_1
    iget-object v4, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 398
    .local v1, "mask":I
    iget v4, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    add-int/lit8 v4, v4, -0x1

    and-int v0, v4, v1

    .line 400
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v4, v0

    .local v2, "x":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_0

    .line 401
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 402
    invoke-direct {p0, v0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->delete(I)Z

    .line 403
    const/4 v3, 0x1

    goto :goto_0

    .line 405
    :cond_2
    add-int/lit8 v4, v0, -0x1

    and-int v0, v4, v1

    goto :goto_1
.end method

.method public size()I
    .locals 2

    .prologue
    .line 589
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I

    iget v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 770
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->copyElements([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 812
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->size()I

    move-result v0

    .line 813
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 814
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object p1, v1

    check-cast p1, [Ljava/lang/Object;

    .line 816
    :cond_0
    invoke-direct {p0, p1}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->copyElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 817
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 818
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 819
    :cond_1
    return-object p1
.end method
