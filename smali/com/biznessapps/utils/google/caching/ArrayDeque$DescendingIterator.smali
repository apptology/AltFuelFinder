.class Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;
.super Ljava/lang/Object;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/utils/google/caching/ArrayDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private cursor:I

.field private fence:I

.field private lastRet:I

.field final synthetic this$0:Lcom/biznessapps/utils/google/caching/ArrayDeque;


# direct methods
.method private constructor <init>(Lcom/biznessapps/utils/google/caching/ArrayDeque;)V
    .locals 1

    .prologue
    .line 663
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>.DescendingIterator;"
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->this$0:Lcom/biznessapps/utils/google/caching/ArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->this$0:Lcom/biznessapps/utils/google/caching/ArrayDeque;

    # getter for: Lcom/biznessapps/utils/google/caching/ArrayDeque;->tail:I
    invoke-static {v0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->access$300(Lcom/biznessapps/utils/google/caching/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->cursor:I

    .line 670
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->this$0:Lcom/biznessapps/utils/google/caching/ArrayDeque;

    # getter for: Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I
    invoke-static {v0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->access$200(Lcom/biznessapps/utils/google/caching/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->fence:I

    .line 671
    const/4 v0, -0x1

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->lastRet:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/utils/google/caching/ArrayDeque;Lcom/biznessapps/utils/google/caching/ArrayDeque$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/utils/google/caching/ArrayDeque;
    .param p2, "x1"    # Lcom/biznessapps/utils/google/caching/ArrayDeque$1;

    .prologue
    .line 663
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>.DescendingIterator;"
    invoke-direct {p0, p1}, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;-><init>(Lcom/biznessapps/utils/google/caching/ArrayDeque;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 674
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>.DescendingIterator;"
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->cursor:I

    iget v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->fence:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 678
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>.DescendingIterator;"
    iget v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->cursor:I

    iget v2, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->fence:I

    if-ne v1, v2, :cond_0

    .line 679
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 680
    :cond_0
    iget v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->this$0:Lcom/biznessapps/utils/google/caching/ArrayDeque;

    # getter for: Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->access$400(Lcom/biznessapps/utils/google/caching/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->cursor:I

    .line 681
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->this$0:Lcom/biznessapps/utils/google/caching/ArrayDeque;

    # getter for: Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->access$400(Lcom/biznessapps/utils/google/caching/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->cursor:I

    aget-object v0, v1, v2

    .line 682
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->this$0:Lcom/biznessapps/utils/google/caching/ArrayDeque;

    # getter for: Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I
    invoke-static {v1}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->access$200(Lcom/biznessapps/utils/google/caching/ArrayDeque;)I

    move-result v1

    iget v2, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->fence:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_2

    .line 683
    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 684
    :cond_2
    iget v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->cursor:I

    iput v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->lastRet:I

    .line 685
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 689
    .local p0, "this":Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;, "Lcom/biznessapps/utils/google/caching/ArrayDeque<TE;>.DescendingIterator;"
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->lastRet:I

    if-gez v0, :cond_0

    .line 690
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->this$0:Lcom/biznessapps/utils/google/caching/ArrayDeque;

    iget v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->lastRet:I

    # invokes: Lcom/biznessapps/utils/google/caching/ArrayDeque;->delete(I)Z
    invoke-static {v0, v1}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->access$500(Lcom/biznessapps/utils/google/caching/ArrayDeque;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 692
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->this$0:Lcom/biznessapps/utils/google/caching/ArrayDeque;

    # getter for: Lcom/biznessapps/utils/google/caching/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->access$400(Lcom/biznessapps/utils/google/caching/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->cursor:I

    .line 693
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->this$0:Lcom/biznessapps/utils/google/caching/ArrayDeque;

    # getter for: Lcom/biznessapps/utils/google/caching/ArrayDeque;->head:I
    invoke-static {v0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->access$200(Lcom/biznessapps/utils/google/caching/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->fence:I

    .line 695
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ArrayDeque$DescendingIterator;->lastRet:I

    .line 696
    return-void
.end method
