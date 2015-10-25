.class public Lcom/braintreepayments/cardform/utils/CardUtils;
.super Ljava/lang/Object;
.source "CardUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLuhnValid(Ljava/lang/String;)Z
    .locals 12
    .param p0, "cardNumber"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 18
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 19
    .local v6, "reversed":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 20
    .local v4, "len":I
    const/4 v5, 0x0

    .line 21
    .local v5, "oddSum":I
    const/4 v2, 0x0

    .line 22
    .local v2, "evenSum":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 23
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 24
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_0

    .line 25
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Not a digit: \'%s\'"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 27
    :cond_0
    const/16 v9, 0xa

    invoke-static {v0, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 28
    .local v1, "digit":I
    rem-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_1

    .line 29
    add-int/2addr v5, v1

    .line 22
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31
    :cond_1
    div-int/lit8 v9, v1, 0x5

    mul-int/lit8 v10, v1, 0x2

    rem-int/lit8 v10, v10, 0xa

    add-int/2addr v9, v10

    add-int/2addr v2, v9

    goto :goto_1

    .line 34
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_2
    add-int v9, v5, v2

    rem-int/lit8 v9, v9, 0xa

    if-nez v9, :cond_3

    :goto_2
    return v7

    :cond_3
    move v7, v8

    goto :goto_2
.end method
