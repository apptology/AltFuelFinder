.class public Lcom/biznessapps/news/RssPullParser;
.super Ljava/lang/Object;
.source "RssPullParser.java"


# static fields
.field static final CHANNEL:Ljava/lang/String; = "channel"

.field static final DESCRIPTION:Ljava/lang/String; = "description"

.field static final ITEM:Ljava/lang/String; = "item"

.field static final LINK:Ljava/lang/String; = "link"

.field static final PUB_DATE:Ljava/lang/String; = "pubDate"

.field static final TAG:Ljava/lang/String; = "RssPullParser"

.field static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field private currentMessage:Lcom/biznessapps/news/SearchEntity;

.field private is:Ljava/io/InputStream;

.field private parser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/biznessapps/news/RssPullParser;->is:Ljava/io/InputStream;

    .line 27
    return-void
.end method

.method private parseDescriptionHtml(Ljava/lang/String;Lcom/biznessapps/news/SearchEntity;)V
    .locals 12
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/biznessapps/news/SearchEntity;

    .prologue
    .line 137
    if-nez p1, :cond_1

    .line 138
    const-string v10, "RssPullParser"

    const-string v11, "description is null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const-string v10, "<td "

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 143
    .local v1, "index":I
    if-gez v1, :cond_2

    .line 144
    const-string v10, "RssPullParser"

    const-string v11, "incorrect description structure"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_2
    const-string v10, "<td "

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 149
    if-gez v1, :cond_3

    .line 150
    const-string v10, "RssPullParser"

    const-string v11, "incorrect description structure"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_3
    const-string v10, "</div><div"

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 155
    if-gez v1, :cond_4

    .line 156
    const-string v10, "RssPullParser"

    const-string v11, "incorrect description structure"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_4
    add-int/lit8 v1, v1, 0xa

    .line 161
    const-string v10, ">"

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 162
    if-gez v1, :cond_5

    .line 163
    const-string v10, "RssPullParser"

    const-string v11, "incorrect description structure"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_5
    add-int/lit8 v4, v1, 0x1

    .line 169
    .local v4, "startIndex":I
    const-string v10, "</div>"

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 170
    if-gez v1, :cond_6

    .line 171
    const-string v10, "RssPullParser"

    const-string v11, "incorrect description structure"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_6
    move v5, v1

    .line 176
    .local v5, "stopIndex":I
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 179
    .local v6, "text":Ljava/lang/String;
    const-string v10, "<font"

    invoke-virtual {v6, v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 180
    const-string v10, "<font"

    invoke-virtual {v6, v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 181
    const-string v10, ">"

    invoke-virtual {v6, v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 182
    const-string v10, "</font>"

    invoke-virtual {v6, v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 183
    .local v0, "endIndex":I
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v6, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "name":Ljava/lang/String;
    const-string v10, "\">"

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 185
    .local v3, "nameIndex":I
    if-lez v3, :cond_7

    .line 186
    add-int/lit8 v10, v3, 0x2

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 188
    :cond_7
    invoke-virtual {p2, v2}, Lcom/biznessapps/news/SearchEntity;->setName(Ljava/lang/String;)V

    .line 191
    const-string v10, "<font"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 192
    const-string v10, "<font"

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 193
    const-string v10, "<font"

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 194
    const-string v10, ">"

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 195
    add-int/lit8 v4, v1, 0x1

    .line 196
    const-string v10, "</font>"

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 197
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v6, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 198
    invoke-virtual {p2, v6}, Lcom/biznessapps/news/SearchEntity;->setText(Ljava/lang/String;)V

    .line 201
    const-string v10, "<img src=\""

    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 202
    const-string v10, "<img src=\""

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v9, v10, 0xc

    .line 203
    .local v9, "urlStartIndex":I
    const-string v10, "\""

    invoke-virtual {p1, v10, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 204
    .local v8, "urlEndIndex":I
    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 205
    .local v7, "url":Ljava/lang/String;
    invoke-virtual {p2, v7}, Lcom/biznessapps/news/SearchEntity;->setImageUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public next()Lcom/biznessapps/news/SearchEntity;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v3, 0x0

    .line 60
    .local v3, "result":Lcom/biznessapps/news/SearchEntity;
    iget-object v4, p0, Lcom/biznessapps/news/RssPullParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 61
    .local v1, "eventType":I
    const/4 v0, 0x0

    .line 62
    .local v0, "done":Z
    :goto_0
    const/4 v4, 0x1

    if-eq v1, v4, :cond_6

    if-nez v0, :cond_6

    .line 63
    const/4 v2, 0x0

    .line 64
    .local v2, "name":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 93
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/biznessapps/news/RssPullParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 94
    goto :goto_0

    .line 66
    :pswitch_0
    iget-object v4, p0, Lcom/biznessapps/news/RssPullParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 67
    const-string v4, "item"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    new-instance v4, Lcom/biznessapps/news/SearchEntity;

    invoke-direct {v4}, Lcom/biznessapps/news/SearchEntity;-><init>()V

    iput-object v4, p0, Lcom/biznessapps/news/RssPullParser;->currentMessage:Lcom/biznessapps/news/SearchEntity;

    .line 69
    const/4 v0, 0x1

    goto :goto_1

    .line 70
    :cond_1
    iget-object v4, p0, Lcom/biznessapps/news/RssPullParser;->currentMessage:Lcom/biznessapps/news/SearchEntity;

    if-eqz v4, :cond_0

    .line 71
    const-string v4, "link"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 72
    iget-object v4, p0, Lcom/biznessapps/news/RssPullParser;->currentMessage:Lcom/biznessapps/news/SearchEntity;

    iget-object v5, p0, Lcom/biznessapps/news/RssPullParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/news/SearchEntity;->setLink(Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :cond_2
    const-string v4, "description"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 74
    iget-object v4, p0, Lcom/biznessapps/news/RssPullParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/news/RssPullParser;->currentMessage:Lcom/biznessapps/news/SearchEntity;

    invoke-direct {p0, v4, v5}, Lcom/biznessapps/news/RssPullParser;->parseDescriptionHtml(Ljava/lang/String;Lcom/biznessapps/news/SearchEntity;)V

    goto :goto_1

    .line 75
    :cond_3
    const-string v4, "title"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 76
    iget-object v4, p0, Lcom/biznessapps/news/RssPullParser;->currentMessage:Lcom/biznessapps/news/SearchEntity;

    iget-object v5, p0, Lcom/biznessapps/news/RssPullParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/news/SearchEntity;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :cond_4
    const-string v4, "pubDate"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    iget-object v4, p0, Lcom/biznessapps/news/RssPullParser;->currentMessage:Lcom/biznessapps/news/SearchEntity;

    iget-object v5, p0, Lcom/biznessapps/news/RssPullParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/news/SearchEntity;->setNewsDate(Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :pswitch_1
    iget-object v4, p0, Lcom/biznessapps/news/RssPullParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 84
    const-string v4, "item"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/biznessapps/news/RssPullParser;->currentMessage:Lcom/biznessapps/news/SearchEntity;

    if-eqz v4, :cond_5

    .line 85
    iget-object v3, p0, Lcom/biznessapps/news/RssPullParser;->currentMessage:Lcom/biznessapps/news/SearchEntity;

    .line 86
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/biznessapps/news/RssPullParser;->currentMessage:Lcom/biznessapps/news/SearchEntity;

    goto/16 :goto_1

    .line 88
    :cond_5
    const-string v4, "channel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 96
    .end local v2    # "name":Ljava/lang/String;
    :cond_6
    return-object v3

    .line 64
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public prepare()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/news/RssPullParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 31
    iget-object v3, p0, Lcom/biznessapps/news/RssPullParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v4, p0, Lcom/biznessapps/news/RssPullParser;->is:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 32
    iget-object v3, p0, Lcom/biznessapps/news/RssPullParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 33
    .local v1, "eventType":I
    const/4 v0, 0x0

    .line 35
    .local v0, "done":Z
    :goto_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-nez v0, :cond_1

    .line 36
    const/4 v2, 0x0

    .line 37
    .local v2, "name":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 54
    :cond_0
    :goto_1
    :pswitch_0
    iget-object v3, p0, Lcom/biznessapps/news/RssPullParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 55
    goto :goto_0

    .line 41
    :pswitch_1
    iget-object v3, p0, Lcom/biznessapps/news/RssPullParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 42
    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    new-instance v3, Lcom/biznessapps/news/SearchEntity;

    invoke-direct {v3}, Lcom/biznessapps/news/SearchEntity;-><init>()V

    iput-object v3, p0, Lcom/biznessapps/news/RssPullParser;->currentMessage:Lcom/biznessapps/news/SearchEntity;

    .line 44
    const/4 v0, 0x1

    goto :goto_1

    .line 48
    :pswitch_2
    iget-object v3, p0, Lcom/biznessapps/news/RssPullParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 49
    const-string v3, "channel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    const/4 v0, 0x1

    goto :goto_1

    .line 56
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    return-void

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
