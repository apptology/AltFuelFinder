.class public final Lcom/biznessapps/utils/PicasaUtils;
.super Ljava/lang/Object;
.source "PicasaUtils.java"


# static fields
.field private static final CONTENT_TAG:Ljava/lang/String; = "content"

.field private static final ENTRY_TAG:Ljava/lang/String; = "entry"

.field private static final FEED_TAG:Ljava/lang/String; = "feed"

.field private static final PHOTO_ID_TAG:Ljava/lang/String; = "gphoto:id"

.field private static final SRC_TAG:Ljava/lang/String; = "src"

.field private static final SUMMARY_TAG:Ljava/lang/String; = "summary"

.field private static final TITLE_TAG:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToStringFromElement(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 3
    .param p0, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 116
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 118
    .local v1, "child":Lorg/w3c/dom/Node;
    const/4 v2, 0x0

    .line 119
    .local v2, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 120
    check-cast v0, Lorg/w3c/dom/CharacterData;

    .line 121
    .local v0, "cd":Lorg/w3c/dom/CharacterData;
    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    .line 123
    .end local v0    # "cd":Lorg/w3c/dom/CharacterData;
    :cond_0
    return-object v2
.end method

.method public static getPicasaData(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "albumUrl"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v6, 0x0

    .line 52
    .local v6, "result":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 53
    .local v1, "conn":Ljava/net/HttpURLConnection;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 55
    .local v3, "isr":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 56
    .local v5, "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v0, "builder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 59
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v6

    .line 61
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1
.end method

.method public static parseGalleryList(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p0, "resp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/flickr/GalleryAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/flickr/GalleryAlbum;>;"
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 73
    .local v2, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 74
    .local v1, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8}, Lorg/xml/sax/InputSource;-><init>()V

    .line 76
    .local v8, "is":Lorg/xml/sax/InputSource;
    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 78
    invoke-virtual {v1, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 79
    .local v3, "doc":Lorg/w3c/dom/Document;
    const-string v10, "entry"

    invoke-interface {v3, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 81
    .local v6, "entries":Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v7, v10, :cond_0

    .line 82
    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 84
    .local v5, "element":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/biznessapps/flickr/GalleryAlbum;

    invoke-direct {v0}, Lcom/biznessapps/flickr/GalleryAlbum;-><init>()V

    .line 85
    .local v0, "album":Lcom/biznessapps/flickr/GalleryAlbum;
    const-string v10, "gphoto:id"

    invoke-interface {v5, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    invoke-static {v10}, Lcom/biznessapps/utils/PicasaUtils;->convertToStringFromElement(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/biznessapps/flickr/GalleryAlbum;->setId(Ljava/lang/String;)V

    .line 87
    const-string v10, "title"

    invoke-interface {v5, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    invoke-static {v10}, Lcom/biznessapps/utils/PicasaUtils;->convertToStringFromElement(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/biznessapps/flickr/GalleryAlbum;->setTitle(Ljava/lang/String;)V

    .line 89
    const-string v10, "summary"

    invoke-interface {v5, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    invoke-static {v10}, Lcom/biznessapps/utils/PicasaUtils;->convertToStringFromElement(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/biznessapps/flickr/GalleryAlbum;->setDescription(Ljava/lang/String;)V

    .line 92
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "album":Lcom/biznessapps/flickr/GalleryAlbum;
    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "element":Lorg/w3c/dom/Element;
    .end local v6    # "entries":Lorg/w3c/dom/NodeList;
    .end local v7    # "i":I
    .end local v8    # "is":Lorg/xml/sax/InputSource;
    :catch_0
    move-exception v4

    .line 95
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v9
.end method

.method public static parsePhotosList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "resp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 104
    .local v5, "root":Lorg/json/JSONObject;
    const-string v6, "feed"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "entry"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 105
    .local v1, "entry":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 106
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "content"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 107
    .local v3, "item":Lorg/json/JSONObject;
    const-string v6, "src"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "entry":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "item":Lorg/json/JSONObject;
    .end local v5    # "root":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method
