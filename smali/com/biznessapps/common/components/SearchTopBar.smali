.class public Lcom/biznessapps/common/components/SearchTopBar;
.super Ljava/lang/Object;
.source "SearchTopBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private screenListener:Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;

.field private searchCloseView:Landroid/widget/ImageView;

.field private searchEditText:Landroid/widget/EditText;

.field private searchIconView:Landroid/widget/ImageView;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;Lcom/biznessapps/api/UiSettings;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "searchBarRoot"    # Landroid/view/ViewGroup;
    .param p3, "loadDataRunnable"    # Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;
    .param p4, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/biznessapps/common/components/SearchTopBar;->context:Landroid/content/Context;

    .line 33
    sget v0, Lcom/biznessapps/layout/R$id;->search_icon:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/common/components/SearchTopBar;->searchIconView:Landroid/widget/ImageView;

    .line 34
    sget v0, Lcom/biznessapps/layout/R$id;->search_icon_close:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/common/components/SearchTopBar;->searchCloseView:Landroid/widget/ImageView;

    .line 35
    sget v0, Lcom/biznessapps/layout/R$id;->search_edit_view:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/common/components/SearchTopBar;->searchEditText:Landroid/widget/EditText;

    .line 36
    iget-object v0, p0, Lcom/biznessapps/common/components/SearchTopBar;->searchEditText:Landroid/widget/EditText;

    sget v1, Lcom/biznessapps/layout/R$string;->search:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 37
    sget v0, Lcom/biznessapps/layout/R$id;->tab_title_text:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/common/components/SearchTopBar;->titleTextView:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/biznessapps/common/components/SearchTopBar;->searchIconView:Landroid/widget/ImageView;

    new-instance v1, Lcom/biznessapps/common/components/SearchTopBar$1;

    invoke-direct {v1, p0, p1}, Lcom/biznessapps/common/components/SearchTopBar$1;-><init>(Lcom/biznessapps/common/components/SearchTopBar;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/biznessapps/common/components/SearchTopBar;->searchEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/biznessapps/common/components/SearchTopBar$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/biznessapps/common/components/SearchTopBar$2;-><init>(Lcom/biznessapps/common/components/SearchTopBar;Landroid/content/Context;Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;)V

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getOnEnterKeyListener(Ljava/lang/Runnable;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 59
    iget-object v0, p0, Lcom/biznessapps/common/components/SearchTopBar;->searchCloseView:Landroid/widget/ImageView;

    new-instance v1, Lcom/biznessapps/common/components/SearchTopBar$3;

    invoke-direct {v1, p0, p1, p3}, Lcom/biznessapps/common/components/SearchTopBar$3;-><init>(Lcom/biznessapps/common/components/SearchTopBar;Landroid/content/Context;Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {p4}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/common/components/SearchTopBar;->searchIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {p4}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/common/components/SearchTopBar;->searchCloseView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 78
    new-instance v0, Lcom/biznessapps/common/components/SearchTopBar$4;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/components/SearchTopBar$4;-><init>(Lcom/biznessapps/common/components/SearchTopBar;)V

    iput-object v0, p0, Lcom/biznessapps/common/components/SearchTopBar;->screenListener:Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/common/components/SearchTopBar;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/components/SearchTopBar;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/biznessapps/common/components/SearchTopBar;->searchEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/common/components/SearchTopBar;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/components/SearchTopBar;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/biznessapps/common/components/SearchTopBar;->searchCloseView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/common/components/SearchTopBar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/components/SearchTopBar;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/biznessapps/common/components/SearchTopBar;->titleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/common/components/SearchTopBar;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/components/SearchTopBar;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/biznessapps/common/components/SearchTopBar;->searchIconView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public closeKeyboard()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/biznessapps/common/components/SearchTopBar;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/biznessapps/common/components/SearchTopBar;->searchEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->closeKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 94
    return-void
.end method

.method public getScreenListener()Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/biznessapps/common/components/SearchTopBar;->screenListener:Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;

    return-object v0
.end method
