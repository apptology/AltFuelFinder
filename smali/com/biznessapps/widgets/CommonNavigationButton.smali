.class public Lcom/biznessapps/widgets/CommonNavigationButton;
.super Landroid/widget/Button;
.source "CommonNavigationButton.java"

# interfaces
.implements Lcom/biznessapps/widgets/CommonStyleableComponent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/biznessapps/widgets/CommonNavigationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/biznessapps/widgets/CommonNavigationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0, p2}, Lcom/biznessapps/widgets/CommonNavigationButton;->initAttrs(Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/biznessapps/widgets/CommonNavigationButton;->initUI()V

    .line 30
    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    return-void
.end method

.method private initUI()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/biznessapps/widgets/CommonNavigationButton;->updateUI()V

    .line 42
    return-void
.end method

.method private updateUI()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method


# virtual methods
.method public applyStyle(Lcom/biznessapps/api/UiSettings;)V
    .locals 2
    .param p1, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/biznessapps/widgets/CommonNavigationButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideMediumButtonColor(ILandroid/graphics/drawable/Drawable;)V

    .line 35
    return-void
.end method
