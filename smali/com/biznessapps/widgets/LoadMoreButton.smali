.class public Lcom/biznessapps/widgets/LoadMoreButton;
.super Landroid/widget/Button;
.source "LoadMoreButton.java"


# static fields
.field public static final CHUNK_COUNT:I = 0x14


# instance fields
.field private canShow:Z

.field private offset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/widgets/LoadMoreButton;->offset:I

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/widgets/LoadMoreButton;->canShow:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/widgets/LoadMoreButton;->offset:I

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/widgets/LoadMoreButton;->canShow:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/widgets/LoadMoreButton;->offset:I

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/widgets/LoadMoreButton;->canShow:Z

    .line 26
    return-void
.end method


# virtual methods
.method public canShow(Z)V
    .locals 0
    .param p1, "canShow"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/biznessapps/widgets/LoadMoreButton;->canShow:Z

    .line 34
    return-void
.end method

.method public canShow()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/biznessapps/widgets/LoadMoreButton;->canShow:Z

    return v0
.end method

.method public clearOffset()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/widgets/LoadMoreButton;->offset:I

    .line 50
    return-void
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/biznessapps/widgets/LoadMoreButton;->offset:I

    return v0
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/biznessapps/widgets/LoadMoreButton;->offset:I

    .line 42
    return-void
.end method

.method public updateOffset()V
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/biznessapps/widgets/LoadMoreButton;->offset:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/biznessapps/widgets/LoadMoreButton;->offset:I

    .line 46
    return-void
.end method
