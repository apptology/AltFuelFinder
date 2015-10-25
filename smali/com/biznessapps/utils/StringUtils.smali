.class public Lcom/biznessapps/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final MUSIC_SONG_FORMAT:Ljava/lang/String; = "%d:%02d"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs checkIfAllEmpty([Ljava/lang/String;)Z
    .locals 6
    .param p0, "checkedValues"    # [Ljava/lang/String;

    .prologue
    .line 168
    const/4 v0, 0x1

    .line 169
    .local v0, "areEmpty":Z
    if-eqz p0, :cond_0

    array-length v5, p0

    if-lez v5, :cond_0

    .line 170
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 171
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 172
    const/4 v0, 0x0

    .line 177
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    return v0

    .line 170
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "value":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static varargs checkTextFieldsOnEmpty([Ljava/lang/String;)Z
    .locals 6
    .param p0, "checkedValues"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 71
    array-length v5, p0

    if-nez v5, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v4

    .line 75
    :cond_1
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 76
    .local v1, "checkedValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 77
    const/4 v4, 0x1

    goto :goto_0

    .line 75
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "primaryStr"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v3, 0x0

    .line 110
    .local v3, "result":Ljava/lang/String;
    const/4 v4, 0x0

    .line 111
    .local v4, "s":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 112
    const-string v6, ""

    .line 138
    :goto_0
    return-object v6

    .line 115
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v4    # "s":Ljava/lang/String;
    .local v5, "s":Ljava/lang/String;
    :try_start_1
    const-string v6, "!"

    const-string v7, "%21"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 117
    .end local v5    # "s":Ljava/lang/String;
    .restart local v4    # "s":Ljava/lang/String;
    :try_start_2
    const-string v6, "#"

    const-string v7, "%23"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    :goto_1
    move-object v6, v3

    .line 138
    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    :try_start_3
    const-string v6, "%"

    const-string v7, "%25"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "decodedString":Ljava/lang/String;
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    goto :goto_1

    .line 131
    .end local v0    # "decodedString":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 135
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    move-object v3, p0

    goto :goto_1

    .line 120
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v5    # "s":Ljava/lang/String;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5    # "s":Ljava/lang/String;
    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_2
.end method

.method public static isCorrectEmail(Ljava/lang/String;)Z
    .locals 1
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCorrectUrl(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 93
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    const/4 v1, 0x1

    .line 96
    :goto_0
    return v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmptyValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/biznessapps/utils/StringUtils;->isNotEmptyValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 29
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 32
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmptyResponse(Ljava/lang/String;)Z
    .locals 2
    .param p0, "response"    # Ljava/lang/String;

    .prologue
    .line 56
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmptyValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 41
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "secs"    # J

    .prologue
    .line 148
    const-wide/16 v0, 0xa

    .line 149
    .local v0, "MINUTES_LIMIT":J
    const/16 v2, 0x3c

    .line 152
    .local v2, "SECS_IN_MINUTE":I
    int-to-long v5, v2

    div-long v3, p1, v5

    .line 155
    .local v3, "minutes":J
    int-to-long v5, v2

    rem-long/2addr p1, v5

    .line 157
    cmp-long v5, v3, v0

    if-lez v5, :cond_0

    .line 158
    const-string v5, ""

    .line 160
    :goto_0
    return-object v5

    :cond_0
    const-string v5, "%d:%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
