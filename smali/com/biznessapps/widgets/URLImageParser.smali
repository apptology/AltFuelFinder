.class public Lcom/biznessapps/widgets/URLImageParser;
.super Ljava/lang/Object;
.source "URLImageParser.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/widgets/URLImageParser$ImageGetterAsyncTask;
    }
.end annotation


# instance fields
.field c:Landroid/content/Context;

.field container:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 0
    .param p1, "t"    # Landroid/view/View;
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/biznessapps/widgets/URLImageParser;->c:Landroid/content/Context;

    .line 28
    iput-object p1, p0, Lcom/biznessapps/widgets/URLImageParser;->container:Landroid/view/View;

    .line 29
    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v1, Lcom/biznessapps/widgets/URLDrawable;

    iget-object v2, p0, Lcom/biznessapps/widgets/URLImageParser;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/biznessapps/widgets/URLDrawable;-><init>(Landroid/content/res/Resources;)V

    .line 35
    .local v1, "drawable":Lcom/biznessapps/widgets/URLDrawable;
    new-instance v0, Lcom/biznessapps/widgets/URLImageParser$ImageGetterAsyncTask;

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/widgets/URLImageParser$ImageGetterAsyncTask;-><init>(Lcom/biznessapps/widgets/URLImageParser;Lcom/biznessapps/widgets/URLDrawable;)V

    .line 38
    .local v0, "asyncTask":Lcom/biznessapps/widgets/URLImageParser$ImageGetterAsyncTask;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/biznessapps/widgets/URLImageParser$ImageGetterAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 42
    return-object v1
.end method
