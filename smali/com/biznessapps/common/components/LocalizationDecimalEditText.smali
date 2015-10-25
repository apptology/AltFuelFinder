.class public Lcom/biznessapps/common/components/LocalizationDecimalEditText;
.super Landroid/widget/EditText;
.source "LocalizationDecimalEditText.java"


# instance fields
.field private mDecimalFormat:Ljava/text/DecimalFormat;

.field private mDefaultWatcher:Landroid/text/TextWatcher;

.field private mWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;-><init>(Lcom/biznessapps/common/components/LocalizationDecimalEditText;)V

    iput-object v0, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->mDefaultWatcher:Landroid/text/TextWatcher;

    .line 32
    invoke-direct {p0}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->initComponent()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance v0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;-><init>(Lcom/biznessapps/common/components/LocalizationDecimalEditText;)V

    iput-object v0, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->mDefaultWatcher:Landroid/text/TextWatcher;

    .line 38
    invoke-direct {p0}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->initComponent()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    new-instance v0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;-><init>(Lcom/biznessapps/common/components/LocalizationDecimalEditText;)V

    iput-object v0, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->mDefaultWatcher:Landroid/text/TextWatcher;

    .line 45
    invoke-direct {p0}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->initComponent()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/common/components/LocalizationDecimalEditText;)Landroid/text/TextWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->mWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/common/components/LocalizationDecimalEditText;)Ljava/text/DecimalFormat;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->mDecimalFormat:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/common/components/LocalizationDecimalEditText;Ljava/lang/String;C)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/components/LocalizationDecimalEditText;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # C

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->getSymbolCount(Ljava/lang/String;C)I

    move-result v0

    return v0
.end method

.method private getSymbolCount(Ljava/lang/String;C)I
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "symbol"    # C

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "count":I
    if-eqz p1, :cond_1

    .line 141
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 142
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 141
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private initComponent()V
    .locals 2

    .prologue
    .line 65
    const/16 v1, 0x2002

    invoke-virtual {p0, v1}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->setInputType(I)V

    .line 68
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 69
    .local v0, "nf":Ljava/text/NumberFormat;
    check-cast v0, Ljava/text/DecimalFormat;

    .end local v0    # "nf":Ljava/text/NumberFormat;
    iput-object v0, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 71
    iget-object v1, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->mDefaultWatcher:Landroid/text/TextWatcher;

    invoke-super {p0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 72
    return-void
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 0
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->mWatcher:Landroid/text/TextWatcher;

    .line 50
    return-void
.end method

.method public getDecimalValue()D
    .locals 4

    .prologue
    .line 53
    const-wide/16 v0, 0x0

    .line 54
    .local v0, "doubleValue":D
    invoke-virtual {p0}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "str":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3, v2}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 60
    :goto_0
    return-wide v0

    .line 58
    :catch_0
    move-exception v3

    goto :goto_0
.end method
