.class public Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;
.super Ljava/lang/Object;
.source "GeoFencingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/pushnotifications/GeoFencingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeoPoint"
.end annotation


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;->x:D

    .line 16
    iput-wide p3, p0, Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;->y:D

    .line 17
    return-void
.end method

.method public static createInstance(Ljava/lang/String;)Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xb

    if-ge v5, v6, :cond_0

    .line 22
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "str length < 17 or > 21"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 23
    :cond_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-eq v5, v6, :cond_2

    .line 24
    :cond_1
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "str does not match pattern \'(.*)\'"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 25
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 27
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "twoNumbersAsStrings":[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    .line 29
    :cond_3
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "str does not match pattern \'(number,number)\'"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 31
    :cond_4
    aget-object v5, v0, v7

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 32
    .local v1, "x":D
    aget-object v5, v0, v8

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 34
    .local v3, "y":D
    new-instance v5, Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;-><init>(DD)V

    return-object v5
.end method

.method public static createList(Ljava/lang/String;)[Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 39
    const-string v6, " "

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "coordsAsStrings":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 42
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "str does not match pattern \'(number,number) (number,number) ... (number,number)\'"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 43
    :cond_0
    array-length v6, v1

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    .line 44
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "str contains 3 points only"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 46
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;>;"
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 48
    .local v4, "onePointAsString":Ljava/lang/String;
    invoke-static {v4}, Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;->createInstance(Ljava/lang/String;)Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v4    # "onePointAsString":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    new-array v6, v6, [Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;

    return-object v6
.end method
