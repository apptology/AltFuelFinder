.class public Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;
.super Ljava/lang/Object;
.source "SearchTopBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/components/SearchTopBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchDataRunnable"
.end annotation


# instance fields
.field private searchQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSearchQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchQuery"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;->searchQuery:Ljava/lang/String;

    .line 106
    return-void
.end method
