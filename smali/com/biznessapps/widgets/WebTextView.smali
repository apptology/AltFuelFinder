.class public Lcom/biznessapps/widgets/WebTextView;
.super Landroid/widget/TextView;
.source "WebTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0}, Lcom/biznessapps/widgets/WebTextView;->init()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0}, Lcom/biznessapps/widgets/WebTextView;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0}, Lcom/biznessapps/widgets/WebTextView;->init()V

    .line 29
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/WebTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 33
    return-void
.end method


# virtual methods
.method public setHtml(Ljava/lang/String;)V
    .locals 3
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v1, Lcom/biznessapps/widgets/URLImageParser;

    invoke-virtual {p0}, Lcom/biznessapps/widgets/WebTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/biznessapps/widgets/URLImageParser;-><init>(Landroid/view/View;Landroid/content/Context;)V

    .line 37
    .local v1, "p":Lcom/biznessapps/widgets/URLImageParser;
    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    .line 38
    .local v0, "htmlSpan":Landroid/text/Spanned;
    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/WebTextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method
