.class public Lcom/biznessapps/more/TabManager;
.super Ljava/lang/Object;
.source "TabManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/more/TabManager$1;,
        Lcom/biznessapps/more/TabManager$TabManagerHolder;
    }
.end annotation


# instance fields
.field private moreTabsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/api/navigation/TabButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/more/TabManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/more/TabManager$1;

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/biznessapps/more/TabManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/biznessapps/more/TabManager;
    .locals 1

    .prologue
    .line 16
    # getter for: Lcom/biznessapps/more/TabManager$TabManagerHolder;->instance:Lcom/biznessapps/more/TabManager;
    invoke-static {}, Lcom/biznessapps/more/TabManager$TabManagerHolder;->access$100()Lcom/biznessapps/more/TabManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMoreTabsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/api/navigation/TabButton;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/biznessapps/more/TabManager;->moreTabsList:Ljava/util/List;

    return-object v0
.end method

.method public setMoreTabsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/api/navigation/TabButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "moreTabsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/api/navigation/TabButton;>;"
    iput-object p1, p0, Lcom/biznessapps/more/TabManager;->moreTabsList:Ljava/util/List;

    .line 28
    return-void
.end method
