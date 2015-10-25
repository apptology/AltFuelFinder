.class Lcom/biznessapps/reseller/ResellerDashboardFragment$AppsContainer;
.super Ljava/lang/Object;
.source "ResellerDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/reseller/ResellerDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppsContainer"
.end annotation


# static fields
.field private static final APPS_NUMBER_LIMIT:I = 0x14


# instance fields
.field private apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reseller/ResellerInfo$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private count:I

.field final synthetic this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;


# direct methods
.method public constructor <init>(Lcom/biznessapps/reseller/ResellerDashboardFragment;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reseller/ResellerInfo$AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p2, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reseller/ResellerInfo$AppInfo;>;"
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$AppsContainer;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p2, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$AppsContainer;->apps:Ljava/util/List;

    .line 347
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$AppsContainer;->count:I

    .line 348
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x14

    if-eqz v0, :cond_0

    .line 349
    iget v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$AppsContainer;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$AppsContainer;->count:I

    .line 351
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$AppsContainer;->count:I

    return v0
.end method

.method public getList(I)Ljava/util/List;
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reseller/ResellerInfo$AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    mul-int/lit8 v1, p1, 0x14

    .line 355
    .local v1, "startIndex":I
    mul-int/lit8 v2, p1, 0x14

    add-int/lit8 v0, v2, 0x14

    .line 356
    .local v0, "endIndex":I
    iget-object v2, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$AppsContainer;->apps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 357
    iget-object v2, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$AppsContainer;->apps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 360
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$AppsContainer;->apps:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
