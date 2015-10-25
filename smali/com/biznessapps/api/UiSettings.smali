.class public Lcom/biznessapps/api/UiSettings;
.super Ljava/lang/Object;
.source "UiSettings.java"


# instance fields
.field private buttonBgColor:I

.field private buttonTextColor:I

.field private defaultListBgColor:I

.field private evenRowColor:I

.field private evenRowColorTransparent:I

.field private evenRowTextColor:I

.field private featureTextColor:I

.field private globalBgColor:I

.field private globalHeaderUrl:Ljava/lang/String;

.field private hasColor:Z

.field private navTintOpacity:F

.field private navigationBarColor:I

.field private navigationTextColor:I

.field private navigationTextShadowColor:I

.field private oddRowColor:I

.field private oddRowColorTransparent:I

.field private oddRowTextColor:I

.field private sectionBarColor:I

.field private sectionTextColor:I

.field private transparentSectionBarColor:I

.field private useBlurEffect:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/biznessapps/api/UiSettingsInterface;)V
    .locals 0
    .param p1, "newData"    # Lcom/biznessapps/api/UiSettingsInterface;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-direct {p0}, Lcom/biznessapps/api/UiSettings;->reset()V

    .line 43
    invoke-direct {p0, p1}, Lcom/biznessapps/api/UiSettings;->initData(Lcom/biznessapps/api/UiSettingsInterface;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/biznessapps/api/UiSettings;->updateOtherSettings(Lcom/biznessapps/api/UiSettingsInterface;)V

    .line 45
    return-void
.end method

.method private initData(Lcom/biznessapps/api/UiSettingsInterface;)V
    .locals 3
    .param p1, "settingsData"    # Lcom/biznessapps/api/UiSettingsInterface;

    .prologue
    .line 216
    if-eqz p1, :cond_10

    .line 218
    :try_start_0
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getDefaultListBgColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getDefaultListBgColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/api/UiSettings;->defaultListBgColor:I

    .line 221
    :cond_0
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getButtonTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getButtonTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/api/UiSettings;->buttonTextColor:I

    .line 224
    :cond_1
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getButtonBgColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getButtonBgColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/api/UiSettings;->buttonBgColor:I

    .line 227
    :cond_2
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getFeatureTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 228
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getFeatureTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/api/UiSettings;->featureTextColor:I

    .line 230
    :cond_3
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getOddRowColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 231
    const-string v1, "80"

    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getOddRowColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/api/UiSettings;->oddRowColorTransparent:I

    .line 233
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getOddRowColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/api/UiSettings;->oddRowColor:I

    .line 234
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/biznessapps/api/UiSettings;->hasColor:Z

    .line 236
    :cond_4
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getEvenRowColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 237
    const-string v1, "80"

    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getEvenRowColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/api/UiSettings;->evenRowColorTransparent:I

    .line 239
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getEvenRowColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/api/UiSettings;->evenRowColor:I

    .line 241
    :cond_5
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getEvenRowTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 242
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getEvenRowTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/api/UiSettings;->evenRowTextColor:I

    .line 244
    :cond_6
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getOddRowTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 245
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getOddRowTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/api/UiSettings;->oddRowTextColor:I

    .line 247
    :cond_7
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getNavigBarColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 248
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getNavigBarColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/api/UiSettings;->navigationBarColor:I

    .line 250
    :cond_8
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getNavigBarTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 251
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getNavigBarTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/api/UiSettings;->navigationTextColor:I

    .line 253
    :cond_9
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getNavigBarTextShadowColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 254
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getNavigBarTextShadowColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/api/UiSettings;->navigationTextShadowColor:I

    .line 256
    :cond_a
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getSectionBarColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 257
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getSectionBarColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/api/UiSettings;->sectionBarColor:I

    .line 259
    :cond_b
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getSectionBarColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 260
    const-string v1, "A0"

    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getSectionBarColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/api/UiSettings;->transparentSectionBarColor:I

    .line 263
    :cond_c
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getSectionBarTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 264
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getSectionBarTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/api/UiSettings;->sectionTextColor:I

    .line 266
    :cond_d
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getGlobalBgColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 267
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getGlobalBgColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/api/UiSettings;->globalBgColor:I

    .line 269
    :cond_e
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getGlobalHeaderUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 270
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getGlobalHeaderUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/api/UiSettings;->globalHeaderUrl:Ljava/lang/String;

    .line 272
    :cond_f
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getNavTintOpacity()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_10

    .line 273
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->getNavTintOpacity()F

    move-result v1

    iput v1, p0, Lcom/biznessapps/api/UiSettings;->navTintOpacity:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 281
    :cond_10
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 277
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/high16 v1, -0x1000000

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/api/UiSettings;->hasColor:Z

    .line 57
    iput v2, p0, Lcom/biznessapps/api/UiSettings;->evenRowColorTransparent:I

    .line 58
    iput v2, p0, Lcom/biznessapps/api/UiSettings;->oddRowColorTransparent:I

    .line 59
    iput v1, p0, Lcom/biznessapps/api/UiSettings;->evenRowTextColor:I

    .line 60
    iput v1, p0, Lcom/biznessapps/api/UiSettings;->oddRowTextColor:I

    .line 61
    iput v1, p0, Lcom/biznessapps/api/UiSettings;->navigationBarColor:I

    .line 62
    iput v1, p0, Lcom/biznessapps/api/UiSettings;->navigationTextColor:I

    .line 63
    iput v1, p0, Lcom/biznessapps/api/UiSettings;->navigationTextShadowColor:I

    .line 64
    const v0, -0x333334

    iput v0, p0, Lcom/biznessapps/api/UiSettings;->sectionBarColor:I

    .line 65
    iput v1, p0, Lcom/biznessapps/api/UiSettings;->sectionTextColor:I

    .line 66
    return-void
.end method


# virtual methods
.method public getButtonBgColor()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/biznessapps/api/UiSettings;->buttonBgColor:I

    return v0
.end method

.method public getButtonTextColor()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/biznessapps/api/UiSettings;->buttonTextColor:I

    return v0
.end method

.method public getDefaultListBgColor()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/biznessapps/api/UiSettings;->defaultListBgColor:I

    return v0
.end method

.method public getEvenRowColor()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/biznessapps/api/UiSettings;->evenRowColor:I

    return v0
.end method

.method public getEvenRowColorTransparent()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/biznessapps/api/UiSettings;->evenRowColorTransparent:I

    return v0
.end method

.method public getEvenRowTextColor()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/biznessapps/api/UiSettings;->evenRowTextColor:I

    return v0
.end method

.method public getFeatureTextColor()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/biznessapps/api/UiSettings;->featureTextColor:I

    return v0
.end method

.method public getGlobalBgColor()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/biznessapps/api/UiSettings;->globalBgColor:I

    return v0
.end method

.method public getGlobalHeaderUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/biznessapps/api/UiSettings;->globalHeaderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNavTintOpacity()F
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/biznessapps/api/UiSettings;->navTintOpacity:F

    return v0
.end method

.method public getNavigationBarColor()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/biznessapps/api/UiSettings;->navigationBarColor:I

    return v0
.end method

.method public getNavigationTextColor()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/biznessapps/api/UiSettings;->navigationTextColor:I

    return v0
.end method

.method public getNavigationTextShadowColor()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/biznessapps/api/UiSettings;->navigationTextShadowColor:I

    return v0
.end method

.method public getOddRowColor()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/biznessapps/api/UiSettings;->oddRowColor:I

    return v0
.end method

.method public getOddRowColorTransparent()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/biznessapps/api/UiSettings;->oddRowColorTransparent:I

    return v0
.end method

.method public getOddRowTextColor()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/biznessapps/api/UiSettings;->oddRowTextColor:I

    return v0
.end method

.method public getSectionBarColor()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/biznessapps/api/UiSettings;->sectionBarColor:I

    return v0
.end method

.method public getSectionTextColor()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/biznessapps/api/UiSettings;->sectionTextColor:I

    return v0
.end method

.method public getTransparentSectionBarColor()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/biznessapps/api/UiSettings;->transparentSectionBarColor:I

    return v0
.end method

.method public isHasColor()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/biznessapps/api/UiSettings;->hasColor:Z

    return v0
.end method

.method public setButtonBgColor(I)V
    .locals 0
    .param p1, "buttonBgColor"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/biznessapps/api/UiSettings;->buttonBgColor:I

    .line 90
    return-void
.end method

.method public setButtonTextColor(I)V
    .locals 0
    .param p1, "buttonTextColor"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/biznessapps/api/UiSettings;->buttonTextColor:I

    .line 82
    return-void
.end method

.method public setDefaultListBgColor(I)V
    .locals 0
    .param p1, "defaultListBgColor"    # I

    .prologue
    .line 180
    iput p1, p0, Lcom/biznessapps/api/UiSettings;->defaultListBgColor:I

    .line 181
    return-void
.end method

.method public setEvenRowColor(I)V
    .locals 0
    .param p1, "evenRowColor"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/biznessapps/api/UiSettings;->evenRowColor:I

    .line 116
    return-void
.end method

.method public setEvenRowColorTransparent(I)V
    .locals 0
    .param p1, "evenRowColorTransparent"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/biznessapps/api/UiSettings;->evenRowColorTransparent:I

    .line 97
    return-void
.end method

.method public setEvenRowTextColor(I)V
    .locals 0
    .param p1, "evenRowTextColor"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/biznessapps/api/UiSettings;->evenRowTextColor:I

    .line 109
    return-void
.end method

.method public setFeatureTextColor(I)V
    .locals 0
    .param p1, "featureTextColor"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/biznessapps/api/UiSettings;->featureTextColor:I

    .line 74
    return-void
.end method

.method public setGlobalBgColor(I)V
    .locals 0
    .param p1, "globalBgColor"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/biznessapps/api/UiSettings;->globalBgColor:I

    .line 189
    return-void
.end method

.method public setGlobalHeaderUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "globalHeaderUrl"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/biznessapps/api/UiSettings;->globalHeaderUrl:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setHasColor(Z)V
    .locals 0
    .param p1, "hasColor"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/biznessapps/api/UiSettings;->hasColor:Z

    .line 173
    return-void
.end method

.method public setNavTintOpacity(F)V
    .locals 0
    .param p1, "navTintOpacity"    # F

    .prologue
    .line 204
    iput p1, p0, Lcom/biznessapps/api/UiSettings;->navTintOpacity:F

    .line 205
    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 0
    .param p1, "navigationBarColor"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/biznessapps/api/UiSettings;->navigationBarColor:I

    .line 137
    return-void
.end method

.method public setNavigationTextColor(I)V
    .locals 0
    .param p1, "navigationTextColor"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/biznessapps/api/UiSettings;->navigationTextColor:I

    .line 143
    return-void
.end method

.method public setNavigationTextShadowColor(I)V
    .locals 0
    .param p1, "navigationTextShadowColor"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/biznessapps/api/UiSettings;->navigationTextShadowColor:I

    .line 149
    return-void
.end method

.method public setOddRowColor(I)V
    .locals 0
    .param p1, "oddRowColor"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/biznessapps/api/UiSettings;->oddRowColor:I

    .line 124
    return-void
.end method

.method public setOddRowColorTransparent(I)V
    .locals 0
    .param p1, "oddRowColorTransparent"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/biznessapps/api/UiSettings;->oddRowColorTransparent:I

    .line 103
    return-void
.end method

.method public setOddRowTextColor(I)V
    .locals 0
    .param p1, "oddRowTextColor"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/biznessapps/api/UiSettings;->oddRowTextColor:I

    .line 131
    return-void
.end method

.method public setSectionBarColor(I)V
    .locals 0
    .param p1, "sectionBarColor"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/biznessapps/api/UiSettings;->sectionBarColor:I

    .line 155
    return-void
.end method

.method public setSectionTextColor(I)V
    .locals 0
    .param p1, "sectionTextColor"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/biznessapps/api/UiSettings;->sectionTextColor:I

    .line 167
    return-void
.end method

.method public setTransparentSectionBarColor(I)V
    .locals 0
    .param p1, "sectionBarColor"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/biznessapps/api/UiSettings;->transparentSectionBarColor:I

    .line 161
    return-void
.end method

.method public setUseBlurEffect(Z)V
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/biznessapps/api/UiSettings;->useBlurEffect:Z

    .line 209
    return-void
.end method

.method public updateOtherSettings(Lcom/biznessapps/api/UiSettingsInterface;)V
    .locals 1
    .param p1, "newData"    # Lcom/biznessapps/api/UiSettingsInterface;

    .prologue
    .line 52
    invoke-interface {p1}, Lcom/biznessapps/api/UiSettingsInterface;->useBlurEffect()Z

    move-result v0

    iput-boolean v0, p0, Lcom/biznessapps/api/UiSettings;->useBlurEffect:Z

    .line 53
    return-void
.end method

.method public updateUiSettings(Lcom/biznessapps/more/Tab;)V
    .locals 0
    .param p1, "usedTab"    # Lcom/biznessapps/more/Tab;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/biznessapps/api/UiSettings;->initData(Lcom/biznessapps/api/UiSettingsInterface;)V

    .line 49
    return-void
.end method

.method public useBlurEffect()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/biznessapps/api/UiSettings;->useBlurEffect:Z

    return v0
.end method
