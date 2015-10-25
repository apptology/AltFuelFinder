.class public Lcom/biznessapps/golfcourse/CourseJsonParser;
.super Lcom/biznessapps/utils/CommonParser;
.source "CourseJsonParser.java"


# static fields
.field private static parser:Lcom/biznessapps/golfcourse/CourseJsonParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/biznessapps/utils/CommonParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/biznessapps/golfcourse/CourseJsonParser;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/biznessapps/golfcourse/CourseJsonParser;->parser:Lcom/biznessapps/golfcourse/CourseJsonParser;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/biznessapps/golfcourse/CourseJsonParser;

    invoke-direct {v0}, Lcom/biznessapps/golfcourse/CourseJsonParser;-><init>()V

    sput-object v0, Lcom/biznessapps/golfcourse/CourseJsonParser;->parser:Lcom/biznessapps/golfcourse/CourseJsonParser;

    .line 31
    :cond_0
    sget-object v0, Lcom/biznessapps/golfcourse/CourseJsonParser;->parser:Lcom/biznessapps/golfcourse/CourseJsonParser;

    return-object v0
.end method


# virtual methods
.method public parseCourseList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataToParse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/golfcourse/model/Course;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v1, "courseList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/golfcourse/model/Course;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "courseArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 46
    new-instance v6, Lcom/biznessapps/golfcourse/model/Course;

    invoke-direct {v6}, Lcom/biznessapps/golfcourse/model/Course;-><init>()V

    .line 48
    .local v6, "newCourse":Lcom/biznessapps/golfcourse/model/Course;
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 50
    .local v2, "courseObj":Lorg/json/JSONObject;
    const-string v8, "id"

    invoke-static {v2, v8}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, v6, Lcom/biznessapps/golfcourse/model/Course;->remoteCourseId:J

    .line 51
    const-string v8, "name"

    invoke-static {v2, v8}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/biznessapps/golfcourse/model/Course;->name:Ljava/lang/String;

    .line 52
    const-string v8, "thumbnail"

    invoke-static {v2, v8}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/biznessapps/golfcourse/model/Course;->thumbUrl:Ljava/lang/String;

    .line 53
    const-string v8, "description"

    invoke-static {v2, v8}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/biznessapps/golfcourse/model/Course;->description:Ljava/lang/String;

    .line 54
    const-string v8, "background"

    invoke-static {v2, v8}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/biznessapps/golfcourse/model/Course;->setBackground(Ljava/lang/String;)V

    .line 55
    const-string v8, "unit"

    invoke-static {v2, v8}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, p1, v8}, Lcom/biznessapps/golfcourse/model/Course;->setUnit(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    if-lez v5, :cond_0

    .line 57
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/biznessapps/golfcourse/model/Course;

    iget-boolean v8, v8, Lcom/biznessapps/golfcourse/model/Course;->useOverlay:Z

    iput-boolean v8, v6, Lcom/biznessapps/golfcourse/model/Course;->useOverlay:Z

    .line 62
    :goto_1
    const-string v8, "holes"

    invoke-static {v2, v8}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "holeJsonStr":Ljava/lang/String;
    invoke-virtual {v6, v4}, Lcom/biznessapps/golfcourse/model/Course;->setHoleList(Ljava/lang/String;)V

    .line 65
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 59
    .end local v4    # "holeJsonStr":Ljava/lang/String;
    :cond_0
    const-string v8, "use_overlay"

    invoke-static {v2, v8}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v6, Lcom/biznessapps/golfcourse/model/Course;->useOverlay:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 67
    .end local v0    # "courseArray":Lorg/json/JSONArray;
    .end local v2    # "courseObj":Lorg/json/JSONObject;
    .end local v5    # "i":I
    .end local v6    # "newCourse":Lcom/biznessapps/golfcourse/model/Course;
    :catch_0
    move-exception v3

    .line 68
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 71
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 72
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/biznessapps/golfcourse/model/Course;

    iget-boolean v7, v8, Lcom/biznessapps/golfcourse/model/Course;->useOverlay:Z

    .line 73
    .local v7, "useOverlay":Z
    invoke-static {p1}, Lcom/biznessapps/golfcourse/model/GolfCourseConfig;->getInstance(Landroid/content/Context;)Lcom/biznessapps/golfcourse/model/GolfCourseConfig;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/biznessapps/golfcourse/model/GolfCourseConfig;->setUseBlurOverlay(Z)V

    .line 75
    .end local v7    # "useOverlay":Z
    :cond_2
    return-object v1
.end method
