.class public Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "ObservableHorizontalScrollView.java"


# instance fields
.field private scrollViewListener:Lcom/biznessapps/golfcourse/HorizontalScrollViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;->scrollViewListener:Lcom/biznessapps/golfcourse/HorizontalScrollViewListener;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;->scrollViewListener:Lcom/biznessapps/golfcourse/HorizontalScrollViewListener;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;->scrollViewListener:Lcom/biznessapps/golfcourse/HorizontalScrollViewListener;

    .line 22
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "oldX"    # I
    .param p4, "oldY"    # I

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 35
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;->scrollViewListener:Lcom/biznessapps/golfcourse/HorizontalScrollViewListener;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;->scrollViewListener:Lcom/biznessapps/golfcourse/HorizontalScrollViewListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/biznessapps/golfcourse/HorizontalScrollViewListener;->onScrollChanged(Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;IIII)V

    .line 38
    :cond_0
    return-void
.end method

.method public setScrollViewListener(Lcom/biznessapps/golfcourse/HorizontalScrollViewListener;)V
    .locals 0
    .param p1, "scrollViewListener"    # Lcom/biznessapps/golfcourse/HorizontalScrollViewListener;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;->scrollViewListener:Lcom/biznessapps/golfcourse/HorizontalScrollViewListener;

    .line 30
    return-void
.end method
