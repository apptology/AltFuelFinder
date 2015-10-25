.class Lcom/biznessapps/news/NewsFragment$4;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/news/NewsFragment;->updateList(Ljava/util/List;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/biznessapps/news/SearchEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/news/NewsFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/news/NewsFragment;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/biznessapps/news/NewsFragment$4;->this$0:Lcom/biznessapps/news/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/biznessapps/news/SearchEntity;Lcom/biznessapps/news/SearchEntity;)I
    .locals 5
    .param p1, "firstObj"    # Lcom/biznessapps/news/SearchEntity;
    .param p2, "secondObj"    # Lcom/biznessapps/news/SearchEntity;

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-virtual {p1}, Lcom/biznessapps/news/SearchEntity;->getDateTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/biznessapps/news/SearchEntity;->getDateTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    invoke-virtual {p1}, Lcom/biznessapps/news/SearchEntity;->getDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/biznessapps/news/SearchEntity;->getDateTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 250
    const/4 v0, 0x1

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p1}, Lcom/biznessapps/news/SearchEntity;->getDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/biznessapps/news/SearchEntity;->getDateTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 254
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 243
    check-cast p1, Lcom/biznessapps/news/SearchEntity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/biznessapps/news/SearchEntity;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/news/NewsFragment$4;->compare(Lcom/biznessapps/news/SearchEntity;Lcom/biznessapps/news/SearchEntity;)I

    move-result v0

    return v0
.end method
