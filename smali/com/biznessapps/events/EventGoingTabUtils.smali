.class public Lcom/biznessapps/events/EventGoingTabUtils;
.super Ljava/lang/Object;
.source "EventGoingTabUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadGoingData(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/UiSettings;ZLandroid/widget/TextView;)V
    .locals 11
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "rootContainer"    # Landroid/view/ViewGroup;
    .param p2, "eventId"    # Ljava/lang/String;
    .param p3, "tabId"    # Ljava/lang/String;
    .param p4, "settings"    # Lcom/biznessapps/api/UiSettings;
    .param p5, "isUpcomingEvent"    # Z
    .param p6, "goingView"    # Landroid/widget/TextView;

    .prologue
    .line 30
    sget v0, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 31
    .local v6, "listView":Landroid/widget/ListView;
    sget v0, Lcom/biznessapps/layout/R$id;->people_going_textview:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 33
    .local v8, "peopleGoing":Landroid/widget/TextView;
    invoke-virtual {p4}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    sget v0, Lcom/biznessapps/layout/R$id;->going_list_header:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 35
    .local v10, "header":Landroid/view/ViewGroup;
    invoke-virtual {p4}, Lcom/biznessapps/api/UiSettings;->getTransparentSectionBarColor()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 37
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    .line 38
    .local v1, "cacher":Lcom/biznessapps/api/CachingManager;
    new-instance v0, Lcom/biznessapps/events/EventGoingTabUtils$1;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    move/from16 v7, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/biznessapps/events/EventGoingTabUtils$1;-><init>(Lcom/biznessapps/api/CachingManager;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/UiSettings;Landroid/content/Context;Landroid/widget/ListView;ZLandroid/widget/TextView;Landroid/widget/TextView;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/biznessapps/events/EventGoingTabUtils$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    return-void
.end method

.method public static postEventData(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;ZLandroid/widget/TextView;)V
    .locals 14
    .param p0, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "md5rule"    # Ljava/lang/String;
    .param p3, "appCode"    # Ljava/lang/String;
    .param p4, "tabId"    # Ljava/lang/String;
    .param p5, "id"    # Ljava/lang/String;
    .param p6, "comment"    # Ljava/lang/String;
    .param p7, "parentId"    # Ljava/lang/String;
    .param p8, "appContext"    # Landroid/content/Context;
    .param p9, "rootContainer"    # Landroid/view/ViewGroup;
    .param p10, "settings"    # Lcom/biznessapps/api/UiSettings;
    .param p11, "isUpcomingEvent"    # Z
    .param p12, "goingView"    # Landroid/widget/TextView;

    .prologue
    .line 81
    new-instance v0, Lcom/biznessapps/events/EventGoingTabUtils$2;

    move-object v1, p0

    move-object/from16 v2, p2

    move-object v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/biznessapps/events/EventGoingTabUtils$2;-><init>(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;ZLandroid/widget/TextView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/biznessapps/events/EventGoingTabUtils$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 99
    return-void
.end method
