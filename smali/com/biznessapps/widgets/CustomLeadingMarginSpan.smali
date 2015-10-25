.class public Lcom/biznessapps/widgets/CustomLeadingMarginSpan;
.super Ljava/lang/Object;
.source "CustomLeadingMarginSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;


# instance fields
.field private lines:I

.field private margin:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "lines"    # I
    .param p2, "margin"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p2, p0, Lcom/biznessapps/widgets/CustomLeadingMarginSpan;->margin:I

    .line 14
    iput p1, p0, Lcom/biznessapps/widgets/CustomLeadingMarginSpan;->lines:I

    .line 15
    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "layout"    # Landroid/text/Layout;

    .prologue
    .line 35
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1
    .param p1, "first"    # Z

    .prologue
    .line 20
    if-eqz p1, :cond_0

    .line 25
    iget v0, p0, Lcom/biznessapps/widgets/CustomLeadingMarginSpan;->margin:I

    .line 28
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLeadingMarginLineCount()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/biznessapps/widgets/CustomLeadingMarginSpan;->lines:I

    return v0
.end method
