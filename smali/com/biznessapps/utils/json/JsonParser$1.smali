.class final Lcom/biznessapps/utils/json/JsonParser$1;
.super Ljava/lang/Object;
.source "JsonParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/utils/json/JsonParser;->parseActivitiesList(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/biznessapps/coupons/ActivityEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/biznessapps/coupons/ActivityEntity;Lcom/biznessapps/coupons/ActivityEntity;)I
    .locals 5
    .param p1, "firstObj"    # Lcom/biznessapps/coupons/ActivityEntity;
    .param p2, "secondObj"    # Lcom/biznessapps/coupons/ActivityEntity;

    .prologue
    const/4 v0, 0x0

    .line 1807
    invoke-virtual {p1}, Lcom/biznessapps/coupons/ActivityEntity;->getDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/biznessapps/coupons/ActivityEntity;->getDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1815
    :cond_0
    :goto_0
    return v0

    .line 1810
    :cond_1
    invoke-virtual {p1}, Lcom/biznessapps/coupons/ActivityEntity;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/biznessapps/coupons/ActivityEntity;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 1811
    const/4 v0, 0x1

    goto :goto_0

    .line 1812
    :cond_2
    invoke-virtual {p1}, Lcom/biznessapps/coupons/ActivityEntity;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/biznessapps/coupons/ActivityEntity;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1815
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1804
    check-cast p1, Lcom/biznessapps/coupons/ActivityEntity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/biznessapps/coupons/ActivityEntity;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/utils/json/JsonParser$1;->compare(Lcom/biznessapps/coupons/ActivityEntity;Lcom/biznessapps/coupons/ActivityEntity;)I

    move-result v0

    return v0
.end method
