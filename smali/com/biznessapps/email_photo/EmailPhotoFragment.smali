.class public Lcom/biznessapps/email_photo/EmailPhotoFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "EmailPhotoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/email_photo/EmailPhotoFragment$EmailPhotoGallery;
    }
.end annotation


# static fields
.field private static final EMAIL_PHOTO_IMAGE:Ljava/lang/String; = "email_photo_image%s.jpg"


# instance fields
.field private emailPhotoButton:Landroid/widget/Button;

.field private emailPhotoTextView:Landroid/widget/TextView;

.field private info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

.field private photoImage:Ljava/io/File;

.field private photoName:Ljava/lang/String;

.field private selectedImagePath:Ljava/lang/String;

.field private tabId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/email_photo/EmailPhotoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/email_photo/EmailPhotoFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->emailPhoto()V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/email_photo/EmailPhotoFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/email_photo/EmailPhotoFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->photoName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/biznessapps/email_photo/EmailPhotoFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/email_photo/EmailPhotoFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->photoName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/biznessapps/email_photo/EmailPhotoFragment;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/email_photo/EmailPhotoFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->photoImage:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$202(Lcom/biznessapps/email_photo/EmailPhotoFragment;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/email_photo/EmailPhotoFragment;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->photoImage:Ljava/io/File;

    return-object p1
.end method

.method private emailPhoto()V
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/biznessapps/email_photo/EmailPhotoFragment$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment$3;-><init>(Lcom/biznessapps/email_photo/EmailPhotoFragment;)V

    invoke-static {v0, v1, p0}, Lcom/biznessapps/utils/ViewUtils;->openChoosePhotoDialog(Landroid/app/Activity;Ljava/lang/Runnable;Landroid/support/v4/app/Fragment;)V

    .line 191
    return-void
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->emailPhotoButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/email_photo/EmailPhotoFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment$2;-><init>(Lcom/biznessapps/email_photo/EmailPhotoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    .line 124
    iget-object v3, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->email_header_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 125
    .local v1, "headerContainer":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v1, v3}, Lcom/biznessapps/utils/ViewUtils;->setGlobalBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 126
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 127
    iget-object v3, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->email_photo_button:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->emailPhotoButton:Landroid/widget/Button;

    .line 128
    iget-object v3, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->email_photo_description:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->emailPhotoTextView:Landroid/widget/TextView;

    .line 129
    iget-object v3, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->emailPhotoButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 130
    iget-object v3, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->emailPhotoTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object v3, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v3

    iget-object v4, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->emailPhotoButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v3, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->email_photo_root:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 134
    iget-object v3, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->photo_coverflow_header:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 135
    .local v2, "photoCoverflowHeader":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getTransparentSectionBarColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 136
    iget-object v3, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    sget v3, Lcom/biznessapps/layout/R$string;->recent_photos:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 139
    iget-object v3, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->emailPhotoButton:Landroid/widget/Button;

    sget v4, Lcom/biznessapps/layout/R$string;->email_photo_title:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 141
    iget-object v3, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->gallery_view:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 142
    .local v0, "gallery":Landroid/widget/GridView;
    invoke-direct {p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->updatePhotoGallery()V

    .line 143
    new-instance v3, Lcom/biznessapps/email_photo/EmailPhotoFragment$1;

    invoke-direct {v3, p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment$1;-><init>(Lcom/biznessapps/email_photo/EmailPhotoFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 162
    return-void
.end method

.method private isEmptyData(Lcom/biznessapps/email_photo/EmailPhotoEntity;)Z
    .locals 5
    .param p1, "item"    # Lcom/biznessapps/email_photo/EmailPhotoEntity;

    .prologue
    .line 194
    const/4 v3, 0x1

    .line 195
    .local v3, "result":Z
    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    .line 197
    .local v0, "isEmptyDescription":Z
    invoke-virtual {p1}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    .line 198
    .local v1, "isEmptyEmail":Z
    invoke-virtual {p1}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    .line 199
    .local v2, "isEmptySubject":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 201
    .end local v0    # "isEmptyDescription":Z
    .end local v1    # "isEmptyEmail":Z
    .end local v2    # "isEmptySubject":Z
    :cond_0
    :goto_0
    return v3

    .line 199
    .restart local v0    # "isEmptyDescription":Z
    .restart local v1    # "isEmptyEmail":Z
    .restart local v2    # "isEmptySubject":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updatePhotoGallery()V
    .locals 5

    .prologue
    .line 235
    new-instance v1, Lcom/biznessapps/email_photo/EmailPhotoFragment$EmailPhotoGallery;

    invoke-virtual {p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/storage/StorageKeeper;->getEmailedPhotos()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/biznessapps/email_photo/EmailPhotoFragment$EmailPhotoGallery;-><init>(Lcom/biznessapps/email_photo/EmailPhotoFragment;Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 238
    .local v1, "imageAdapter":Lcom/biznessapps/email_photo/EmailPhotoFragment$EmailPhotoGallery;
    iget-object v2, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->gallery_view:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 239
    .local v0, "gallery":Landroid/widget/GridView;
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 240
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EMAIL_PHOTO_INFO_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/email_photo/EmailPhotoEntity;

    iput-object v0, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    .line 120
    iget-object v0, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    invoke-virtual {v0}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    const-string v0, "email_photo.php?app_code=%s&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->email_photo_root:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->initAdsWithAlpha()V

    .line 76
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EMAIL_PHOTO_INFO_PROPERTY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/email_photo/EmailPhotoEntity;

    iput-object v4, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    .line 206
    const/4 v4, -0x1

    if-ne v4, p2, :cond_0

    iget-object v4, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    if-nez v4, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    sget v4, Lcom/biznessapps/layout/R$string;->picture_sharing:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "description":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 229
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 212
    :pswitch_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->photoName:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    .local v1, "photo":Ljava/io/File;
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/storage/StorageKeeper;->addPhotos(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->updatePhotoGallery()V

    .line 216
    invoke-virtual {p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    invoke-virtual {v5}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->getEmail()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    invoke-virtual {v6}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->getSubject()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v0, v1}, Lcom/biznessapps/utils/ViewUtils;->email(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 219
    .end local v1    # "photo":Ljava/io/File;
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 220
    .local v3, "selectedImageUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->getPath(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->selectedImagePath:Ljava/lang/String;

    .line 221
    iget-object v4, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->selectedImagePath:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 222
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->selectedImagePath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v2, "picture":Ljava/io/File;
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->selectedImagePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/biznessapps/storage/StorageKeeper;->addPhotos(Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->updatePhotoGallery()V

    .line 225
    invoke-virtual {p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    invoke-virtual {v5}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->getEmail()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    invoke-virtual {v6}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->getSubject()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v0, v2}, Lcom/biznessapps/utils/ViewUtils;->email(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    sget v0, Lcom/biznessapps/layout/R$layout;->email_photo_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->root:Landroid/view/ViewGroup;

    .line 63
    invoke-virtual {p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->initSettingsData()V

    .line 64
    iget-object v0, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->root:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 65
    invoke-direct {p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->initViews()V

    .line 66
    invoke-direct {p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->initListeners()V

    .line 67
    invoke-virtual {p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->loadData()V

    .line 68
    invoke-virtual {p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 69
    invoke-virtual {p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->openCustomDialogs()V

    .line 70
    iget-object v0, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->tabId:Ljava/lang/String;

    .line 81
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseEmailPhoto(Ljava/lang/String;)Lcom/biznessapps/email_photo/EmailPhotoEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    .line 91
    invoke-virtual {p0}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EMAIL_PHOTO_INFO_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 98
    iget-object v0, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    invoke-direct {p0, v0}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->isEmptyData(Lcom/biznessapps/email_photo/EmailPhotoEntity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->nothing_found:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    invoke-virtual {v0}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->emailPhotoTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    invoke-virtual {v1}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
