.class public Lcom/biznessapps/events/EventPhotosTabUtils;
.super Ljava/lang/Object;
.source "EventPhotosTabUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadPhotosData(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/UiSettings;Landroid/widget/TextView;)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "rootContainer"    # Landroid/view/ViewGroup;
    .param p2, "eventId"    # Ljava/lang/String;
    .param p3, "tabId"    # Ljava/lang/String;
    .param p4, "settings"    # Lcom/biznessapps/api/UiSettings;
    .param p5, "photosLabel"    # Landroid/widget/TextView;

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 40
    .local v5, "appContext":Landroid/content/Context;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    .line 41
    .local v1, "cacher":Lcom/biznessapps/api/CachingManager;
    sget v0, Lcom/biznessapps/layout/R$id;->photo_list_header:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 42
    .local v10, "header":Landroid/view/ViewGroup;
    sget v0, Lcom/biznessapps/layout/R$id;->shared_photo_textview:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 43
    .local v7, "sharedPhotoTexView":Landroid/widget/TextView;
    sget v0, Lcom/biznessapps/layout/R$id;->add_photo_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 44
    .local v9, "addPhotoButton":Landroid/widget/Button;
    invoke-virtual {p4}, Lcom/biznessapps/api/UiSettings;->getTransparentSectionBarColor()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 45
    invoke-virtual {p4}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    sget v0, Lcom/biznessapps/layout/R$string;->photos:I

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 48
    sget v0, Lcom/biznessapps/layout/R$string;->add_photo:I

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setText(I)V

    .line 50
    new-instance v0, Lcom/biznessapps/events/EventPhotosTabUtils$1;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v6, p0

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/biznessapps/events/EventPhotosTabUtils$1;-><init>(Lcom/biznessapps/api/CachingManager;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/biznessapps/events/EventPhotosTabUtils$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 124
    return-void
.end method
